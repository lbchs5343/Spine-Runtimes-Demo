package com.bytedance.sdk.openadsdk.core.component.splash.ox.dq;

/* loaded from: classes3.dex */
public class iw extends dq {
    private long ia;
    private long iw;
    private long kk;
    private long mn;
    private com.bytedance.sdk.openadsdk.core.r.dq p;
    private boolean s;

    public iw(com.bytedance.sdk.openadsdk.core.r.dq dqVar, boolean z) {
        this.p = dqVar;
        if (dqVar != null && dqVar.d() != null && !this.p.d().isEmpty()) {
            this.f2749d = this.p.d().get(0);
        }
        this.s = z;
    }

    public void d(long j) {
        this.iw = j;
    }

    public long ia() {
        return this.ia;
    }

    public long iw() {
        return this.iw;
    }

    public long kk() {
        return this.kk;
    }

    public long mn() {
        return this.mn;
    }

    public void ox(long j) {
        this.mn = j;
    }

    public com.bytedance.sdk.openadsdk.core.r.dq p() {
        return this.p;
    }

    public void p(long j) {
        this.ia = j;
    }

    public void s(long j) {
        this.kk = j;
    }

    public boolean s() {
        return this.s;
    }
}
