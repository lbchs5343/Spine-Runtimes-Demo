package com.bytedance.sdk.component.ox.dq;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class ia implements gh {
    private final gh dq;

    public ia(gh ghVar) {
        if (ghVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.dq = ghVar;
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.dq.close();
    }

    public final gh d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public long dq(ox oxVar, long j) throws IOException {
        return this.dq.dq(oxVar, j);
    }

    @Override // com.bytedance.sdk.component.ox.dq.gh
    public r dq() {
        return this.dq.dq();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.dq.toString() + ")";
    }
}
