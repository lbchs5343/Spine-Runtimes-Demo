package com.bytedance.sdk.component.utils;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class gh {

    /* renamed from: d, reason: collision with root package name */
    private static Method f2186d;
    private static Object dq;

    static {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            Method method = (Method) declaredMethod2.invoke(cls, "getRuntime", null);
            f2186d = (Method) declaredMethod2.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class});
            dq = method.invoke(null, null);
        } catch (Throwable th) {
            ig.dq("Reflection", "reflect bootstrap failed:", th);
        }
    }

    public static boolean dq() {
        return dq("L");
    }

    public static boolean dq(String... strArr) {
        Method method;
        Object obj = dq;
        if (obj != null && (method = f2186d) != null) {
            try {
                method.invoke(obj, strArr);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
