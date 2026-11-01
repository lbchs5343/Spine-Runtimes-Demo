package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class wp {

    /* renamed from: d, reason: collision with root package name */
    private static volatile com.bytedance.sdk.openadsdk.core.bl.mn f3719d;
    private static volatile h<com.bytedance.sdk.openadsdk.core.ig.dq> dq;
    private static final AtomicBoolean ox = new AtomicBoolean(false);
    private static volatile Context p;

    public static class dq {

        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application dq;

        static {
            try {
                Object d2 = d();
                dq = (Application) d2.getClass().getMethod("getApplication", null).invoke(d2, null);
                com.bytedance.sdk.component.utils.ig.d("MyApplication", "application get success");
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.dq("MyApplication", "application get failed", th);
            }
        }

        private static Object d() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null);
                method.setAccessible(true);
                return method.invoke(null, null);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.dq("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }

        public static Application dq() {
            return dq;
        }
    }

    public static com.bytedance.sdk.openadsdk.core.bl.mn d() {
        if (f3719d == null) {
            synchronized (com.bytedance.sdk.openadsdk.core.bl.mn.class) {
                try {
                    if (f3719d == null) {
                        f3719d = new com.bytedance.sdk.openadsdk.core.bl.mn();
                    }
                } finally {
                }
            }
        }
        return f3719d;
    }

    public static Bridge dq(int i) {
        return ce.dq().dq(i);
    }

    public static h<com.bytedance.sdk.openadsdk.core.ig.dq> dq() {
        if (dq == null) {
            synchronized (wp.class) {
                try {
                    if (dq == null) {
                        dq = new ji(getContext());
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public static synchronized void dq(Context context) {
        synchronized (wp.class) {
            if (p == null && context != null) {
                p = context.getApplicationContext();
            }
        }
    }

    public static Context getContext() {
        if (p == null) {
            p = dq.dq();
        }
        return p;
    }
}
