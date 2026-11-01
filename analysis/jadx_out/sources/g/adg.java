package g;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class adg {

    /* renamed from: a, reason: collision with root package name */
    public final tl f10033a;

    /* renamed from: b, reason: collision with root package name */
    public final tl f10034b;

    /* renamed from: c, reason: collision with root package name */
    public final tl f10035c;

    public adg(tl tlVar, tl tlVar2, tl tlVar3) {
        this.f10033a = tlVar;
        this.f10034b = tlVar2;
        this.f10035c = tlVar3;
    }

    public abstract void d(int i);

    /* JADX WARN: Multi-variable type inference failed */
    public final Method e(Class cls) {
        String name = cls.getName();
        tl tlVar = this.f10034b;
        Method method = (Method) tlVar.get(name);
        if (method != null) {
            return method;
        }
        Class j = j(cls);
        System.currentTimeMillis();
        Method declaredMethod = j.getDeclaredMethod("write", cls, adg.class);
        tlVar.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean f(int i);

    public abstract fvt g();

    public final Parcelable h(Parcelable parcelable, int i) {
        if (!f(i)) {
            return parcelable;
        }
        return ((fvt) this).p.readParcelable(fvt.class.getClassLoader());
    }

    public final void i(fue fueVar) {
        if (fueVar == null) {
            ((fvt) this).p.writeString(null);
            return;
        }
        try {
            ((fvt) this).p.writeString(j(fueVar.getClass()).getName());
            fvt g2 = g();
            try {
                e(fueVar.getClass()).invoke(null, fueVar, g2);
                Parcel parcel = g2.p;
                int i = g2.r;
                if (i >= 0) {
                    int i2 = g2.o.get(i);
                    int dataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(dataPosition - i2);
                    parcel.setDataPosition(dataPosition);
                }
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
            } catch (InvocationTargetException e5) {
                if (!(e5.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
                }
                throw ((RuntimeException) e5.getCause());
            }
        } catch (ClassNotFoundException e6) {
            throw new RuntimeException(fueVar.getClass().getSimpleName().concat(" does not have a Parcelizer"), e6);
        }
    }

    public final Class j(Class cls) {
        String name = cls.getName();
        tl tlVar = this.f10035c;
        Class cls2 = (Class) tlVar.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        tlVar.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method k(String str) {
        tl tlVar = this.f10033a;
        Method method = (Method) tlVar.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, adg.class.getClassLoader()).getDeclaredMethod("read", adg.class);
        tlVar.put(str, declaredMethod);
        return declaredMethod;
    }

    public final fue l() {
        String readString = ((fvt) this).p.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (fue) k(readString).invoke(null, g());
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }
}
