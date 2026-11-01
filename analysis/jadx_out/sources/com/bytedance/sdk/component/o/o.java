package com.bytedance.sdk.component.o;

import g.awf;
import g.tn;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class o implements ThreadFactory {

    /* renamed from: d, reason: collision with root package name */
    private final ThreadGroup f2034d;
    public final String dq;
    private int ox;
    private final AtomicInteger p;

    public o(int i, String str) {
        this.p = new AtomicInteger(1);
        this.ox = i;
        this.f2034d = new ThreadGroup(tn.x("csj_g_", str));
        this.dq = awf.ad(new StringBuilder("csj_"), no.f2029d.iw() ? "p" : "", str);
    }

    public o(String str) {
        this(5, str);
    }

    public Thread dq(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new com.bytedance.sdk.component.o.p.ox(threadGroup, runnable, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread dq = dq(this.f2034d, runnable, this.dq + "_" + this.p.getAndIncrement());
        if (dq.isDaemon()) {
            dq.setDaemon(false);
        }
        int i = this.ox;
        if (i > 10) {
            this.ox = 10;
        } else if (i <= 0) {
            this.ox = 1;
        }
        dq.setPriority(this.ox);
        return dq;
    }
}
