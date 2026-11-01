package com.bytedance.sdk.component.ox.d.dq.mn;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
class p<T> {

    /* renamed from: d, reason: collision with root package name */
    private final String f2070d;
    private final Class<?> dq;
    private final Class[] ox;

    public p(Class<?> cls, String str, Class... clsArr) {
        this.dq = cls;
        this.f2070d = str;
        this.ox = clsArr;
    }

    private Method dq(Class<?> cls) {
        Class<?> cls2;
        String str = this.f2070d;
        if (str == null) {
            return null;
        }
        Method dq = dq(cls, str, this.ox);
        if (dq == null || (cls2 = this.dq) == null || cls2.isAssignableFrom(dq.getReturnType())) {
            return dq;
        }
        return null;
    }

    private static Method dq(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
                return method;
            } catch (NoSuchMethodException unused) {
                return method;
            }
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    public Object d(T t, Object... objArr) {
        try {
            return dq(t, objArr);
        } catch (InvocationTargetException e2) {
            Throwable targetException = e2.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object dq(T t, Object... objArr) throws InvocationTargetException {
        Method dq = dq(t.getClass());
        if (dq == null) {
            return null;
        }
        try {
            return dq.invoke(t, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public boolean dq(T t) {
        return dq(t.getClass()) != null;
    }

    public Object ox(T t, Object... objArr) throws InvocationTargetException {
        Method dq = dq(t.getClass());
        if (dq != null) {
            try {
                return dq.invoke(t, objArr);
            } catch (IllegalAccessException e2) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: ".concat(String.valueOf(dq)));
                assertionError.initCause(e2);
                throw assertionError;
            }
        }
        throw new AssertionError("Method " + this.f2070d + " not supported for object " + t);
    }

    public Object p(T t, Object... objArr) {
        try {
            return ox(t, objArr);
        } catch (InvocationTargetException e2) {
            Throwable targetException = e2.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }
}
