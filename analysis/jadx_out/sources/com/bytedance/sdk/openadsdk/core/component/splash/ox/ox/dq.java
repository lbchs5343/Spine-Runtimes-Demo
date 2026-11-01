package com.bytedance.sdk.openadsdk.core.component.splash.ox.ox;

import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox f2753d;
    private com.bytedance.sdk.openadsdk.core.component.splash.p.d dq;
    private p<kk, mn> ox;
    private com.bytedance.sdk.openadsdk.f.d.d.d p;

    public dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox oxVar, p<kk, mn> pVar, com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar) {
        if (oxVar == null || pVar == null) {
            return;
        }
        this.f2753d = oxVar;
        this.ox = pVar;
        com.bytedance.sdk.openadsdk.core.component.splash.p.d dVar = new com.bytedance.sdk.openadsdk.core.component.splash.p.d(oxVar.getContext(), oxVar.mn(), oxVar.iw(), this.f2753d.ia(), oxVar, pVar, dqVar);
        this.dq = dVar;
        this.p = dVar;
    }

    public void d() {
        com.bytedance.sdk.openadsdk.core.component.splash.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(this.f2753d, this.ox);
        }
    }

    public com.bytedance.sdk.openadsdk.f.d.d.d dq() {
        return this.p;
    }

    public void dq(int i) {
        com.bytedance.sdk.openadsdk.core.component.splash.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.d(i);
        }
    }

    public void dq(iw iwVar) {
        ia iaVar;
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox oxVar = this.f2753d;
        if (oxVar == null || (iaVar = oxVar.p) == null || iwVar == null) {
            return;
        }
        iaVar.dq(iwVar.dq());
    }
}
