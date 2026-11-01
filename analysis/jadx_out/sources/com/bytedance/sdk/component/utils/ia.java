package com.bytedance.sdk.component.utils;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public class ia {
    private static volatile Handler dq;

    public static Handler d() {
        if (dq == null) {
            synchronized (ia.class) {
                try {
                    if (dq == null) {
                        dq = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public static Handler dq() {
        return com.bytedance.sdk.component.o.d.dq.dq().d();
    }

    public static Handler ox() {
        return com.bytedance.sdk.component.o.d.dq.dq().ox();
    }
}
