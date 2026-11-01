package com.bytedance.sdk.component.ox.dq;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class kk extends r {
    private r dq;

    public kk(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.dq = rVar;
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public long H_() {
        return this.dq.H_();
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public long I_() {
        return this.dq.I_();
    }

    public final kk dq(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.dq = rVar;
        return this;
    }

    public final r dq() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public r dq(long j) {
        return this.dq.dq(j);
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public r dq(long j, TimeUnit timeUnit) {
        return this.dq.dq(j, timeUnit);
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public r iw() {
        return this.dq.iw();
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public void mn() throws IOException {
        this.dq.mn();
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public boolean ox() {
        return this.dq.ox();
    }

    @Override // com.bytedance.sdk.component.ox.dq.r
    public r s() {
        return this.dq.s();
    }
}
