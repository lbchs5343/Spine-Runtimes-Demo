package com.bytedance.msdk.ox.p;

import android.app.Activity;
import android.content.Context;
import com.bytedance.msdk.ia.fw;
import com.bytedance.msdk.ia.r;
import com.bytedance.msdk.ox.p.o;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.tn;

/* loaded from: classes.dex */
public class ia extends p implements com.bytedance.msdk.dq.d.d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.p.dq f1192d;
    private com.bytedance.msdk.api.p.dq.p.d dq;

    public ia(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.ia.2
            @Override // java.lang.Runnable
            public void run() {
                if (ia.this.f1192d != null) {
                    ia.this.f1192d.b_(dqVar);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ea  */
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
        ia();
        String str2 = null;
        if (fw.dq() && (sVar2 = this.p) != null && MediationConstant.ADN_PANGLE.equals(sVar2.m())) {
            if (!tn.n()) {
                dq(true);
                com.bytedance.msdk.api.dq dqVar2 = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, dqVar2, 1, mn() ? 1 : 0, (String) null, 0L, tn.m());
                ox(dqVar2);
                return;
            }
            if (fw.s()) {
                str = tn.m();
                dqVar = this.f1192d;
                if (dqVar != null) {
                    dqVar.D_();
                }
                com.bytedance.msdk.core.kk.mp.dq().mn(this.s);
                if (this.p != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.bytedance.msdk.dq.s.s.dq(this.s, "show_listen"));
                    sb.append("adSlotId：");
                    tn.a(this.p, sb, "，广告类型：");
                    sb.append(com.bytedance.msdk.d.dq.dq(this.p.hf()));
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                    com.bytedance.msdk.core.kk.no.dq().d(this.s, this.p.b());
                }
                dq(this.ox);
                ox(this.p);
                sVar = this.p;
                if (sVar != null) {
                    com.bytedance.msdk.core.ox.ox.dq(sVar.wi(), this.s, this.p.b());
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(this.p)) {
                    j = -1;
                } else {
                    str2 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                }
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, mn() ? 1 : 0, str2, j, str, false);
                com.bytedance.msdk.core.d.dq.mn(this.iw.k());
                com.bytedance.msdk.core.d.dq.ox(this.iw.k());
                com.bytedance.msdk.core.o.p.dq(1, this.iw.k(), this.p.qz(), this.p.dk());
                com.bytedance.msdk.core.mn.mn.dq(this.s, this.p);
            }
        }
        str = null;
        dqVar = this.f1192d;
        if (dqVar != null) {
        }
        com.bytedance.msdk.core.kk.mp.dq().mn(this.s);
        if (this.p != null) {
        }
        dq(this.ox);
        ox(this.p);
        sVar = this.p;
        if (sVar != null) {
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (r.dq(this.p)) {
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, mn() ? 1 : 0, str2, j, str, false);
        com.bytedance.msdk.core.d.dq.mn(this.iw.k());
        com.bytedance.msdk.core.d.dq.ox(this.iw.k());
        com.bytedance.msdk.core.o.p.dq(1, this.iw.k(), this.p.qz(), this.p.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.s, this.p);
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void b_(com.bytedance.msdk.api.dq dqVar) {
        String str;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, dqVar, 1, mn() ? 1 : 0, str, j);
        ox(dqVar);
    }

    public void d(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        dq(activity, ritScenes, str);
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.ox.p.o, com.bytedance.msdk.ox.p.d
    public void dq() {
        if (this.p == null) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.ox.r(), this.s, this.iw, i(), this.p);
        }
        super.dq();
        this.f1192d = null;
        this.dq = null;
    }

    public void dq(Activity activity) {
        d(activity, null, null);
    }

    @Override // com.bytedance.msdk.ox.p.p
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(activity, ritScenes, str, new o.dq() { // from class: com.bytedance.msdk.ox.p.ia.1
            @Override // com.bytedance.msdk.ox.p.o.dq
            public void dq() {
                ia.this.ox(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            }
        });
        if (this.f1192d == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "注意：未设置GMFullVideoAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
        dq((com.bytedance.msdk.d.s) null);
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.p.d dVar2) {
        super.d(dVar);
        this.dq = dVar2;
        this.iw = dVar;
        this.kk = this;
        no();
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
        com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f1192d;
        if (dqVar2 != null) {
            dqVar2.dq(com.bytedance.msdk.core.admanager.o.dq(this.iw, dqVar, this.p));
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.p.dq dqVar) {
        this.f1192d = dqVar;
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void iw() {
        if (!fw.dq()) {
            e();
            com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f1192d;
            if (dqVar != null) {
                dqVar.iw();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!tn.n()) {
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 3, 1, mn() ? 1 : 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.p, this.iw, 3, 0, mn() ? 1 : 0, (String) null);
        }
        if (wp()) {
            return;
        }
        e();
        com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f1192d;
        if (dqVar2 != null) {
            dqVar2.iw();
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
        com.bytedance.msdk.api.p.dq.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void o() {
        com.bytedance.msdk.api.p.dq.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void o_() {
        String str;
        long j;
        String str2;
        com.bytedance.msdk.api.p.dq.p.dq dqVar;
        k();
        String str3 = null;
        if (fw.dq()) {
            com.bytedance.msdk.d.s sVar = this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!tn.n()) {
                    com.bytedance.msdk.s.iw.dq(this.p, this.iw, 5, 1, mn() ? 1 : 0, tn.m());
                    return;
                } else if (fw.iw()) {
                    str2 = tn.m();
                    if (!wp() && (dqVar = this.f1192d) != null) {
                        dqVar.o_();
                    }
                    str = str2;
                }
            }
            str2 = null;
            if (!wp()) {
                dqVar.o_();
            }
            str = str2;
        } else {
            com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f1192d;
            if (dqVar2 != null) {
                dqVar2.o_();
            }
            str = null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str3 = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            j = -1;
        }
        long j2 = j;
        String str4 = str3;
        com.bytedance.msdk.core.d.dq.s(this.iw.k());
        com.bytedance.msdk.s.iw.d(this.p, this.iw, mn() ? 1 : 0, str4, j2, str, this.p.by());
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void p_() {
        le();
        if (this.jy) {
            if (!fw.dq()) {
                e();
                com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f1192d;
                if (dqVar != null) {
                    dqVar.p_();
                    return;
                }
                return;
            }
            com.bytedance.msdk.d.s sVar = this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!tn.n()) {
                    com.bytedance.msdk.s.iw.dq(this.p, this.iw, 2, 1, mn() ? 1 : 0, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 2, 0, mn() ? 1 : 0, (String) null);
            }
            if (wp()) {
                return;
            }
            e();
            com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f1192d;
            if (dqVar2 != null) {
                dqVar2.p_();
            }
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void q_() {
        if (!fw.dq()) {
            e();
            com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f1192d;
            if (dqVar != null) {
                dqVar.q_();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!tn.n()) {
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 1, 1, mn() ? 1 : 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.p, this.iw, 1, 0, mn() ? 1 : 0, (String) null);
        }
        if (wp()) {
            return;
        }
        e();
        com.bytedance.msdk.api.p.dq.p.dq dqVar2 = this.f1192d;
        if (dqVar2 != null) {
            dqVar2.q_();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.p.dq
    public void r_() {
        String str;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, (com.bytedance.msdk.api.dq) null, 2, mn() ? 1 : 0, str, j);
        com.bytedance.msdk.api.p.dq.p.dq dqVar = this.f1192d;
        if (dqVar != null) {
            dqVar.r_();
        }
    }
}
