package com.bytedance.sdk.component.ia.d.mn;

import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile Handler f1920d = null;
    private static volatile HandlerThread dq = null;
    private static int ox = 3000;

    static {
        HandlerThread handlerThread = new HandlerThread("csj_ad_log", 10);
        dq = handlerThread;
        handlerThread.start();
    }

    public static int d() {
        if (ox <= 0) {
            ox = 3000;
        }
        return ox;
    }

    public static Handler dq() {
        if (dq == null || !dq.isAlive()) {
            synchronized (dq.class) {
                try {
                    if (dq != null) {
                        if (!dq.isAlive()) {
                        }
                    }
                    HandlerThread handlerThread = new HandlerThread("csj_init_handle", -1);
                    dq = handlerThread;
                    handlerThread.start();
                    f1920d = new Handler(dq.getLooper());
                } finally {
                }
            }
        } else if (f1920d == null) {
            synchronized (dq.class) {
                try {
                    if (f1920d == null) {
                        f1920d = new Handler(dq.getLooper());
                    }
                } finally {
                }
            }
        }
        return f1920d;
    }
}
