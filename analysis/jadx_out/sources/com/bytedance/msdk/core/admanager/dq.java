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
public class dq extends d {

    /* renamed from: d, reason: collision with root package name */
    com.bytedance.msdk.dq.d.ox f798d;
    com.bytedance.msdk.dq.d.d dq;
    private com.bytedance.msdk.api.p.dq.iw.dq io;
    private com.bytedance.msdk.api.p.dq.iw.d pa;

    public dq(Context context, String str) {
        super(context, str, 10);
        this.dq = new com.bytedance.msdk.dq.d.d() { // from class: com.bytedance.msdk.core.admanager.dq.3
            /* JADX WARN: Removed duplicated region for block: B:17:0x0076  */
            /* JADX WARN: Removed duplicated region for block: B:20:0x00a0  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x0112  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x013f  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x014b  */
            @Override // com.bytedance.msdk.api.p.dq.p.dq
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void D_() {
                String str2;
                long j;
                dq.this.e_();
                String str3 = null;
                if (fw.dq() && ((com.bytedance.msdk.core.mn.s) dq.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) dq.this).yy.m())) {
                    if (!tn.n()) {
                        dq.this.dq(true);
                        com.bytedance.msdk.api.dq dqVar = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                        com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, dqVar, 1, dq.this.mn() ? 1 : 0, (String) null, 0L, tn.m());
                        dq.this.s(dqVar);
                        return;
                    }
                    if (fw.s()) {
                        str2 = tn.m();
                        if (dq.this.io != null) {
                            dq.this.io.dq();
                        }
                        mp.dq().mn(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                        if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null) {
                            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(((com.bytedance.msdk.core.mn.ox) dq.this).kk, "show_listen") + "adSlotId：" + ((com.bytedance.msdk.core.mn.s) dq.this).yy.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy.hf()));
                            com.bytedance.msdk.core.kk.no.dq().d(((com.bytedance.msdk.core.mn.ox) dq.this).kk, ((com.bytedance.msdk.core.mn.s) dq.this).yy.b());
                        }
                        dq.this.jy();
                        dq dqVar2 = dq.this;
                        dqVar2.ox(((com.bytedance.msdk.core.mn.s) dqVar2).yy);
                        if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null) {
                            com.bytedance.msdk.core.ox.ox.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy.wi(), ((com.bytedance.msdk.core.mn.ox) dq.this).kk, ((com.bytedance.msdk.core.mn.s) dq.this).yy.b());
                        }
                        long currentTimeMillis = System.currentTimeMillis();
                        if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                            j = -1;
                        } else {
                            str3 = tn.i();
                            j = System.currentTimeMillis() - currentTimeMillis;
                        }
                        com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, dq.this.mn() ? 1 : 0, str3, j, str2, false);
                        com.bytedance.msdk.core.d.dq.mn(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                        com.bytedance.msdk.core.d.dq.ox(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                        com.bytedance.msdk.core.o.p.dq(1, ((com.bytedance.msdk.core.mn.ox) dq.this).no.k(), ((com.bytedance.msdk.core.mn.s) dq.this).yy.qz(), ((com.bytedance.msdk.core.mn.s) dq.this).yy.dk());
                        com.bytedance.msdk.core.mn.mn.dq(((com.bytedance.msdk.core.mn.ox) dq.this).kk, ((com.bytedance.msdk.core.mn.s) dq.this).yy);
                    }
                }
                str2 = null;
                if (dq.this.io != null) {
                }
                mp.dq().mn(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null) {
                }
                dq.this.jy();
                dq dqVar22 = dq.this;
                dqVar22.ox(((com.bytedance.msdk.core.mn.s) dqVar22).yy);
                if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null) {
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, dq.this.mn() ? 1 : 0, str3, j, str2, false);
                com.bytedance.msdk.core.d.dq.mn(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                com.bytedance.msdk.core.d.dq.ox(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                com.bytedance.msdk.core.o.p.dq(1, ((com.bytedance.msdk.core.mn.ox) dq.this).no.k(), ((com.bytedance.msdk.core.mn.s) dq.this).yy.qz(), ((com.bytedance.msdk.core.mn.s) dq.this).yy.dk());
                com.bytedance.msdk.core.mn.mn.dq(((com.bytedance.msdk.core.mn.ox) dq.this).kk, ((com.bytedance.msdk.core.mn.s) dq.this).yy);
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void b_(com.bytedance.msdk.api.dq dqVar) {
                String str2;
                long j;
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                    str2 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str2 = null;
                    j = -1;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, dqVar, 1, dq.this.mn() ? 1 : 0, str2, j);
                dq.this.s(dqVar);
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                if (dq.this.io != null) {
                    dq.this.io.dq(o.dq(((com.bytedance.msdk.core.mn.ox) dq.this).no, dqVar, ((com.bytedance.msdk.core.mn.s) dq.this).yy));
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void iw() {
                if (!fw.dq()) {
                    dq.this.q();
                    if (dq.this.io != null) {
                        dq.this.io.iw();
                        return;
                    }
                    return;
                }
                if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) dq.this).yy.m())) {
                    if (!tn.n()) {
                        com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, 3, 1, dq.this.mn() ? 1 : 0, tn.m());
                        return;
                    }
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, 3, 0, dq.this.mn() ? 1 : 0, (String) null);
                }
                if (dq.this.no()) {
                    return;
                }
                dq.this.q();
                if (dq.this.io != null) {
                    dq.this.io.iw();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void o_() {
                String str2;
                long j;
                String str3;
                dq.this.g_();
                String str4 = null;
                if (fw.dq()) {
                    if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) dq.this).yy.m())) {
                        if (!tn.n()) {
                            com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, 5, 1, dq.this.mn() ? 1 : 0, tn.m());
                            return;
                        } else if (fw.iw()) {
                            str3 = tn.m();
                            if (!dq.this.no() && dq.this.io != null) {
                                dq.this.io.d();
                            }
                            str2 = str3;
                        }
                    }
                    str3 = null;
                    if (!dq.this.no()) {
                        dq.this.io.d();
                    }
                    str2 = str3;
                } else {
                    if (dq.this.io != null) {
                        dq.this.io.d();
                    }
                    str2 = null;
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                    str4 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    j = -1;
                }
                long j2 = j;
                String str5 = str4;
                com.bytedance.msdk.core.d.dq.s(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                com.bytedance.msdk.s.iw.d(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, dq.this.mn() ? 1 : 0, str5, j2, str2, ((com.bytedance.msdk.core.mn.s) dq.this).yy.by());
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void p_() {
                dq.this.f_();
                if (((d) dq.this).ox) {
                    if (!fw.dq()) {
                        dq.this.q();
                        if (dq.this.io != null) {
                            dq.this.io.ox();
                            return;
                        }
                        return;
                    }
                    if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) dq.this).yy.m())) {
                        if (!tn.n()) {
                            com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, 2, 1, dq.this.mn() ? 1 : 0, tn.m());
                            return;
                        }
                        com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, 2, 0, dq.this.mn() ? 1 : 0, (String) null);
                    }
                    if (dq.this.no()) {
                        return;
                    }
                    dq.this.q();
                    if (dq.this.io != null) {
                        dq.this.io.ox();
                    }
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void q_() {
                if (!fw.dq()) {
                    dq.this.q();
                    if (dq.this.io != null) {
                        dq.this.io.p();
                        return;
                    }
                    return;
                }
                if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) dq.this).yy.m())) {
                    if (!tn.n()) {
                        com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, 1, 1, dq.this.mn() ? 1 : 0, tn.m());
                        return;
                    }
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, 1, 0, dq.this.mn() ? 1 : 0, (String) null);
                }
                if (dq.this.no()) {
                    return;
                }
                dq.this.q();
                if (dq.this.io != null) {
                    dq.this.io.p();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void r_() {
                String str2;
                long j;
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                    str2 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str2 = null;
                    j = -1;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, (com.bytedance.msdk.api.dq) null, 2, dq.this.mn() ? 1 : 0, str2, j);
                if (dq.this.io != null) {
                    dq.this.io.s();
                }
            }
        };
        this.f798d = new com.bytedance.msdk.dq.d.ox() { // from class: com.bytedance.msdk.core.admanager.dq.4
            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void d() {
                String str2;
                long j;
                dq.this.g_();
                if (dq.this.io != null) {
                    dq.this.io.d();
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                    str2 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str2 = null;
                    j = -1;
                }
                String str3 = str2;
                long j2 = j;
                com.bytedance.msdk.d.s sVar = ((com.bytedance.msdk.core.mn.s) dq.this).yy;
                com.bytedance.msdk.api.dq.d dVar = ((com.bytedance.msdk.core.mn.ox) dq.this).no;
                boolean mn = dq.this.mn();
                com.bytedance.msdk.s.iw.d(sVar, dVar, mn ? 1 : 0, str3, j2, ((com.bytedance.msdk.core.mn.s) dq.this).yy.by());
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void dq() {
                String str2;
                long j;
                dq.this.e_();
                if (dq.this.io != null) {
                    dq.this.io.dq();
                }
                mp.dq().mn(((com.bytedance.msdk.core.mn.ox) dq.this).kk);
                if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(((com.bytedance.msdk.core.mn.ox) dq.this).kk, "show_listen") + "adSlotId：" + ((com.bytedance.msdk.core.mn.s) dq.this).yy.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy.hf()));
                    com.bytedance.msdk.core.kk.no.dq().d(((com.bytedance.msdk.core.mn.ox) dq.this).kk, ((com.bytedance.msdk.core.mn.s) dq.this).yy.b());
                }
                dq.this.jy();
                dq dqVar = dq.this;
                dqVar.ox(((com.bytedance.msdk.core.mn.s) dqVar).yy);
                if (((com.bytedance.msdk.core.mn.s) dq.this).yy != null) {
                    com.bytedance.msdk.core.ox.ox.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy.wi(), ((com.bytedance.msdk.core.mn.ox) dq.this).kk, ((com.bytedance.msdk.core.mn.s) dq.this).yy.b());
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                    str2 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str2 = null;
                    j = -1;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, dq.this.mn() ? 1 : 0, str2, j, false);
                com.bytedance.msdk.core.mn.mn.dq(((com.bytedance.msdk.core.mn.ox) dq.this).kk, ((com.bytedance.msdk.core.mn.s) dq.this).yy);
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                String str2;
                long j;
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy)) {
                    str2 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str2 = null;
                    j = -1;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) dq.this).yy, ((com.bytedance.msdk.core.mn.ox) dq.this).no, dqVar, 1, dq.this.mn() ? 1 : 0, str2, j);
                dq.this.s(dqVar);
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void ox() {
                dq.this.f_();
                dq dqVar = dq.this;
                if (((d) dqVar).ox) {
                    dqVar.q();
                    if (dq.this.io != null) {
                        dq.this.io.ox();
                    }
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void p() {
                if (dq.this.io != null) {
                    dq.this.io.mn();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void s() {
                if (dq.this.io != null) {
                    dq.this.io.ia();
                }
            }
        };
    }

    private void d(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(activity, ritScenes, str, new p.dq() { // from class: com.bytedance.msdk.core.admanager.dq.1
            @Override // com.bytedance.msdk.core.mn.p.dq
            public void dq() {
                dq.this.s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            }
        });
    }

    private void d(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.iw.d dVar2) {
        if (ig()) {
            this.no = dVar;
            this.pa = dVar2;
            this.t = this.dq;
            ia();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.dq.2
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.io != null) {
                    dq.this.io.dq(dqVar);
                }
            }
        });
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d() {
        if (this.yy == null) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(l(), this.kk, this.no, i(), this.yy);
        }
        super.d();
        this.io = null;
        this.pa = null;
    }

    public void dq(Activity activity) {
        dq(activity, (TTAdConstant.RitScenes) null, (String) null);
    }

    @Override // com.bytedance.msdk.core.admanager.d
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (activity == null) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "activity can not be null !");
        } else {
            d(activity, ritScenes, str);
            d((com.bytedance.msdk.d.s) null);
        }
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.iw.d dVar2) {
        if (!com.bytedance.msdk.core.dq.d().dq(j(), 10) && dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
        } else if (com.bytedance.msdk.core.dq.d().fw()) {
            d(dVar, dVar2);
        } else if (dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840033, com.bytedance.msdk.api.dq.dq(840033)));
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.iw.d dVar = this.pa;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.iw.dq dqVar) {
        this.io = dqVar;
    }

    @Override // com.bytedance.msdk.core.admanager.d, com.bytedance.msdk.core.mn.p
    public void dq(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (sVar != null) {
            if (sVar.cv() == 1) {
                this.t = this.f798d;
            } else if (sVar.cv() == 2) {
                this.t = this.dq;
            }
        }
        super.dq(sVar, activity, ritScenes, str);
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
        com.bytedance.msdk.api.p.dq.iw.d dVar = this.pa;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
        com.bytedance.msdk.api.p.dq.iw.d dVar = this.pa;
        if (dVar != null) {
            dVar.d();
        }
    }
}
