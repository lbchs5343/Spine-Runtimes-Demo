package com.bytedance.sdk.component.o.dq;

import com.bytedance.sdk.component.o.no;
import com.bytedance.sdk.component.o.o;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public class p implements ThreadFactory {

    /* renamed from: d, reason: collision with root package name */
    private final int f2025d;
    private final ThreadFactory dq;

    public p(ThreadFactory threadFactory, int i) {
        if (threadFactory == null) {
            this.dq = new o("default");
        } else {
            this.dq = threadFactory;
        }
        this.f2025d = i;
    }

    public boolean d() {
        return no.f2029d.dq(this.f2025d);
    }

    public final String dq() {
        return this.dq.getClass().getName();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.dq.newThread(runnable);
        return d() ? new mn(newThread) : newThread;
    }
}
