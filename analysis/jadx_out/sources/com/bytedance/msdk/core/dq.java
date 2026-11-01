package com.bytedance.msdk.core;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile com.bytedance.msdk.core.f.ox f852d;

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context dq;
    private static volatile com.bytedance.msdk.s.d.dq<com.bytedance.msdk.s.dq> ox;

    /* renamed from: com.bytedance.msdk.core.dq$dq, reason: collision with other inner class name */
    public static class C0046dq {

        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application dq;

        static {
            try {
                Object d2 = d();
                dq = (Application) d2.getClass().getMethod("getApplication", null).invoke(d2, null);
                com.bytedance.msdk.dq.s.ox.p("MyApplication", "application get success");
            } catch (Throwable th) {
                com.bytedance.msdk.dq.s.ox.d("MyApplication", "application get failed", th);
            }
        }

        private static Object d() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null);
                method.setAccessible(true);
                return method.invoke(null, null);
            } catch (Throwable th) {
                com.bytedance.msdk.dq.s.ox.d("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }

        public static Application dq() {
            return dq;
        }
    }

    public static com.bytedance.msdk.core.f.ox d() {
        if (f852d == null) {
            synchronized (com.bytedance.msdk.core.f.ox.class) {
                try {
                    if (f852d == null) {
                        f852d = new com.bytedance.msdk.core.f.ox();
                    }
                } finally {
                }
            }
        }
        return f852d;
    }

    public static com.bytedance.msdk.s.d.dq<com.bytedance.msdk.s.dq> dq() {
        if (ox == null) {
            synchronized (dq.class) {
                try {
                    if (ox == null) {
                        ox = new com.bytedance.msdk.s.d.d(dq);
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    public static synchronized void dq(Context context) {
        synchronized (dq.class) {
            if (dq == null) {
                synchronized (dq.class) {
                    if (C0046dq.dq() != null) {
                        try {
                            Application dq2 = C0046dq.dq();
                            dq = dq2;
                            if (dq2 != null) {
                                return;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    if (context != null) {
                        dq = context.getApplicationContext();
                    }
                }
            }
        }
    }

    public static Context getContext() {
        if (dq == null) {
            dq(null);
        }
        return dq;
    }
}
