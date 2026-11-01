package com.bytedance.sdk.openadsdk.core.component.splash.d.dq;

import com.bytedance.sdk.openadsdk.core.component.splash.dq.dq;
import com.bytedance.sdk.openadsdk.core.component.splash.kk;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.s;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f2703d;
    private com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dq;
    private com.bytedance.sdk.openadsdk.f.d.ox.d ox;
    private mn p = new mn();
    private boolean s;

    public dq(com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar) {
        this.dq = dqVar;
        dqVar.d();
        this.s = wp.d().ds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final iw iwVar, final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d<iw, mn> dVar) {
        if (dVar == null) {
            return;
        }
        if (iwVar != null && iwVar.d() != null) {
            j d2 = iwVar.d();
            wp.dq().dq(d2.fx(), d2.dn(), new h.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.d.dq.dq.2
                @Override // com.bytedance.sdk.openadsdk.core.h.dq
                public void dq(boolean z, long j, long j2) {
                    kk.dq(dq.this.ox, z, j, j2);
                    if (z) {
                        dVar.d(iwVar);
                        return;
                    }
                    dq.this.p.d(22);
                    dq.this.p.dq("check server cache unavailable");
                    dq.this.p.dq(j);
                    dVar.dq(dq.this.p);
                }
            });
        } else {
            this.p.d(1);
            this.p.dq("check server cache error");
            dVar.dq(this.p);
        }
    }

    private void dq(String str, final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d<iw, mn> dVar) {
        final long currentTimeMillis = System.currentTimeMillis();
        this.dq.dq(this.p, str, new dq.InterfaceC0152dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.d.dq.dq.1
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.InterfaceC0152dq
            public void dq() {
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "缓存读取失败");
                com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d dVar2 = dVar;
                if (dVar2 == null) {
                    return;
                }
                dVar2.dq(dq.this.p);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.InterfaceC0152dq
            public void dq(iw iwVar) {
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "缓存读取总耗时： " + (System.currentTimeMillis() - currentTimeMillis));
                if (dVar == null) {
                    return;
                }
                if (dq.this.s) {
                    dq.this.dq(iwVar, (com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d<iw, mn>) dVar);
                    return;
                }
                if (iwVar == null || iwVar.d() == null) {
                    if (iwVar == null) {
                        dq.this.p.d(1);
                        dq.this.p.dq("no ad model cache");
                        dVar.dq(dq.this.p);
                        return;
                    } else if (iwVar.d() == null) {
                        dq.this.p.d(1);
                        dq.this.p.dq("no splash material");
                        dVar.dq(dq.this.p);
                        return;
                    }
                }
                dVar.d(iwVar);
            }
        });
    }

    public void dq(s sVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d<iw, mn> dVar) {
        if (sVar == null || dVar == null) {
            return;
        }
        this.p.d(true);
        this.ox = sVar.p();
        String iw = sVar.iw();
        this.f2703d = iw;
        dq(iw, dVar);
    }
}
