package g;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class bpp extends cwp implements bjq {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11969a;

    public bpp(Object obj) {
        super("com.google.android.gms.dynamic.IObjectWrapper");
        this.f11969a = obj;
    }

    public static Object b(bjq bjqVar) {
        if (bjqVar instanceof bpp) {
            return ((bpp) bjqVar).f11969a;
        }
        IBinder asBinder = bjqVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            throw new IllegalArgumentException(awf.ac(declaredFields.length, "Unexpected number of IObjectWrapper declared fields: "));
        }
        ckd.k(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return field.get(asBinder);
        } catch (IllegalAccessException e2) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e2);
        } catch (NullPointerException e3) {
            throw new IllegalArgumentException("Binder object is null.", e3);
        }
    }

    public static bjq d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return queryLocalInterface instanceof bjq ? (bjq) queryLocalInterface : new bej(iBinder, "com.google.android.gms.dynamic.IObjectWrapper", 1);
    }
}
