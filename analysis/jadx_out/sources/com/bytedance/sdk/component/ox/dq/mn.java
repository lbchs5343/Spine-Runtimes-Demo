package com.bytedance.sdk.component.ox.dq;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class mn implements cd {
    private final cd dq;

    public mn(cd cdVar) {
        if (cdVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.dq = cdVar;
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd
    public void a_(ox oxVar, long j) throws IOException {
        this.dq.a_(oxVar, j);
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.dq.close();
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd
    public r dq() {
        return this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
    public void flush() throws IOException {
        this.dq.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.dq.toString() + ")";
    }
}
