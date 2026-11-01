package com.bytedance.sdk.openadsdk.core.e.d;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    private static Map<String, Field> dq = new HashMap();

    private static String d(Class<?> cls, String str) {
        return cls.toString() + "#" + str;
    }

    public static Object dq(Object obj, String str) throws IllegalAccessException {
        Field dq2 = dq(obj.getClass(), str);
        if (dq2 != null) {
            return dq(dq2, obj);
        }
        return null;
    }

    public static Object dq(Field field, Object obj) throws IllegalAccessException {
        if (!field.isAccessible()) {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    public static Field dq(Class<?> cls, String str) {
        Field field;
        String d2 = d(cls, str);
        synchronized (dq) {
            field = dq.get(d2);
        }
        if (field != null) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                synchronized (dq) {
                    continue;
                    dq.put(d2, declaredField);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }
}
