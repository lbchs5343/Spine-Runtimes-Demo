package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class iw implements Executor {
    private static volatile iw dq;

    public static iw dq() {
        if (dq == null) {
            synchronized (iw.class) {
                try {
                    if (dq == null) {
                        dq = new iw();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.p.ox().execute(runnable);
    }
}
