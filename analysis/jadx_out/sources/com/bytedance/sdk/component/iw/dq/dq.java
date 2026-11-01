package com.bytedance.sdk.component.iw.dq;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class dq implements ThreadFactory {

    /* renamed from: d, reason: collision with root package name */
    private final AtomicInteger f1947d = new AtomicInteger(1);
    private final ThreadGroup dq;

    public dq(String str) {
        this.dq = new ThreadGroup("tt_img_".concat(String.valueOf(str)));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(this.dq, runnable, "tt_img_" + this.f1947d.getAndIncrement());
        if (oxVar.isDaemon()) {
            oxVar.setDaemon(false);
        }
        return oxVar;
    }
}
