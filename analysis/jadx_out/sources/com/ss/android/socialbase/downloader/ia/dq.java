package com.ss.android.socialbase.downloader.ia;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class dq implements ThreadFactory {

    /* renamed from: d, reason: collision with root package name */
    private final AtomicInteger f9372d;
    private final String dq;
    private final boolean ox;

    public dq(String str) {
        this(str, false);
    }

    public dq(String str, boolean z) {
        this.f9372d = new AtomicInteger();
        this.dq = str;
        this.ox = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(runnable, this.dq + "-" + this.f9372d.incrementAndGet());
        if (!this.ox) {
            if (oxVar.isDaemon()) {
                oxVar.setDaemon(false);
            }
            if (oxVar.getPriority() != 5) {
                oxVar.setPriority(5);
            }
        }
        return oxVar;
    }
}
