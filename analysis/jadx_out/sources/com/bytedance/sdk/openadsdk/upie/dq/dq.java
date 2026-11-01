package com.bytedance.sdk.openadsdk.upie.dq;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes3.dex */
public class dq {
    private static final Handler dq = new Handler(Looper.getMainLooper());

    public static void d(Runnable runnable) {
        dq.post(runnable);
    }

    public static void dq(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            dq.post(runnable);
        }
    }
}
