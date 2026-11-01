package g;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class nf {

    /* renamed from: a, reason: collision with root package name */
    public static final List f19701a = grj.e(Application.class, gzf.class);

    /* renamed from: b, reason: collision with root package name */
    public static final List f19702b = cro.r(gzf.class);

    public static final Constructor c(Class cls, List list) {
        bff.p(list, "signature");
        Constructor<?>[] constructors = cls.getConstructors();
        bff.e(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            bff.e(parameterTypes, "constructor.parameterTypes");
            List bg = fuv.bg(parameterTypes);
            if (list.equals(bg)) {
                return constructor;
            }
            if (list.size() == bg.size() && bg.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final blj d(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (blj) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Failed to access " + cls, e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e4.getCause());
        }
    }
}
