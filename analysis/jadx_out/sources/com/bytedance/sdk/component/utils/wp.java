package com.bytedance.sdk.component.utils;

import android.text.TextUtils;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class wp {
    public static Class<?> dq(String str) {
        try {
            try {
                try {
                    return Class.forName(str, true, dq());
                } catch (ClassNotFoundException unused) {
                    return Class.forName(str);
                }
            } catch (ClassNotFoundException unused2) {
                return null;
            }
        } catch (ClassNotFoundException unused3) {
            return Class.forName(str, true, wp.class.getClassLoader());
        }
    }

    private static ClassLoader dq() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        return contextClassLoader == null ? wp.class.getClassLoader() : contextClassLoader;
    }

    public static Method dq(String str, String str2, Class<?>... clsArr) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                Class<?> dq = dq(str);
                if (dq != null) {
                    return dq.getMethod(str2, clsArr);
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
