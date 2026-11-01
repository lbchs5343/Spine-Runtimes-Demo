package com.bytedance.sdk.openadsdk.core.component.splash.d.dq;

import android.text.TextUtils;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.iw.q;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.ir.f;
import com.bytedance.sdk.openadsdk.core.ir.fw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.kk;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class d implements com.bytedance.sdk.openadsdk.core.component.splash.ox.d.dq {
    private mn dq = new mn();

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f2699d = new AtomicBoolean(false);

    private void d(final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar, final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox<ia, mn> oxVar) {
        if (dVar == null || oxVar == null) {
            return;
        }
        this.dq.d(dVar.jy());
        this.dq.dq(dVar.d());
        if (wp.d().kk(dVar.kk()) == 4) {
            ia iaVar = new ia(dVar.d(), dVar.jy());
            iaVar.dq(false);
            iaVar.dq(dVar.dq());
            iaVar.dq(dVar.ox());
            oxVar.d(iaVar);
            return;
        }
        com.bytedance.sdk.openadsdk.mp.d s = dVar.s();
        if (s == null) {
            this.dq.d(2);
            this.dq.dq("image request fail");
            this.dq.dq(false);
            oxVar.dq(this.dq);
            return;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "加载图片素材 " + dVar.d().el());
        final int iw = dVar.iw();
        int mn = dVar.mn();
        final String ig = dVar.ig();
        fw.dq(s, iw, mn, new fw.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.d.dq.d.1
            @Override // com.bytedance.sdk.openadsdk.core.ir.fw.dq
            public void dq() {
                d.this.dq.d(2);
                d.this.dq.dq("load image fail");
                d.this.dq.dq(false);
                oxVar.dq(d.this.dq);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.fw.dq
            public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar2, no noVar) {
                ia iaVar2 = new ia(dVar2, dVar.d(), dVar.jy());
                iaVar2.dq(false);
                iaVar2.dq(dVar.dq());
                iaVar2.s(dVar.ox());
                if (noVar != null) {
                    iaVar2.dq(noVar.mn());
                    iaVar2.d(noVar.kk());
                    iaVar2.d(f.dq(noVar.mn()));
                    if (noVar.o() != null) {
                        iaVar2.d(noVar.o().d());
                        iaVar2.ox(noVar.o().dq());
                        iaVar2.p(noVar.o().ox());
                    }
                }
                oxVar.d(iaVar2);
                d.this.dq(ig, iw, iaVar2);
            }
        }, kk.s(), 4, new q() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.d.dq.d.2
            @Override // com.bytedance.sdk.component.iw.q
            @ATSMethod(1)
            public void dq(int i, Object obj) {
                if (i == 3 && d.this.dq(dVar)) {
                    ia iaVar2 = new ia(dVar.d(), dVar.jy());
                    iaVar2.dq(false);
                    iaVar2.dq(dVar.dq());
                    iaVar2.dq(dVar.ox());
                    iaVar2.p(true);
                    iaVar2.d(false);
                    oxVar.ox(iaVar2);
                }
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, int i, final ia iaVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        fw.dq(new com.bytedance.sdk.openadsdk.mp.d(str, ""), i, i, new fw.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.d.dq.d.3
            @Override // com.bytedance.sdk.openadsdk.core.ir.fw.dq
            public void dq() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.fw.dq
            public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, no noVar) {
                if (dVar.p()) {
                    iaVar.dq(dVar);
                }
            }
        }, kk.s());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar) {
        j d2;
        if (dVar == null || (d2 = dVar.d()) == null) {
            return false;
        }
        int fd = d2.fd();
        return fd == 3 || fd == 4;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.d.dq
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox<ia, mn> oxVar) {
        d(dVar, oxVar);
    }
}
