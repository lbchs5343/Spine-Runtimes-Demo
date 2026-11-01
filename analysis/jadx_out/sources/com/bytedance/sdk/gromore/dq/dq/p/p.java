package com.bytedance.sdk.gromore.dq.dq.p;

/* loaded from: classes.dex */
public class p extends com.bytedance.sdk.openadsdk.f.d.d.s {
    private com.bytedance.msdk.api.p.dq.mn.dq dq;

    public p(com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.s
    public void d() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.er();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.s
    public void dq() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            if (dqVar.wn() == 3) {
                this.dq.ce();
            } else if (this.dq.wn() == 2) {
                this.dq.c();
            }
        }
    }
}
