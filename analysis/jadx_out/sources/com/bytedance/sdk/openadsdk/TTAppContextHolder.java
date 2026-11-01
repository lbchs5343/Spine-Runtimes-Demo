package com.bytedance.sdk.openadsdk;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.bytedance.sdk.openadsdk.api.ox;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class TTAppContextHolder {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context dq;

    public static class dq {

        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application dq;

        static {
            try {
                Object d2 = d();
                dq = (Application) d2.getClass().getMethod("getApplication", null).invoke(d2, null);
                ox.p("MyApplication", "application get success");
            } catch (Throwable th) {
                ox.ox("MyApplication", "application get failed", th);
            }
        }

        private static Object d() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null);
                method.setAccessible(true);
                return method.invoke(null, null);
            } catch (Throwable th) {
                ox.ox("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }

        public static Application dq() {
            return dq;
        }
    }

    public static Context getContext() {
        if (dq == null) {
            setContext(null);
        }
        return dq;
    }

    public static synchronized void setContext(Context context) {
        synchronized (TTAppContextHolder.class) {
            if (dq == null) {
                if (context != null) {
                    dq = context.getApplicationContext();
                } else if (dq.dq() != null) {
                    try {
                        Application dq2 = dq.dq();
                        dq = dq2;
                        if (dq2 != null) {
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }
}
