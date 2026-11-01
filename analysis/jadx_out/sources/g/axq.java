package g;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class axq extends eyt {

    /* renamed from: b, reason: collision with root package name */
    public final Method f11033b;

    /* renamed from: c, reason: collision with root package name */
    public final Method f11034c;

    /* renamed from: d, reason: collision with root package name */
    public final Method f11035d = Class.class.getMethod("isRecord", null);

    /* renamed from: a, reason: collision with root package name */
    public final Method f11032a = Class.class.getMethod("getRecordComponents", null);

    public axq() {
        Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
        this.f11033b = cls.getMethod("getName", null);
        this.f11034c = cls.getMethod("getType", null);
    }

    @Override // g.eyt
    public final Method _bf(Class cls, Field field) {
        try {
            return cls.getMethod(field.getName(), null);
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.11.0). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // g.eyt
    public final String[] _bg(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f11032a.invoke(cls, null);
            String[] strArr = new String[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                strArr[i] = (String) this.f11033b.invoke(objArr[i], null);
            }
            return strArr;
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.11.0). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // g.eyt
    public final Constructor i(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f11032a.invoke(cls, null);
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                clsArr[i] = (Class) this.f11034c.invoke(objArr[i], null);
            }
            return cls.getDeclaredConstructor(clsArr);
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.11.0). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // g.eyt
    public final boolean j(Class cls) {
        try {
            return ((Boolean) this.f11035d.invoke(cls, null)).booleanValue();
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.11.0). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }
}
