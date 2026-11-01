package com.bytedance.sdk.openadsdk.core.component.splash.ox.ox;

import com.bytedance.sdk.openadsdk.core.component.splash.kk;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;

/* loaded from: classes3.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d f2754d;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.d.dq dq;
    private ox<ia, mn> ox;

    public iw(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar, ox<ia, mn> oxVar) {
        if (dVar == null || oxVar == null) {
            return;
        }
        this.f2754d = dVar;
        this.ox = oxVar;
        if (dVar.no() == 1) {
            this.dq = new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.d();
        } else {
            this.dq = new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.p();
        }
    }

    public void d() {
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar = this.f2754d;
        if (dVar == null || this.ox == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.component.splash.ox.d.dq dqVar = this.dq;
        if (dqVar instanceof com.bytedance.sdk.openadsdk.core.component.splash.d.dq.d) {
            dqVar.dq(dVar, new ox<ia, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.iw.1
                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
                public void d(ia iaVar) {
                    if (iaVar != null) {
                        iaVar.s(true);
                    }
                    iw.this.ox.d(iaVar);
                    kk.dq(iw.this.f2754d.mp());
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
                /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                public void ox(ia iaVar) {
                    if (iaVar != null) {
                        iaVar.s(false);
                    }
                    iw.this.ox.ox(iaVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
                public void dq(mn mnVar) {
                    iw.this.ox.dq(mnVar);
                }
            });
        } else {
            dqVar.dq(dVar, new ox<ia, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.iw.2
                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
                public void d(ia iaVar) {
                    if (iaVar != null) {
                        iaVar.s(true);
                    }
                    iw.this.ox.d(iaVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
                /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                public void ox(ia iaVar) {
                    if (iaVar != null) {
                        iaVar.s(false);
                    }
                    iw.this.ox.ox(iaVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox
                public void dq(mn mnVar) {
                    if (iw.this.f2754d.q() && iw.this.f2754d.d() != null) {
                        iw.this.f2754d.d().kk(1);
                    }
                    new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.d().dq(iw.this.f2754d, iw.this.ox);
                }
            });
        }
    }

    public boolean dq() {
        return this.dq instanceof com.bytedance.sdk.openadsdk.core.component.splash.d.dq.p;
    }
}
