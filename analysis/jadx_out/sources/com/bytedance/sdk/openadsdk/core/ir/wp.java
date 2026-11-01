package com.bytedance.sdk.openadsdk.core.ir;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class wp {

    /* renamed from: d, reason: collision with root package name */
    private static Method f3082d;
    private static Method dq;
    private static Method ox;

    static {
        try {
            dq = Class.class.getDeclaredMethod("forName", String.class);
            f3082d = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            ox = Class.class.getDeclaredMethod("getDeclaredField", String.class);
        } catch (NoSuchMethodException | NullPointerException unused) {
        }
    }

    public static Object dq(Object obj, String str, String str2, Object obj2) {
        Field dq2;
        try {
            dq2 = dq(str, str2);
        } catch (IllegalAccessException unused) {
        }
        if (dq2 == null) {
            return obj2;
        }
        dq2.setAccessible(true);
        return dq2.get(obj);
    }

    public static Field dq(String str, String str2) {
        if (!dq()) {
            return null;
        }
        try {
            Field field = (Field) ox.invoke((Class) dq.invoke(null, str), str2);
            try {
                field.setAccessible(true);
                return field;
            } catch (Throwable unused) {
                return field;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static boolean dq() {
        return (dq == null || f3082d == null || ox == null) ? false : true;
    }
}
