package com.bytedance.msdk.core.admanager;

import android.app.Activity;
import android.content.Context;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.mn.p;
import com.bytedance.msdk.ia.fw;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.tn;

/* loaded from: classes.dex */
public class mn extends d implements com.bytedance.msdk.dq.d.d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.p.dq f805d;
    private com.bytedance.msdk.api.p.dq.p.d dq;

    public mn(Context context, String str) {
        super(context, str, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.mn.2
            @Override // java.lang.Runnable
            public void run() {
                if (mn.this.f805d != null) {
                    mn.this.f805d.b_(dqVar);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e8  */
    @Override // com.bytedance.msdk.api.p.dq.p.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void D_() {
        String str;
        com.bytedance.msdk.api.p.dq.p.dq dqVar;
        com.bytedance.msdk.d.s sVar;
        long j;
        com.bytedance.msdk.d.s sVar2;
        e_();
        String str2 = null;
        if (fw.dq() && (sVar2 = this.yy) != null && MediationConstant.ADN_PANGLE.equals(sVar2.m())) {
            if (!tn.n()) {
                dq(true);
                com.bytedance.msdk.api.dq dqVar2 = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, dqVar2, 1, mn() ? 1 : 0, (String) null, 0L, tn.m());
                s(dqVar2);
                return;
            }
            if (fw.s()) {
                str = tn.m();
                dqVar = this.f805d;
                if (dqVar != null) {
                    dqVar.D_();
                }
                mp.dq().mn(this.kk);
                if (this.yy != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.bytedance.msdk.dq.s.s.dq(this.kk, "show_listen"));
                    sb.append("adSlotId：");
                    tn.a(this.yy, sb, "，广告类型：");
                    sb.append(com.bytedance.msdk.d.dq.dq(this.yy.hf()));
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                    com.bytedance.msdk.core.kk.no.dq().d(this.kk, this.yy.b());
                }
                jy();
                ox(this.yy);
                sVar = this.yy;
                if (sVar != null) {
                    com.bytedance.msdk.core.ox.ox.dq(sVar.wi(), this.kk, this.yy.b());
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(this.yy)) {
                    j = -1;
                } else {
                    str2 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                }
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, mn() ? 1 : 0, str2, j, str, false);
                com.bytedance.msdk.core.d.dq.mn(this.no.k());
                com.bytedance.msdk.core.d.dq.ox(this.no.k());
                com.bytedance.msdk.core.o.p.dq(1, this.no.k(), this.yy.qz(), this.yy.dk());
                com.bytedance.msdk.core.mn.mn.dq(this.kk, this.yy);
            }
        }
        str = null;
        dqVar = this.f805d;
        if (dqVar != null) {
        }
        mp.dq().mn(this.kk);
        if (this.yy != null) {
        }
        jy();
        ox(this.yy);
        sVar = this.yy;
        if (sVar != null) {
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (r.dq(this.yy)) {
        }
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, mn() ? 1 : 0, str2, j, str, false);
        com.bytedance.msdk.core.d.dq.mn(this.no.k());
        com.bytedance.msdk.core.d.dq.ox(this.no.k());
        com.bytedance.msdk.core.o.p.dq(1, this.no.k(), this.yy.qz(), this.yy.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.kk, this.yy);
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void b_(com.bytedance.msdk.api.dq dqVar) {
        String str;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, dqVar, 1, mn() ? 1 : 0, str, j);
        s(dqVar);
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d() {
        if (this.yy == null) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(l(), this.kk, this.no, i(), this.yy);
        }
        super.d();
        this.f805d = null;
        this.dq = null;
    }

    public void d(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        dq(activity, ritScenes, str);
    }

    public void d(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.p.d dVar2) {
        if (ig()) {
            this.dq = dVar2;
            this.no = dVar;
            this.t = this;
            ia();
        }
    }

    public void dq(Activity activity) {
        d(activity, null, null);
    }

    @Override // com.bytedance.msdk.core.admanager.d
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(activity, ritScenes, str, new p.dq() { // from class: com.bytedance.msdk.core.admanager.mn.1
            @Override // com.bytedance.msdk.core.mn.p.dq
            public void dq() {
                mn.this.s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            }
        });
        if (this.f805d == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "注意：未设置GMFullVideoAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
        d((com.bytedance.msdk.d.s) null);
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.p.d dVar2) {
        if (!com.bytedance.msdk.core.dq.d().dq(j(), 8) && dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
        } else if (com.bytedance.msdk.core.dq.d().i()) {
            d(dVar, dVar2);
        } else if (dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840037, com.bytedance.msdk.api.dq.dq(840037)));
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
        com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f805d;
        if (dqVar2 != null) {
            dqVar2.dq(o.dq(this.no, dqVar, this.yy));
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.p.dq dqVar) {
        this.f805d = dqVar;
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void iw() {
        if (!fw.dq()) {
            q();
            com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f805d;
            if (dqVar != null) {
                dqVar.iw();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!tn.n()) {
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 3, 1, mn() ? 1 : 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.yy, this.no, 3, 0, mn() ? 1 : 0, (String) null);
        }
        if (no()) {
            return;
        }
        q();
        com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f805d;
        if (dqVar2 != null) {
            dqVar2.iw();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void o_() {
        String str;
        long j;
        String str2;
        com.bytedance.msdk.api.p.dq.p.dq dqVar;
        g_();
        String str3 = null;
        if (fw.dq()) {
            com.bytedance.msdk.d.s sVar = this.yy;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!tn.n()) {
                    com.bytedance.msdk.s.iw.dq(this.yy, this.no, 5, 1, mn() ? 1 : 0, tn.m());
                    return;
                } else if (fw.iw()) {
                    str2 = tn.m();
                    if (!no() && (dqVar = this.f805d) != null) {
                        dqVar.o_();
                    }
                    str = str2;
                }
            }
            str2 = null;
            if (!no()) {
                dqVar.o_();
            }
            str = str2;
        } else {
            com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f805d;
            if (dqVar2 != null) {
                dqVar2.o_();
            }
            str = null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str3 = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            j = -1;
        }
        long j2 = j;
        String str4 = str3;
        com.bytedance.msdk.core.d.dq.s(this.no.k());
        com.bytedance.msdk.s.iw.d(this.yy, this.no, mn() ? 1 : 0, str4, j2, str, this.yy.by());
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
        com.bytedance.msdk.api.p.dq.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
        com.bytedance.msdk.api.p.dq.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void p_() {
        f_();
        if (((d) this).ox) {
            if (!fw.dq()) {
                q();
                com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f805d;
                if (dqVar != null) {
                    dqVar.p_();
                    return;
                }
                return;
            }
            com.bytedance.msdk.d.s sVar = this.yy;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!tn.n()) {
                    com.bytedance.msdk.s.iw.dq(this.yy, this.no, 2, 1, mn() ? 1 : 0, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 2, 0, mn() ? 1 : 0, (String) null);
            }
            if (no()) {
                return;
            }
            q();
            com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f805d;
            if (dqVar2 != null) {
                dqVar2.p_();
            }
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void q_() {
        if (!fw.dq()) {
            q();
            com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f805d;
            if (dqVar != null) {
                dqVar.q_();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!tn.n()) {
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 1, 1, mn() ? 1 : 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.yy, this.no, 1, 0, mn() ? 1 : 0, (String) null);
        }
        if (no()) {
            return;
        }
        q();
        com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f805d;
        if (dqVar2 != null) {
            dqVar2.q_();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void r_() {
        String str;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, (com.bytedance.msdk.api.dq) null, 2, mn() ? 1 : 0, str, j);
        com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f805d;
        if (dqVar != null) {
            dqVar.r_();
        }
    }
}
