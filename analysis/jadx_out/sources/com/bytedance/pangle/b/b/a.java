package com.bytedance.pangle.b.b;

import com.bytedance.pangle.log.ZeusLogger;
import g.tn;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static Method f1305a;

    /* renamed from: b, reason: collision with root package name */
    private static Method f1306b;

    /* renamed from: c, reason: collision with root package name */
    private static Method f1307c;

    /* renamed from: d, reason: collision with root package name */
    private static Method f1308d;

    static {
        try {
            f1305a = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            f1306b = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            f1307c = Class.class.getDeclaredMethod("getDeclaredConstructor", Class[].class);
            f1308d = Class.class.getDeclaredMethod("forName", String.class);
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "DoubleReflectorinit failed", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0037 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Constructor a(Class<?> cls, Class<?>... clsArr) {
        Constructor constructor;
        Method method = f1307c;
        if (method != null) {
            try {
                constructor = (Constructor) method.invoke(cls, clsArr);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG, "DoubleReflector".concat("getConstructor " + cls.getName() + "<init>1 failed !!!"), th);
            }
            return constructor == null ? constructor : com.bytedance.pangle.b.a.a.a(cls, clsArr);
        }
        constructor = null;
        if (constructor == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Field a(Class<?> cls, String str) {
        Throwable th;
        Field field;
        Method method = f1305a;
        Field field2 = null;
        if (method != null) {
            try {
                field = (Field) method.invoke(cls, str);
                if (field != null) {
                    try {
                        field.setAccessible(true);
                    } catch (Throwable th2) {
                        th = th2;
                        ZeusLogger.w(ZeusLogger.TAG, "DoubleReflector".concat(tn.r("getField ", cls.getName(), "#", str, " failed !!!")), th);
                        field2 = field;
                        if (field2 == null) {
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                field = null;
            }
            field2 = field;
        }
        return field2 == null ? field2 : com.bytedance.pangle.b.a.a.a(cls, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        Throwable th;
        Method method;
        Method method2 = f1306b;
        Method method3 = null;
        if (method2 != null) {
            try {
                method = (Method) method2.invoke(cls, str, clsArr);
                if (method != null) {
                    try {
                        method.setAccessible(true);
                    } catch (Throwable th2) {
                        th = th2;
                        ZeusLogger.w(ZeusLogger.TAG, "DoubleReflector".concat(tn.r("getMethod ", cls.getName(), "#", str, " failed !!!")), th);
                        method3 = method;
                        if (method3 == null) {
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                method = null;
            }
            method3 = method;
        }
        return method3 == null ? method3 : com.bytedance.pangle.b.a.a.a(cls, str, clsArr);
    }
}
