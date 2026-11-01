package com.bytedance.sdk.openadsdk.ats;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class d {
    static final Map<ClassLoader, Map<String, Class>> dq = new HashMap();

    public static Annotation d(Class cls) {
        try {
            return cls.getClassLoader() == ATSApi.class.getClassLoader() ? cls.getAnnotation(ATSApi.class) : d(cls, "com.bytedance.sdk.openadsdk.ats.ATSApi");
        } catch (Exception unused) {
            return null;
        }
    }

    private static Annotation d(Class cls, String str) {
        Class<? extends Annotation> dq2 = dq(cls, str);
        if (dq2 != null) {
            return cls.getAnnotation(dq2);
        }
        return null;
    }

    private static Class<? extends Annotation> dq(Class cls, String str) {
        Class<? extends Annotation> cls2;
        try {
            ClassLoader classLoader = cls.getClassLoader();
            if (classLoader == null) {
                return null;
            }
            Map<String, Class> map = dq.get(classLoader);
            if (map == null) {
                map = new HashMap<>(8);
                cls2 = null;
            } else {
                cls2 = map.get(str);
            }
            if (cls2 != null) {
                return cls2;
            }
            Class loadClass = classLoader.loadClass(str);
            if (loadClass != null) {
                map.put(str, loadClass);
            }
            return loadClass;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Object dq(Annotation annotation) {
        try {
            Method method = annotation.getClass().getMethod("value", null);
            if (method == null) {
                return null;
            }
            return method.invoke(annotation, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String dq(Class cls) {
        try {
            if (cls.getClassLoader() == ATSApi.class.getClassLoader()) {
                ATSApi aTSApi = (ATSApi) cls.getAnnotation(ATSApi.class);
                if (aTSApi != null) {
                    return aTSApi.value();
                }
                return null;
            }
            Annotation d2 = d(cls, "com.bytedance.sdk.openadsdk.ats.ATSApi");
            if (d2 == null) {
                return null;
            }
            return String.valueOf(dq(d2));
        } catch (Exception unused) {
            return null;
        }
    }

    public static Annotation dq(Class cls, Method method) {
        if (cls.getClassLoader() == ATSMethod.class.getClassLoader()) {
            return method.getAnnotation(ATSMethod.class);
        }
        Class<? extends Annotation> dq2 = dq(cls, "com.bytedance.sdk.openadsdk.ats.ATSMethod");
        if (dq2 == null) {
            return null;
        }
        return method.getAnnotation(dq2);
    }

    public static Class ox(Class cls) {
        return cls.getClassLoader() == ATSMethod.class.getClassLoader() ? ATSMethod.class : dq(cls, "com.bytedance.sdk.openadsdk.ats.ATSMethod");
    }
}
