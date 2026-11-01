package com.bytedance.sdk.gromore.dq.dq.mn.ox;

import android.content.Context;

/* loaded from: classes.dex */
public class ox implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2328d;
    private com.bytedance.msdk.ox.p.ia dq;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.p ox;
    private dq p;

    public ox(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar) {
        this.f2328d = dqVar;
        if (dqVar != null) {
            this.dq = new com.bytedance.msdk.ox.p.ia(context);
            this.ox = pVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        this.dq.dq(new com.bytedance.msdk.api.dq.d(8, this.f2328d.ox()), new com.bytedance.msdk.api.p.dq.p.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.ox.ox.1
            @Override // com.bytedance.msdk.api.p.dq.p.d
            public void d() {
                if (ox.this.ox != null) {
                    ox.this.ox.dq();
                    if (ox.this.p == null) {
                        ox oxVar = ox.this;
                        oxVar.p = new dq(oxVar.dq);
                    }
                    ox.this.ox.d(ox.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.d
            public void dq() {
                if (ox.this.ox != null) {
                    if (ox.this.p == null) {
                        ox oxVar = ox.this;
                        oxVar.p = new dq(oxVar.dq);
                    }
                    ox.this.ox.dq(ox.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.d
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || ox.this.ox == null) {
                    return;
                }
                ox.this.ox.dq(dqVar.dq, dqVar.f756d);
            }
        });
    }
}
