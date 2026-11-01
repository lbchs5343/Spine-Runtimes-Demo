package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class o implements Executor {
    private static volatile o dq;

    public static o dq() {
        if (dq == null) {
            synchronized (o.class) {
                try {
                    if (dq == null) {
                        dq = new o();
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
