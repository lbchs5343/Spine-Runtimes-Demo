package com.bytedance.msdk.ox.p;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.bytedance.msdk.core.admanager.reward.dq;
import com.bytedance.msdk.ia.fw;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.r;
import com.bytedance.msdk.ox.p.o;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.dub;
import g.tn;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ig extends o implements com.bytedance.msdk.dq.d.p {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.ia.d f1194d;
    com.bytedance.msdk.api.p.dq.ia.dq dq;
    private com.bytedance.msdk.api.p.dq.ia.dq gh;
    private com.bytedance.msdk.core.admanager.reward.dq i;
    private com.bytedance.msdk.api.p.dq.ia.dq jy;
    private boolean k;
    private com.bytedance.msdk.core.admanager.reward.rewardagain.ox le;
    private com.bytedance.msdk.core.admanager.reward.dq r;
    private final com.bytedance.msdk.dq.d.d wp;

    /* renamed from: com.bytedance.msdk.ox.p.ig$2, reason: invalid class name */
    public class AnonymousClass2 implements com.bytedance.msdk.api.p.dq.ia.dq {
        public AnonymousClass2() {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x012c  */
        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void E_() {
            String str;
            com.bytedance.msdk.d.s sVar;
            long j;
            com.bytedance.msdk.d.s sVar2;
            ig.this.k = true;
            String str2 = null;
            if (fw.dq() && (sVar2 = ig.this.p) != null && MediationConstant.ADN_PANGLE.equals(sVar2.m())) {
                if (!dub.b()) {
                    ig.this.dq(true);
                    com.bytedance.msdk.api.dq dqVar = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, dqVar, 1, 1, (String) null, 0L, m);
                    ig.this.ox(dqVar);
                    return;
                }
                if (fw.d()) {
                    str = tn.m();
                    if (ig.this.gh != null) {
                        ig.this.gh.E_();
                    }
                    if (ig.this.i.dq()) {
                        ig.this.i.dq(new dq.d() { // from class: com.bytedance.msdk.ox.p.ig.2.1
                            @Override // com.bytedance.msdk.core.admanager.reward.dq.d
                            public void dq(final com.bytedance.msdk.api.ox.dq dqVar2) {
                                com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.ig.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (ig.this.gh != null) {
                                            ig.this.gh.dq(dqVar2);
                                            ig.this.dq(dqVar2, 1);
                                        }
                                    }
                                });
                            }
                        });
                        com.bytedance.msdk.core.admanager.reward.dq dqVar2 = ig.this.i;
                        ig igVar2 = ig.this;
                        dqVar2.dq(igVar2.iw, igVar2.p);
                    }
                    com.bytedance.msdk.core.kk.mp.dq().mn(ig.this.s);
                    if (ig.this.p != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(com.bytedance.msdk.dq.s.s.dq(ig.this.s, "show_listen"));
                        sb.append("adSlotId：");
                        tn.a(ig.this.p, sb, "，广告类型：");
                        sb.append(com.bytedance.msdk.d.dq.dq(ig.this.p.hf()));
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                        com.bytedance.msdk.core.kk.no dq = com.bytedance.msdk.core.kk.no.dq();
                        ig igVar3 = ig.this;
                        dq.d(igVar3.s, igVar3.p.b());
                    }
                    sVar = ig.this.p;
                    if (sVar != null) {
                        String wi = sVar.wi();
                        ig igVar4 = ig.this;
                        com.bytedance.msdk.core.ox.ox.dq(wi, igVar4.s, igVar4.p.b());
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    if (r.dq(ig.this.p)) {
                        j = -1;
                    } else {
                        str2 = tn.i();
                        j = System.currentTimeMillis() - currentTimeMillis;
                    }
                    String str3 = str2;
                    long j2 = j;
                    ig igVar5 = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar5.p, igVar5.iw, 1, str3, j2, str, false);
                }
            }
            str = null;
            if (ig.this.gh != null) {
            }
            if (ig.this.i.dq()) {
            }
            com.bytedance.msdk.core.kk.mp.dq().mn(ig.this.s);
            if (ig.this.p != null) {
            }
            sVar = ig.this.p;
            if (sVar != null) {
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            if (r.dq(ig.this.p)) {
            }
            String str32 = str2;
            long j22 = j;
            ig igVar52 = ig.this;
            com.bytedance.msdk.s.iw.dq(igVar52.p, igVar52.iw, 1, str32, j22, str, false);
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void c_(com.bytedance.msdk.api.dq dqVar) {
            String str;
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(ig.this.p)) {
                str = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                str = null;
                j = -1;
            }
            String str2 = str;
            long j2 = j;
            ig igVar = ig.this;
            com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, dqVar, 1, 1, str2, j2);
            ig.this.ox(dqVar);
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
            if (!fw.dq()) {
                if (ig.this.i.dq()) {
                    ig.this.i.p();
                    return;
                } else {
                    if (ig.this.gh != null) {
                        com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = ig.this.gh;
                        ig igVar = ig.this;
                        dqVar2.dq(ig.dq(igVar.iw, dqVar, igVar.p));
                        ig.this.dq((com.bytedance.msdk.api.ox.dq) null, 1);
                        return;
                    }
                    return;
                }
            }
            com.bytedance.msdk.d.s sVar = ig.this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!dub.b()) {
                    String m = tn.m();
                    ig igVar2 = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar2.p, igVar2.iw, 4, 1, 1, m);
                    return;
                } else {
                    String m2 = fw.p() ? tn.m() : null;
                    ig igVar3 = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar3.p, igVar3.iw, 4, 0, 1, m2);
                }
            }
            if (ig.this.wp()) {
                return;
            }
            if (ig.this.i.dq()) {
                ig.this.i.p();
            } else if (ig.this.gh != null) {
                com.bytedance.msdk.api.p.dq.ia.dq dqVar3 = ig.this.gh;
                ig igVar4 = ig.this;
                dqVar3.dq(ig.dq(igVar4.iw, dqVar, igVar4.p));
                ig.this.dq((com.bytedance.msdk.api.ox.dq) null, 1);
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void iw() {
            if (!fw.dq()) {
                if (ig.this.i.dq()) {
                    ig.this.i.d();
                }
                if (ig.this.gh != null) {
                    ig.this.gh.iw();
                    return;
                }
                return;
            }
            com.bytedance.msdk.d.s sVar = ig.this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!dub.b()) {
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 3, 1, 1, m);
                    return;
                }
                ig igVar2 = ig.this;
                com.bytedance.msdk.s.iw.dq(igVar2.p, igVar2.iw, 3, 0, 1, (String) null);
            }
            if (ig.this.wp()) {
                return;
            }
            if (ig.this.i.dq()) {
                ig.this.i.d();
            }
            if (ig.this.gh != null) {
                ig.this.gh.iw();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void s_() {
            String str;
            long j;
            String str2;
            String str3 = null;
            if (fw.dq()) {
                com.bytedance.msdk.d.s sVar = ig.this.p;
                if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                    if (!dub.b()) {
                        String m = tn.m();
                        ig igVar = ig.this;
                        com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 5, 1, 1, m);
                        return;
                    } else if (fw.ox()) {
                        str2 = tn.m();
                        if (!ig.this.wp() && ig.this.gh != null) {
                            ig.this.gh.s_();
                        }
                        str = str2;
                    }
                }
                str2 = null;
                if (!ig.this.wp()) {
                    ig.this.gh.s_();
                }
                str = str2;
            } else {
                if (ig.this.gh != null) {
                    ig.this.gh.s_();
                }
                str = null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(ig.this.p)) {
                str3 = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                j = -1;
            }
            long j2 = j;
            String str4 = str3;
            ig igVar2 = ig.this;
            com.bytedance.msdk.d.s sVar2 = igVar2.p;
            com.bytedance.msdk.s.iw.d(sVar2, igVar2.iw, 1, str4, j2, str, sVar2.uh());
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void t_() {
            if (!fw.dq()) {
                if (ig.this.gh != null) {
                    ig.this.gh.t_();
                    return;
                }
                return;
            }
            com.bytedance.msdk.d.s sVar = ig.this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!dub.b()) {
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 2, 1, 1, m);
                    return;
                }
                ig igVar2 = ig.this;
                com.bytedance.msdk.s.iw.dq(igVar2.p, igVar2.iw, 2, 0, 1, (String) null);
            }
            if (ig.this.wp() || ig.this.gh == null) {
                return;
            }
            ig.this.gh.t_();
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void u_() {
            if (!fw.dq()) {
                if (ig.this.i.dq()) {
                    ig.this.i.s();
                }
                if (ig.this.gh != null) {
                    ig.this.gh.u_();
                    return;
                }
                return;
            }
            com.bytedance.msdk.d.s sVar = ig.this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!dub.b()) {
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 1, 1, 1, m);
                    return;
                }
                ig igVar2 = ig.this;
                com.bytedance.msdk.s.iw.dq(igVar2.p, igVar2.iw, 1, 0, 1, (String) null);
            }
            if (ig.this.wp()) {
                return;
            }
            if (ig.this.i.dq()) {
                ig.this.i.s();
            }
            if (ig.this.gh != null) {
                ig.this.gh.u_();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void v_() {
            String str;
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(ig.this.p)) {
                str = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                str = null;
                j = -1;
            }
            String str2 = str;
            long j2 = j;
            ig igVar = ig.this;
            com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, (com.bytedance.msdk.api.dq) null, 2, 1, str2, j2);
            if (ig.this.gh != null) {
                ig.this.gh.v_();
            }
        }
    }

    /* renamed from: com.bytedance.msdk.ox.p.ig$6, reason: invalid class name */
    public class AnonymousClass6 implements com.bytedance.msdk.dq.d.d {

        /* renamed from: d, reason: collision with root package name */
        private volatile boolean f1199d = false;
        private volatile boolean ox = false;
        private final Handler p = new Handler(Looper.getMainLooper());

        public AnonymousClass6() {
        }

        private void ia() {
            this.p.postDelayed(new Runnable() { // from class: com.bytedance.msdk.ox.p.ig.6.2
                @Override // java.lang.Runnable
                public void run() {
                    if (AnonymousClass6.this.ox || AnonymousClass6.this.f1199d) {
                        AnonymousClass6.this.mn();
                        return;
                    }
                    ig.this.dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.ox.p.ig.6.2.1
                        @Override // com.bytedance.msdk.api.ox.dq
                        public float d() {
                            return ig.this.iw != null ? r0.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public boolean dq() {
                            return true;
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public String ox() {
                            com.bytedance.msdk.api.dq.d dVar = ig.this.iw;
                            return dVar != null ? dVar.bl() : "";
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public Map<String, Object> p() {
                            return new HashMap();
                        }
                    });
                    AnonymousClass6.this.mn();
                }
            }, com.bytedance.msdk.mn.dq.dq.jy().ia());
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x010d  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0138  */
        @Override // com.bytedance.msdk.api.p.dq.p.dq
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void D_() {
            String str;
            com.bytedance.msdk.d.s sVar;
            long j;
            com.bytedance.msdk.d.s sVar2;
            ia();
            String str2 = null;
            if (fw.dq() && (sVar2 = ig.this.p) != null && MediationConstant.ADN_PANGLE.equals(sVar2.m())) {
                if (!tn.n()) {
                    ig.this.dq(true);
                    com.bytedance.msdk.api.dq dqVar = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, dqVar, 1, 0, (String) null, 0L, m);
                    ig.this.p(dqVar);
                    return;
                }
                if (fw.s()) {
                    str = tn.m();
                    if (ig.this.jy != null) {
                        ig.this.jy.E_();
                    }
                    if (ig.this.r.dq()) {
                        ig.this.r.dq(new dq.d() { // from class: com.bytedance.msdk.ox.p.ig.6.1
                            @Override // com.bytedance.msdk.core.admanager.reward.dq.d
                            public void dq(final com.bytedance.msdk.api.ox.dq dqVar2) {
                                com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.ig.6.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (ig.this.jy != null) {
                                            ig.this.jy.dq(dqVar2);
                                            ig.this.dq(dqVar2, 0);
                                        }
                                    }
                                });
                            }
                        });
                        com.bytedance.msdk.core.admanager.reward.dq dqVar2 = ig.this.r;
                        ig igVar2 = ig.this;
                        dqVar2.dq(igVar2.iw, igVar2.p);
                    }
                    com.bytedance.msdk.core.kk.mp.dq().mn(ig.this.s);
                    if (ig.this.p != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(com.bytedance.msdk.dq.s.s.dq(ig.this.s, "show_listen"));
                        sb.append("adSlotId：");
                        tn.a(ig.this.p, sb, "，广告类型：");
                        sb.append(com.bytedance.msdk.d.dq.dq(ig.this.p.hf()));
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                        com.bytedance.msdk.core.kk.no dq = com.bytedance.msdk.core.kk.no.dq();
                        ig igVar3 = ig.this;
                        dq.d(igVar3.s, igVar3.p.b());
                    }
                    ig igVar4 = ig.this;
                    igVar4.dq(igVar4.ox);
                    ig igVar5 = ig.this;
                    igVar5.ox(igVar5.p);
                    sVar = ig.this.p;
                    if (sVar != null) {
                        String wi = sVar.wi();
                        ig igVar6 = ig.this;
                        com.bytedance.msdk.core.ox.ox.dq(wi, igVar6.s, igVar6.p.b());
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    if (r.dq(ig.this.p)) {
                        j = -1;
                    } else {
                        str2 = tn.i();
                        j = System.currentTimeMillis() - currentTimeMillis;
                    }
                    long j2 = j;
                    String str3 = str2;
                    ig igVar7 = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar7.p, igVar7.iw, 0, str3, j2, str, false);
                    com.bytedance.msdk.core.d.dq.mn(ig.this.s);
                    com.bytedance.msdk.core.d.dq.ox(ig.this.s);
                    com.bytedance.msdk.core.o.p.dq(1, ig.this.iw.k(), ig.this.p.qz(), ig.this.p.dk());
                    ig igVar8 = ig.this;
                    com.bytedance.msdk.core.mn.mn.dq(igVar8.s, igVar8.p);
                }
            }
            str = null;
            if (ig.this.jy != null) {
            }
            if (ig.this.r.dq()) {
            }
            com.bytedance.msdk.core.kk.mp.dq().mn(ig.this.s);
            if (ig.this.p != null) {
            }
            ig igVar42 = ig.this;
            igVar42.dq(igVar42.ox);
            ig igVar52 = ig.this;
            igVar52.ox(igVar52.p);
            sVar = ig.this.p;
            if (sVar != null) {
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            if (r.dq(ig.this.p)) {
            }
            long j22 = j;
            String str32 = str2;
            ig igVar72 = ig.this;
            com.bytedance.msdk.s.iw.dq(igVar72.p, igVar72.iw, 0, str32, j22, str, false);
            com.bytedance.msdk.core.d.dq.mn(ig.this.s);
            com.bytedance.msdk.core.d.dq.ox(ig.this.s);
            com.bytedance.msdk.core.o.p.dq(1, ig.this.iw.k(), ig.this.p.qz(), ig.this.p.dk());
            ig igVar82 = ig.this;
            com.bytedance.msdk.core.mn.mn.dq(igVar82.s, igVar82.p);
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void b_(com.bytedance.msdk.api.dq dqVar) {
            String str;
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(ig.this.p)) {
                str = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                str = null;
                j = -1;
            }
            String str2 = str;
            long j2 = j;
            ig igVar = ig.this;
            com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, dqVar, 1, 0, str2, j2);
            ig.this.p(dqVar);
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void iw() {
            mn();
            this.f1199d = true;
            if (!fw.dq()) {
                ig.this.e();
                if (ig.this.r.dq()) {
                    ig.this.r.d();
                }
                if (ig.this.jy != null) {
                    ig.this.jy.iw();
                    return;
                }
                return;
            }
            com.bytedance.msdk.d.s sVar = ig.this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!tn.n()) {
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 3, 1, 0, m);
                    return;
                }
                ig igVar2 = ig.this;
                com.bytedance.msdk.s.iw.dq(igVar2.p, igVar2.iw, 3, 0, 0, (String) null);
            }
            if (ig.this.wp()) {
                return;
            }
            ig.this.e();
            if (ig.this.r.dq()) {
                ig.this.r.d();
            }
            if (ig.this.jy != null) {
                ig.this.jy.iw();
            }
        }

        public void mn() {
            this.p.removeCallbacksAndMessages(null);
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void o_() {
            String str;
            long j;
            String str2;
            String str3 = null;
            if (fw.dq()) {
                com.bytedance.msdk.d.s sVar = ig.this.p;
                if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                    if (!tn.n()) {
                        String m = tn.m();
                        ig igVar = ig.this;
                        com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 5, 1, 0, m);
                        return;
                    } else if (fw.iw()) {
                        str2 = tn.m();
                        if (!ig.this.wp() && ig.this.jy != null) {
                            ig.this.jy.s_();
                        }
                        str = str2;
                    }
                }
                str2 = null;
                if (!ig.this.wp()) {
                    ig.this.jy.s_();
                }
                str = str2;
            } else {
                if (ig.this.jy != null) {
                    ig.this.jy.s_();
                }
                str = null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(ig.this.p)) {
                str3 = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                j = -1;
            }
            long j2 = j;
            String str4 = str3;
            com.bytedance.msdk.core.d.dq.s(ig.this.s);
            ig igVar2 = ig.this;
            com.bytedance.msdk.d.s sVar2 = igVar2.p;
            com.bytedance.msdk.s.iw.d(sVar2, igVar2.iw, 0, str4, j2, str, sVar2.by());
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void p_() {
            mn();
            this.ox = true;
            if (!fw.dq()) {
                ig.this.e();
                if (ig.this.ia() || ig.this.jy == null) {
                    return;
                }
                ig.this.jy.t_();
                return;
            }
            com.bytedance.msdk.d.s sVar = ig.this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!tn.n()) {
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 2, 1, 0, m);
                    return;
                }
                ig igVar2 = ig.this;
                com.bytedance.msdk.s.iw.dq(igVar2.p, igVar2.iw, 2, 0, 0, (String) null);
            }
            if (ig.this.wp()) {
                return;
            }
            ig.this.e();
            if (ig.this.ia() || ig.this.jy == null) {
                return;
            }
            ig.this.jy.t_();
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void q_() {
            if (!fw.dq()) {
                ig.this.e();
                if (ig.this.r.dq()) {
                    ig.this.r.s();
                }
                if (ig.this.jy != null) {
                    ig.this.jy.u_();
                    return;
                }
                return;
            }
            com.bytedance.msdk.d.s sVar = ig.this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!tn.n()) {
                    String m = tn.m();
                    ig igVar = ig.this;
                    com.bytedance.msdk.s.iw.dq(igVar.p, igVar.iw, 1, 1, 0, m);
                    return;
                }
                ig igVar2 = ig.this;
                com.bytedance.msdk.s.iw.dq(igVar2.p, igVar2.iw, 1, 0, 0, (String) null);
            }
            if (ig.this.wp()) {
                return;
            }
            ig.this.e();
            if (ig.this.r.dq()) {
                ig.this.r.s();
            }
            if (ig.this.jy != null) {
                ig.this.jy.u_();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void r_() {
            ig.this.v_();
        }
    }

    public ig(Context context) {
        super(context);
        this.dq = new AnonymousClass2();
        this.wp = new AnonymousClass6();
    }

    public static com.bytedance.msdk.api.ox.dq dq(final com.bytedance.msdk.api.dq.d dVar, final com.bytedance.msdk.api.ox.dq dqVar, final com.bytedance.msdk.d.s sVar) {
        if (dqVar == null) {
            return null;
        }
        return new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.ox.p.ig.4
            @Override // com.bytedance.msdk.api.ox.dq
            public float d() {
                return com.bytedance.msdk.api.ox.dq.this.d();
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public boolean dq() {
                return com.bytedance.msdk.api.ox.dq.this.dq();
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public String ox() {
                return com.bytedance.msdk.api.ox.dq.this.ox();
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public Map<String, Object> p() {
                Map<String, Object> p = com.bytedance.msdk.api.ox.dq.this.p();
                HashMap hashMap = (p == null || p.size() <= 0) ? new HashMap() : new HashMap(p);
                com.bytedance.msdk.api.ox dq = jy.dq(dVar, sVar, true);
                hashMap.put(MediationConstant.KEY_ADN_NAME, dq != null ? dq.ig() : "");
                hashMap.put(MediationConstant.KEY_ECPM, dq != null ? dq.mp() : "");
                return hashMap;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.msdk.api.ox.dq dqVar, int i) {
        String str;
        long j;
        String str2;
        int i2;
        int i3;
        Map<String, Object> p;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        String str3 = str;
        long j2 = j;
        if (dqVar == null || (p = dqVar.p()) == null) {
            str2 = "";
            i2 = 0;
            i3 = 0;
        } else {
            Integer num = (Integer) p.get(MediationConstant.KEY_REASON);
            int intValue = num != null ? num.intValue() : 0;
            Integer num2 = (Integer) p.get(MediationConstant.KEY_ERROR_CODE);
            int intValue2 = num2 != null ? num2.intValue() : 0;
            str2 = (String) p.get(MediationConstant.KEY_ERROR_MSG);
            i3 = intValue2;
            i2 = intValue;
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, i, str3, j2, i2, i3, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ia() {
        com.bytedance.msdk.api.dq.d dVar = this.iw;
        if (dVar == null || dVar.ia() == 1) {
            dub.k(new StringBuilder("--==--ra: 激励再得，一次链路只展示一次激励再得: "), this.s, "TTMediationSDK");
            return false;
        }
        com.bytedance.msdk.core.admanager.reward.rewardagain.dq kk = com.bytedance.msdk.core.admanager.reward.rewardagain.ox.kk(this.s);
        if (kk == null) {
            dub.k(new StringBuilder("--==--ra: 激励再得开关未开启: "), this.s, "TTMediationSDK");
            return false;
        }
        if (this.k) {
            dub.k(new StringBuilder("--==--ra: 激励再得，adn已经触发了再看一个: "), this.s, "TTMediationSDK");
            return false;
        }
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.le;
        if (oxVar != null) {
            int dq = oxVar.dq(this.iw, kk, this.p);
            String gx = this.ox.ig() != null ? this.ox.ig().gx() : null;
            com.bytedance.msdk.s.iw.dq(this.iw, gx, dq, com.bytedance.msdk.core.s.d.p.dq().ox(this.s, this.iw.s()) ? this.fw ? 4 : 2 : 1);
            if (dq == 0) {
                this.le.dq(kk, gx, this.p);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.ig.3
            @Override // java.lang.Runnable
            public void run() {
                if (ig.this.gh != null) {
                    ig.this.gh.c_(dqVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.ig.5
            @Override // java.lang.Runnable
            public void run() {
                if (ig.this.jy != null) {
                    ig.this.jy.c_(dqVar);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ff  */
    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void E_() {
        String str;
        com.bytedance.msdk.api.p.dq.ia.dq dqVar;
        com.bytedance.msdk.d.s sVar;
        long j;
        com.bytedance.msdk.d.s sVar2;
        String str2 = null;
        if (fw.dq() && (sVar2 = this.p) != null && MediationConstant.ADN_PANGLE.equals(sVar2.m())) {
            if (!dub.b()) {
                dq(true);
                com.bytedance.msdk.api.dq dqVar2 = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, dqVar2, 1, 0, (String) null, 0L, tn.m());
                p(dqVar2);
                return;
            }
            if (fw.d()) {
                str = tn.m();
                dqVar = this.jy;
                if (dqVar != null) {
                    dqVar.E_();
                }
                if (this.r.dq()) {
                    this.r.dq(new dq.d() { // from class: com.bytedance.msdk.ox.p.ig.7
                        @Override // com.bytedance.msdk.core.admanager.reward.dq.d
                        public void dq(final com.bytedance.msdk.api.ox.dq dqVar3) {
                            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.ig.7.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (ig.this.jy != null) {
                                        ig.this.jy.dq(dqVar3);
                                        ig.this.dq(dqVar3, 0);
                                    }
                                }
                            });
                        }
                    });
                    this.r.dq(this.iw, this.p);
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
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 0, str2, j, str, false);
                com.bytedance.msdk.core.d.dq.mn(this.iw.k());
                com.bytedance.msdk.core.d.dq.ox(this.iw.k());
                com.bytedance.msdk.core.o.p.dq(1, this.iw.k(), this.p.qz(), this.p.dk());
                com.bytedance.msdk.core.mn.mn.dq(this.s, this.p);
            }
        }
        str = null;
        dqVar = this.jy;
        if (dqVar != null) {
        }
        if (this.r.dq()) {
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
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, 0, str2, j, str, false);
        com.bytedance.msdk.core.d.dq.mn(this.iw.k());
        com.bytedance.msdk.core.d.dq.ox(this.iw.k());
        com.bytedance.msdk.core.o.p.dq(1, this.iw.k(), this.p.qz(), this.p.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.s, this.p);
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void c_(com.bytedance.msdk.api.dq dqVar) {
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
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, dqVar, 1, 0, str, j);
        p(dqVar);
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ia.d dVar = this.f1194d;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    public void d(com.bytedance.msdk.api.p.dq.ia.dq dqVar) {
        this.gh = dqVar;
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.le;
        if (oxVar != null) {
            oxVar.d(dqVar);
        }
    }

    @Override // com.bytedance.msdk.ox.p.o, com.bytedance.msdk.ox.p.d
    public void dq() {
        if (this.p == null) {
            com.bytedance.msdk.core.s.dq.dq dq = com.bytedance.msdk.core.s.dq.dq.dq();
            List<com.bytedance.msdk.d.s> r = this.ox.r();
            String str = this.s;
            com.bytedance.msdk.api.dq.d dVar = this.iw;
            dq.dq(r, str, dVar, dVar.s(), this.p);
        }
        super.dq();
        this.r.ox();
        this.i.ox();
        this.f1194d = null;
        this.jy = null;
    }

    public void dq(Activity activity) {
        dq(activity, (TTAdConstant.RitScenes) null, (String) null);
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.le;
        if (oxVar != null) {
            oxVar.dq(activity, ritScenes, str);
        }
        dq(activity, ritScenes, str, new o.dq() { // from class: com.bytedance.msdk.ox.p.ig.1
            @Override // com.bytedance.msdk.ox.p.o.dq
            public void dq() {
                ig.this.p(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            }
        });
        if (this.jy == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "注意：未设置GMRewardedAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
        dq((com.bytedance.msdk.d.s) null);
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ia.d dVar2) {
        dq(dVar);
        this.r = new com.bytedance.msdk.core.admanager.reward.dq(this.s);
        this.i = new com.bytedance.msdk.core.admanager.reward.dq(this.s);
        this.f1194d = dVar2;
        this.kk = this;
        this.cd = this.dq;
        if (com.bytedance.msdk.core.admanager.reward.rewardagain.ox.kk(this.s) != null) {
            this.le = new com.bytedance.msdk.core.admanager.reward.rewardagain.ox(this.ia.get(), this.iw, this.jy, this.gh);
        }
        no();
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
        if (!fw.dq()) {
            com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.le;
            if (oxVar != null) {
                oxVar.d();
            }
            if (this.r.dq()) {
                this.r.p();
                return;
            }
            com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.jy;
            if (dqVar2 != null) {
                dqVar2.dq(dq(this.iw, dqVar, this.p));
                dq((com.bytedance.msdk.api.ox.dq) null, 0);
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 4, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.p, this.iw, 4, 0, 0, fw.p() ? tn.m() : null);
        }
        if (wp()) {
            return;
        }
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar2 = this.le;
        if (oxVar2 != null) {
            oxVar2.d();
        }
        if (this.r.dq()) {
            this.r.p();
            return;
        }
        com.bytedance.msdk.api.p.dq.ia.dq dqVar3 = this.jy;
        if (dqVar3 != null) {
            dqVar3.dq(dq(this.iw, dqVar, this.p));
            dq((com.bytedance.msdk.api.ox.dq) null, 0);
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.ia.dq dqVar) {
        this.jy = dqVar;
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.le;
        if (oxVar != null) {
            oxVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.ox.p.o
    public void dq(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (sVar != null) {
            if (sVar.cv() == 6 || sVar.cv() != 7) {
                this.kk = this;
            } else {
                this.kk = this.wp;
            }
        }
        super.dq(sVar, activity, ritScenes, str);
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void iw() {
        if (!fw.dq()) {
            e();
            if (this.r.dq()) {
                this.r.d();
            }
            com.bytedance.msdk.api.p.dq.ia.dq dqVar = this.jy;
            if (dqVar != null) {
                dqVar.iw();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 3, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.p, this.iw, 3, 0, 0, (String) null);
        }
        if (wp()) {
            return;
        }
        e();
        if (this.r.dq()) {
            this.r.d();
        }
        com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.jy;
        if (dqVar2 != null) {
            dqVar2.iw();
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
        com.bytedance.msdk.api.p.dq.ia.d dVar = this.f1194d;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void o() {
        com.bytedance.msdk.api.p.dq.ia.d dVar = this.f1194d;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void s_() {
        String str;
        long j;
        String str2;
        com.bytedance.msdk.api.p.dq.ia.dq dqVar;
        com.bytedance.msdk.core.d.dq.s(this.iw.k());
        String str3 = null;
        if (fw.dq()) {
            com.bytedance.msdk.d.s sVar = this.p;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!dub.b()) {
                    com.bytedance.msdk.s.iw.dq(this.p, this.iw, 5, 1, 0, tn.m());
                    return;
                } else if (fw.ox()) {
                    str2 = tn.m();
                    if (!wp() && (dqVar = this.jy) != null) {
                        dqVar.s_();
                    }
                    str = str2;
                }
            }
            str2 = null;
            if (!wp()) {
                dqVar.s_();
            }
            str = str2;
        } else {
            com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.jy;
            if (dqVar2 != null) {
                dqVar2.s_();
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
        com.bytedance.msdk.d.s sVar2 = this.p;
        com.bytedance.msdk.s.iw.d(sVar2, this.iw, 0, str4, j2, str, sVar2.by());
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void t_() {
        com.bytedance.msdk.api.p.dq.ia.dq dqVar;
        com.bytedance.msdk.api.p.dq.ia.dq dqVar2;
        if (!fw.dq()) {
            e();
            if (ia() || (dqVar = this.jy) == null) {
                return;
            }
            dqVar.t_();
            return;
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 2, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.p, this.iw, 2, 0, 0, (String) null);
        }
        if (wp()) {
            return;
        }
        e();
        if (ia() || (dqVar2 = this.jy) == null) {
            return;
        }
        dqVar2.t_();
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void u_() {
        if (!fw.dq()) {
            e();
            if (this.r.dq()) {
                this.r.s();
            }
            com.bytedance.msdk.api.p.dq.ia.dq dqVar = this.jy;
            if (dqVar != null) {
                dqVar.u_();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 1, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.p, this.iw, 1, 0, 0, (String) null);
        }
        if (wp()) {
            return;
        }
        e();
        if (this.r.dq()) {
            this.r.s();
        }
        com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.jy;
        if (dqVar2 != null) {
            dqVar2.u_();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void v_() {
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
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, (com.bytedance.msdk.api.dq) null, 2, 0, str, j);
        com.bytedance.msdk.api.p.dq.ia.dq dqVar = this.jy;
        if (dqVar != null) {
            dqVar.v_();
        }
    }
}
