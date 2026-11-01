package com.bytedance.sdk.gromore.dq.dq.ox;

import android.content.Context;

/* loaded from: classes.dex */
public class mn implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2343d;
    private com.bytedance.msdk.core.admanager.dq dq;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.p ox;
    private s p;

    public mn(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar) {
        this.f2343d = dqVar;
        if (dqVar != null) {
            this.dq = new com.bytedance.msdk.core.admanager.dq(context, dqVar.mn());
            this.ox = pVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        this.dq.dq(new com.bytedance.msdk.api.dq.d(10, this.f2343d.ox()), new com.bytedance.msdk.api.p.dq.iw.d() { // from class: com.bytedance.sdk.gromore.dq.dq.ox.mn.1
            @Override // com.bytedance.msdk.api.p.dq.iw.d
            public void d() {
                if (mn.this.ox != null) {
                    mn.this.ox.dq();
                    if (mn.this.p == null) {
                        mn mnVar = mn.this;
                        mnVar.p = new s(mnVar.dq);
                    }
                    mn.this.ox.d(mn.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.d
            public void dq() {
                if (mn.this.ox != null) {
                    if (mn.this.p == null) {
                        mn mnVar = mn.this;
                        mnVar.p = new s(mnVar.dq);
                    }
                    mn.this.ox.dq(mn.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.d
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || mn.this.ox == null) {
                    return;
                }
                mn.this.ox.dq(dqVar.dq, dqVar.f756d);
            }
        });
    }
}
