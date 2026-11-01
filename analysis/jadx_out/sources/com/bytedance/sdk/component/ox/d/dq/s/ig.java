package com.bytedance.sdk.component.ox.d.dq.s;

import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class ig {
    private final CountDownLatch dq = new CountDownLatch(1);

    /* renamed from: d, reason: collision with root package name */
    private long f2087d = -1;
    private long ox = -1;

    public void d() {
        if (this.ox != -1 || this.f2087d == -1) {
            throw new IllegalStateException();
        }
        this.ox = System.nanoTime();
        this.dq.countDown();
    }

    public void dq() {
        if (this.f2087d != -1) {
            throw new IllegalStateException();
        }
        this.f2087d = System.nanoTime();
    }

    public void ox() {
        if (this.ox == -1) {
            long j = this.f2087d;
            if (j != -1) {
                this.ox = j - 1;
                this.dq.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }
}
