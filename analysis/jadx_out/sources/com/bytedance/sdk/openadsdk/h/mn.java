package com.bytedance.sdk.openadsdk.h;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class mn {
    public static void d(com.bytedance.sdk.component.o.kk kkVar) {
        com.bytedance.sdk.component.o.mn.ox(kkVar);
    }

    public static void d(Runnable runnable) {
        if (wp.d().gm() || Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            le.iw().post(runnable);
        }
    }

    public static void dq(com.bytedance.sdk.component.o.kk kkVar) {
        com.bytedance.sdk.component.o.mn.d(kkVar);
    }

    public static void dq(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            le.iw().post(runnable);
        }
    }

    public static boolean dq() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static void ox(final Runnable runnable) {
        if (dq()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("") { // from class: com.bytedance.sdk.openadsdk.h.mn.1
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
        } else if (runnable != null) {
            runnable.run();
        }
    }
}
