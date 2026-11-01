package com.bytedance.pangle.b.a;

import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;
import g.tn;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static Map<String, Field> f1301a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private static Map<String, Method> f1302b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private static Map<String, Constructor> f1303c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private static Map<String, Class> f1304d = new HashMap();

    static {
        try {
            FieldUtils.writeField(b.class, "classLoader", (Object) null);
            ZeusLogger.w(ZeusLogger.TAG_INIT, "HackHelper HackHelperImpl use BootClassLoader");
        } catch (Exception e2) {
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "HackHelperinit failed", e2);
        }
    }

    public static Constructor a(Class<?> cls, Class<?>... clsArr) {
        Constructor constructor;
        String b2 = b(cls, "clinit", clsArr);
        synchronized (f1303c) {
            constructor = f1303c.get(b2);
        }
        if (constructor != null) {
            if (!constructor.isAccessible()) {
                constructor.setAccessible(true);
            }
            return constructor;
        }
        try {
            Constructor a2 = b.a(cls, clsArr);
            if (a2 == null) {
                return a2;
            }
            synchronized (f1303c) {
                f1303c.put(b2, a2);
            }
            return a2;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper".concat("getConstructor " + cls.getName() + " failed !!!"), th);
            return null;
        }
    }

    public static Field a(Class<?> cls, String str) {
        Field field;
        String str2 = cls.getName() + "#" + str;
        synchronized (f1301a) {
            field = f1301a.get(str2);
        }
        if (field != null) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        try {
            Field a2 = b.a(cls, str);
            if (a2 == null) {
                return a2;
            }
            synchronized (f1301a) {
                f1301a.put(str2, a2);
            }
            return a2;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper".concat(tn.r("getField ", cls.getName(), "#", str, " failed !!!")), th);
            return null;
        }
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        Method method;
        String b2 = b(cls, str, clsArr);
        synchronized (f1302b) {
            method = f1302b.get(b2);
        }
        if (method != null) {
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            return method;
        }
        try {
            Method a2 = b.a(cls, str, clsArr);
            if (a2 == null) {
                return a2;
            }
            synchronized (f1302b) {
                f1302b.put(b2, a2);
            }
            return a2;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper".concat(tn.r("getMethod ", cls.getName(), "#", str, " failed !!!")), th);
            return null;
        }
    }

    private static String b(Class<?> cls, String str, Class<?>... clsArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(cls.getName());
        sb.append("#");
        sb.append(str);
        if (clsArr == null || clsArr.length <= 0) {
            sb.append(Void.class.getName());
        } else {
            for (Class<?> cls2 : clsArr) {
                sb.append(cls2.getName());
                sb.append("#");
            }
        }
        return sb.toString();
    }
}
