package com.bytedance.sdk.openadsdk.core.p.d;

import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.h.mn;

/* loaded from: classes3.dex */
public class d implements dq {
    private int dq;

    public d(int i) {
        this.dq = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, j jVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void d(String str) {
        com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.dq).d(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final j jVar) {
        if (jVar.ix() <= 0) {
            jVar.p((System.currentTimeMillis() + 10500000) / 1000);
        }
        mn.ox(new kk("PreloadStrategyLoadDelete-onNetworkResponse") { // from class: com.bytedance.sdk.openadsdk.core.p.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.p.ox.p.dq(d.this.dq).dq(dVar, jVar, false);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, j jVar, Object obj, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void dq(String str, j jVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public boolean dq(String str) {
        return !com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.dq).p(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public j ox(String str) {
        j dq = com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.dq).dq(str, false);
        if (dq != null) {
            com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.dq).dq(str, dq.xq());
        }
        return dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void ox(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, j jVar) {
    }
}
