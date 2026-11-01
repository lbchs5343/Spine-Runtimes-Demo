package com.bytedance.sdk.openadsdk.core.component.splash.d.dq;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.kk;

/* loaded from: classes3.dex */
public class p implements com.bytedance.sdk.openadsdk.core.component.splash.ox.d.dq {
    private mn dq = new mn();

    private void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox<ia, mn> oxVar) {
        if (dVar == null || oxVar == null) {
            return;
        }
        this.dq.d(dVar.jy());
        this.dq.dq(dVar.d());
        int kk = dVar.kk();
        com.bykv.vk.openvk.component.video.api.ox.ox ia = dVar.ia();
        this.dq.dq(true);
        if (ia == null) {
            this.dq.d(2);
            this.dq.dq("no video info");
            oxVar.dq(this.dq);
            return;
        }
        String ig = ia.ig();
        if (TextUtils.isEmpty(ig)) {
            this.dq.d(2);
            this.dq.dq("no video url");
            oxVar.dq(this.dq);
            return;
        }
        String jy = ia.jy();
        if (TextUtils.isEmpty(jy)) {
            jy = s.d(ig);
        }
        if (TextUtils.isEmpty(jy)) {
            this.dq.d(2);
            this.dq.dq("no video cahce filename");
            oxVar.dq(this.dq);
            return;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "加载视频素材");
        j d2 = dVar.d();
        if (d2 == null) {
            return;
        }
        boolean o = dVar.o();
        ia.s(1);
        if (ia.f() == 0) {
            ia.p(307200);
        }
        com.bykv.vk.openvk.component.video.api.ox.p dq = o ? pa.dq(2, d2) : pa.dq(3, d2);
        dq.dq("material_meta", d2);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (kk.dq(d2.mx()).dq(dq)) {
            ia iaVar = new ia(dVar.d(), dVar.jy());
            iaVar.dq(true);
            iaVar.ox(true);
            iaVar.dq(dVar.dq());
            iaVar.s(dVar.ox());
            oxVar.d(iaVar);
            dq.kk(1);
            com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq, d2, SystemClock.elapsedRealtime() - elapsedRealtime);
            return;
        }
        if (wp.d().ia(String.valueOf(kk)) && !q.p(wp.getContext())) {
            this.dq.d(2);
            this.dq.dq("network error");
            oxVar.dq(this.dq);
        } else {
            if (dVar.d() == null || dVar.d().dc() != 3) {
                com.bykv.vk.openvk.component.video.dq.dq.dq();
                dq(dq, dVar, dVar.d(), oxVar);
                return;
            }
            ia iaVar2 = new ia(dVar.d(), dVar.jy());
            iaVar2.dq(true);
            iaVar2.ox(false);
            iaVar2.dq(dVar.dq());
            iaVar2.s(dVar.ox());
            iaVar2.dq(pa.dq(dVar.d()));
            oxVar.d(iaVar2);
        }
    }

    private void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar, final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar, j jVar, final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox<ia, mn> oxVar) {
        if (jVar == null || oxVar == null || dVar == null || pVar == null || pa.q(jVar) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.video.p.d.dq(pVar, new com.bykv.vk.openvk.component.video.api.s.d() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.d.dq.p.1
            @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
            public void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar2, int i) {
                if (oxVar != null) {
                    ia iaVar = new ia(dVar.d(), dVar.jy());
                    iaVar.dq(true);
                    iaVar.ox(false);
                    iaVar.dq((com.bytedance.sdk.component.kk.d) null);
                    iaVar.dq(dVar.dq());
                    iaVar.s(dVar.ox());
                    oxVar.d(iaVar);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
            public void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar2, int i, String str) {
                if (oxVar != null) {
                    p.this.dq.d(2);
                    p.this.dq.dq("preload video fail");
                    oxVar.dq(p.this.dq);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.d.dq
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.d dVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.ox<ia, mn> oxVar) {
        d(dVar, oxVar);
    }
}
