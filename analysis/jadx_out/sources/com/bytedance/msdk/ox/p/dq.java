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
public class dq extends p {

    /* renamed from: d, reason: collision with root package name */
    com.bytedance.msdk.dq.d.ox f1190d;
    com.bytedance.msdk.dq.d.d dq;
    private com.bytedance.msdk.api.p.dq.iw.d gh;
    private com.bytedance.msdk.api.p.dq.iw.dq r;

    public dq(Context context) {
        super(context);
        this.dq = new com.bytedance.msdk.dq.d.d() { // from class: com.bytedance.msdk.ox.p.dq.3
            /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
            /* JADX WARN: Removed duplicated region for block: B:20:0x008c  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x00e9  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x0114  */
            @Override // com.bytedance.msdk.api.p.dq.p.dq
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void D_() {
                String str;
                com.bytedance.msdk.d.s sVar;
                long j;
                com.bytedance.msdk.d.s sVar2;
                dq.this.ia();
                String str2 = null;
                if (fw.dq() && (sVar2 = dq.this.p) != null && MediationConstant.ADN_PANGLE.equals(sVar2.m())) {
                    if (!tn.n()) {
                        dq.this.dq(true);
                        com.bytedance.msdk.api.dq dqVar = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                        String m = tn.m();
                        dq dqVar2 = dq.this;
                        com.bytedance.msdk.s.iw.dq(dqVar2.p, dqVar2.iw, dqVar, 1, dqVar2.mn() ? 1 : 0, (String) null, 0L, m);
                        dq.this.dq(dqVar);
                        return;
                    }
                    if (fw.s()) {
                        str = tn.m();
                        if (dq.this.r != null) {
                            dq.this.r.dq();
                        }
                        com.bytedance.msdk.core.kk.mp.dq().mn(dq.this.s);
                        if (dq.this.p != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(com.bytedance.msdk.dq.s.s.dq(dq.this.s, "show_listen"));
                            sb.append("adSlotId：");
                            tn.a(dq.this.p, sb, "，广告类型：");
                            sb.append(com.bytedance.msdk.d.dq.dq(dq.this.p.hf()));
                            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                            com.bytedance.msdk.core.kk.no dq = com.bytedance.msdk.core.kk.no.dq();
                            dq dqVar3 = dq.this;
                            dq.d(dqVar3.s, dqVar3.p.b());
                        }
                        dq dqVar4 = dq.this;
                        dqVar4.dq(dqVar4.ox);
                        dq dqVar5 = dq.this;
                        dqVar5.ox(dqVar5.p);
                        sVar = dq.this.p;
                        if (sVar != null) {
                            String wi = sVar.wi();
                            dq dqVar6 = dq.this;
                            com.bytedance.msdk.core.ox.ox.dq(wi, dqVar6.s, dqVar6.p.b());
                        }
                        long currentTimeMillis = System.currentTimeMillis();
                        if (r.dq(dq.this.p)) {
                            j = -1;
                        } else {
                            str2 = tn.i();
                            j = System.currentTimeMillis() - currentTimeMillis;
                        }
                        long j2 = j;
                        String str3 = str2;
                        dq dqVar7 = dq.this;
                        com.bytedance.msdk.s.iw.dq(dqVar7.p, dqVar7.iw, dqVar7.mn() ? 1 : 0, str3, j2, str, false);
                        com.bytedance.msdk.core.d.dq.mn(dq.this.s);
                        com.bytedance.msdk.core.d.dq.ox(dq.this.s);
                        com.bytedance.msdk.core.o.p.dq(1, dq.this.iw.k(), dq.this.p.qz(), dq.this.p.dk());
                        dq dqVar8 = dq.this;
                        com.bytedance.msdk.core.mn.mn.dq(dqVar8.s, dqVar8.p);
                    }
                }
                str = null;
                if (dq.this.r != null) {
                }
                com.bytedance.msdk.core.kk.mp.dq().mn(dq.this.s);
                if (dq.this.p != null) {
                }
                dq dqVar42 = dq.this;
                dqVar42.dq(dqVar42.ox);
                dq dqVar52 = dq.this;
                dqVar52.ox(dqVar52.p);
                sVar = dq.this.p;
                if (sVar != null) {
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                if (r.dq(dq.this.p)) {
                }
                long j22 = j;
                String str32 = str2;
                dq dqVar72 = dq.this;
                com.bytedance.msdk.s.iw.dq(dqVar72.p, dqVar72.iw, dqVar72.mn() ? 1 : 0, str32, j22, str, false);
                com.bytedance.msdk.core.d.dq.mn(dq.this.s);
                com.bytedance.msdk.core.d.dq.ox(dq.this.s);
                com.bytedance.msdk.core.o.p.dq(1, dq.this.iw.k(), dq.this.p.qz(), dq.this.p.dk());
                dq dqVar82 = dq.this;
                com.bytedance.msdk.core.mn.mn.dq(dqVar82.s, dqVar82.p);
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void b_(com.bytedance.msdk.api.dq dqVar) {
                String str;
                long j;
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(dq.this.p)) {
                    str = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str = null;
                    j = -1;
                }
                String str2 = str;
                long j2 = j;
                dq dqVar2 = dq.this;
                com.bytedance.msdk.s.iw.dq(dqVar2.p, dqVar2.iw, dqVar, 1, dqVar2.mn() ? 1 : 0, str2, j2);
                dq.this.dq(dqVar);
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                if (dq.this.r != null) {
                    com.bytedance.msdk.api.p.dq.iw.dq dqVar2 = dq.this.r;
                    dq dqVar3 = dq.this;
                    dqVar2.dq(com.bytedance.msdk.core.admanager.o.dq(dqVar3.iw, dqVar, dqVar3.p));
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void iw() {
                if (!fw.dq()) {
                    dq.this.e();
                    if (dq.this.r != null) {
                        dq.this.r.iw();
                        return;
                    }
                    return;
                }
                com.bytedance.msdk.d.s sVar = dq.this.p;
                if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                    if (!tn.n()) {
                        String m = tn.m();
                        dq dqVar = dq.this;
                        com.bytedance.msdk.s.iw.dq(dqVar.p, dqVar.iw, 3, 1, dqVar.mn() ? 1 : 0, m);
                        return;
                    }
                    dq dqVar2 = dq.this;
                    com.bytedance.msdk.s.iw.dq(dqVar2.p, dqVar2.iw, 3, 0, dqVar2.mn() ? 1 : 0, (String) null);
                }
                if (dq.this.wp()) {
                    return;
                }
                dq.this.e();
                if (dq.this.r != null) {
                    dq.this.r.iw();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void o_() {
                String str;
                long j;
                String str2;
                dq.this.k();
                String str3 = null;
                if (fw.dq()) {
                    com.bytedance.msdk.d.s sVar = dq.this.p;
                    if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                        if (!tn.n()) {
                            String m = tn.m();
                            dq dqVar = dq.this;
                            com.bytedance.msdk.s.iw.dq(dqVar.p, dqVar.iw, 5, 1, dqVar.mn() ? 1 : 0, m);
                            return;
                        } else if (fw.iw()) {
                            str2 = tn.m();
                            if (!dq.this.wp() && dq.this.r != null) {
                                dq.this.r.d();
                            }
                            str = str2;
                        }
                    }
                    str2 = null;
                    if (!dq.this.wp()) {
                        dq.this.r.d();
                    }
                    str = str2;
                } else {
                    if (dq.this.r != null) {
                        dq.this.r.d();
                    }
                    str = null;
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(dq.this.p)) {
                    str3 = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    j = -1;
                }
                long j2 = j;
                String str4 = str3;
                com.bytedance.msdk.core.d.dq.s(dq.this.s);
                dq dqVar2 = dq.this;
                com.bytedance.msdk.s.iw.d(dqVar2.p, dqVar2.iw, dqVar2.mn() ? 1 : 0, str4, j2, str, dq.this.p.by());
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void p_() {
                dq.this.le();
                if (dq.this.jy) {
                    if (!fw.dq()) {
                        dq.this.e();
                        if (dq.this.r != null) {
                            dq.this.r.ox();
                            return;
                        }
                        return;
                    }
                    com.bytedance.msdk.d.s sVar = dq.this.p;
                    if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                        if (!tn.n()) {
                            String m = tn.m();
                            dq dqVar = dq.this;
                            com.bytedance.msdk.s.iw.dq(dqVar.p, dqVar.iw, 2, 1, dqVar.mn() ? 1 : 0, m);
                            return;
                        }
                        dq dqVar2 = dq.this;
                        com.bytedance.msdk.s.iw.dq(dqVar2.p, dqVar2.iw, 2, 0, dqVar2.mn() ? 1 : 0, (String) null);
                    }
                    if (dq.this.wp()) {
                        return;
                    }
                    dq.this.e();
                    if (dq.this.r != null) {
                        dq.this.r.ox();
                    }
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void q_() {
                if (!fw.dq()) {
                    dq.this.e();
                    if (dq.this.r != null) {
                        dq.this.r.p();
                        return;
                    }
                    return;
                }
                com.bytedance.msdk.d.s sVar = dq.this.p;
                if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                    if (!tn.n()) {
                        String m = tn.m();
                        dq dqVar = dq.this;
                        com.bytedance.msdk.s.iw.dq(dqVar.p, dqVar.iw, 1, 1, dqVar.mn() ? 1 : 0, m);
                        return;
                    }
                    dq dqVar2 = dq.this;
                    com.bytedance.msdk.s.iw.dq(dqVar2.p, dqVar2.iw, 1, 0, dqVar2.mn() ? 1 : 0, (String) null);
                }
                if (dq.this.wp()) {
                    return;
                }
                dq.this.e();
                if (dq.this.r != null) {
                    dq.this.r.p();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void r_() {
                String str;
                long j;
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(dq.this.p)) {
                    str = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str = null;
                    j = -1;
                }
                String str2 = str;
                long j2 = j;
                dq dqVar = dq.this;
                com.bytedance.msdk.s.iw.dq(dqVar.p, dqVar.iw, (com.bytedance.msdk.api.dq) null, 2, dqVar.mn() ? 1 : 0, str2, j2);
                if (dq.this.r != null) {
                    dq.this.r.s();
                }
            }
        };
        this.f1190d = new com.bytedance.msdk.dq.d.ox() { // from class: com.bytedance.msdk.ox.p.dq.4
            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void d() {
                String str;
                long j;
                dq.this.k();
                if (dq.this.r != null) {
                    dq.this.r.d();
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(dq.this.p)) {
                    str = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str = null;
                    j = -1;
                }
                String str2 = str;
                long j2 = j;
                dq dqVar = dq.this;
                com.bytedance.msdk.d.s sVar = dqVar.p;
                com.bytedance.msdk.api.dq.d dVar = dqVar.iw;
                boolean mn = dqVar.mn();
                com.bytedance.msdk.s.iw.d(sVar, dVar, mn ? 1 : 0, str2, j2, dq.this.p.by());
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void dq() {
                String str;
                long j;
                dq.this.ia();
                if (dq.this.r != null) {
                    dq.this.r.dq();
                }
                com.bytedance.msdk.core.kk.mp.dq().mn(dq.this.s);
                if (dq.this.p != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.bytedance.msdk.dq.s.s.dq(dq.this.s, "show_listen"));
                    sb.append("adSlotId：");
                    tn.a(dq.this.p, sb, "，广告类型：");
                    sb.append(com.bytedance.msdk.d.dq.dq(dq.this.p.hf()));
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                    com.bytedance.msdk.core.kk.no dq = com.bytedance.msdk.core.kk.no.dq();
                    dq dqVar = dq.this;
                    dq.d(dqVar.s, dqVar.p.b());
                }
                dq dqVar2 = dq.this;
                dqVar2.dq(dqVar2.ox);
                dq dqVar3 = dq.this;
                dqVar3.ox(dqVar3.p);
                com.bytedance.msdk.d.s sVar = dq.this.p;
                if (sVar != null) {
                    String wi = sVar.wi();
                    dq dqVar4 = dq.this;
                    com.bytedance.msdk.core.ox.ox.dq(wi, dqVar4.s, dqVar4.p.b());
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(dq.this.p)) {
                    str = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str = null;
                    j = -1;
                }
                String str2 = str;
                long j2 = j;
                dq dqVar5 = dq.this;
                com.bytedance.msdk.s.iw.dq(dqVar5.p, dqVar5.iw, dqVar5.mn() ? 1 : 0, str2, j2, false);
                dq dqVar6 = dq.this;
                com.bytedance.msdk.core.mn.mn.dq(dqVar6.s, dqVar6.p);
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                String str;
                long j;
                long currentTimeMillis = System.currentTimeMillis();
                if (r.dq(dq.this.p)) {
                    str = tn.i();
                    j = System.currentTimeMillis() - currentTimeMillis;
                } else {
                    str = null;
                    j = -1;
                }
                String str2 = str;
                long j2 = j;
                dq dqVar2 = dq.this;
                com.bytedance.msdk.s.iw.dq(dqVar2.p, dqVar2.iw, dqVar, 1, dqVar2.mn() ? 1 : 0, str2, j2);
                dq.this.dq(dqVar);
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void ox() {
                dq.this.le();
                dq dqVar = dq.this;
                if (dqVar.jy) {
                    dqVar.e();
                    if (dq.this.r != null) {
                        dq.this.r.ox();
                    }
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void p() {
                if (dq.this.r != null) {
                    dq.this.r.mn();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.s.dq
            public void s() {
                if (dq.this.r != null) {
                    dq.this.r.ia();
                }
            }
        };
    }

    private void d(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(activity, ritScenes, str, new o.dq() { // from class: com.bytedance.msdk.ox.p.dq.1
            @Override // com.bytedance.msdk.ox.p.o.dq
            public void dq() {
                dq.this.dq(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.dq.2
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.r != null) {
                    dq.this.r.dq(dqVar);
                }
            }
        });
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.iw.d dVar = this.gh;
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
        this.r = null;
        this.gh = null;
    }

    public void dq(Activity activity) {
        dq(activity, (TTAdConstant.RitScenes) null, (String) null);
    }

    @Override // com.bytedance.msdk.ox.p.p
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (activity == null) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "activity can not be null !");
        } else {
            d(activity, ritScenes, str);
            dq((com.bytedance.msdk.d.s) null);
        }
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.iw.d dVar2) {
        super.d(dVar);
        this.iw = dVar;
        this.gh = dVar2;
        this.kk = this.dq;
        no();
    }

    public void dq(com.bytedance.msdk.api.p.dq.iw.dq dqVar) {
        this.r = dqVar;
    }

    @Override // com.bytedance.msdk.ox.p.p, com.bytedance.msdk.ox.p.o
    public void dq(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (sVar != null) {
            if (sVar.cv() == 1) {
                this.kk = this.f1190d;
            } else if (sVar.cv() == 2) {
                this.kk = this.dq;
            }
        }
        super.dq(sVar, activity, ritScenes, str);
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
        com.bytedance.msdk.api.p.dq.iw.d dVar = this.gh;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void o() {
        com.bytedance.msdk.api.p.dq.iw.d dVar = this.gh;
        if (dVar != null) {
            dVar.d();
        }
    }
}
