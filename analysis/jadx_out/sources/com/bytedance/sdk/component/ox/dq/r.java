package com.bytedance.sdk.component.ox.dq;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class r {
    public static final r ox = new r() { // from class: com.bytedance.sdk.component.ox.dq.r.1
        @Override // com.bytedance.sdk.component.ox.dq.r
        public r dq(long j) {
            return this;
        }

        @Override // com.bytedance.sdk.component.ox.dq.r
        public r dq(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // com.bytedance.sdk.component.ox.dq.r
        public void mn() throws IOException {
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private long f2163d;
    private boolean dq;
    private long p;

    public long H_() {
        return this.p;
    }

    public long I_() {
        if (this.dq) {
            return this.f2163d;
        }
        throw new IllegalStateException("No deadline");
    }

    public r dq(long j) {
        this.dq = true;
        this.f2163d = j;
        return this;
    }

    public r dq(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: ".concat(String.valueOf(j)));
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.p = timeUnit.toNanos(j);
        return this;
    }

    public r iw() {
        this.dq = false;
        return this;
    }

    public void mn() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.dq && this.f2163d - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public boolean ox() {
        return this.dq;
    }

    public r s() {
        this.p = 0L;
        return this;
    }
}
