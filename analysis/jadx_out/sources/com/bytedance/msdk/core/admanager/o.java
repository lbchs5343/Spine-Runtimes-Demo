package com.bytedance.msdk.core.admanager;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.bytedance.msdk.core.admanager.reward.dq;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.mn.p;
import com.bytedance.msdk.ia.fw;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.dub;
import g.tn;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class o extends com.bytedance.msdk.core.mn.p implements com.bytedance.msdk.dq.d.p {
    private final com.bytedance.msdk.dq.d.d cc;

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.ia.d f811d;
    com.bytedance.msdk.api.p.dq.ia.dq dq;
    private final com.bytedance.msdk.core.admanager.reward.dq io;
    private final com.bytedance.msdk.core.admanager.reward.dq m;
    private com.bytedance.msdk.api.p.dq.ia.dq ox;
    private com.bytedance.msdk.api.p.dq.ia.dq pa;
    private boolean wi;
    private com.bytedance.msdk.core.admanager.reward.rewardagain.ox xv;

    /* renamed from: com.bytedance.msdk.core.admanager.o$1, reason: invalid class name */
    public class AnonymousClass1 implements com.bytedance.msdk.api.p.dq.ia.dq {
        public AnonymousClass1() {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00ca  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x015b  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0167  */
        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void E_() {
            String str;
            long j;
            o.this.wi = true;
            String str2 = null;
            if (fw.dq() && ((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!dub.b()) {
                    o.this.dq(true);
                    com.bytedance.msdk.api.dq dqVar = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, dqVar, 1, 1, (String) null, 0L, tn.m());
                    o.this.iw(dqVar);
                    return;
                }
                if (fw.d()) {
                    str = tn.m();
                    if (o.this.pa != null) {
                        o.this.pa.E_();
                    }
                    if (o.this.m.dq()) {
                        o.this.m.dq(new dq.d() { // from class: com.bytedance.msdk.core.admanager.o.1.1
                            @Override // com.bytedance.msdk.core.admanager.reward.dq.d
                            public void dq(final com.bytedance.msdk.api.ox.dq dqVar2) {
                                com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.o.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (o.this.pa != null) {
                                            o.this.pa.dq(dqVar2);
                                            o.this.dq(dqVar2, 1);
                                        }
                                    }
                                });
                            }
                        });
                        o.this.m.dq(((com.bytedance.msdk.core.mn.ox) o.this).no, ((com.bytedance.msdk.core.mn.s) o.this).yy);
                    }
                    mp.dq().mn(((com.bytedance.msdk.core.mn.ox) o.this).kk);
                    if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(((com.bytedance.msdk.core.mn.ox) o.this).kk, "show_listen") + "adSlotId：" + ((com.bytedance.msdk.core.mn.s) o.this).yy.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(((com.bytedance.msdk.core.mn.s) o.this).yy.hf()));
                        com.bytedance.msdk.core.kk.no.dq().d(((com.bytedance.msdk.core.mn.ox) o.this).kk, ((com.bytedance.msdk.core.mn.s) o.this).yy.b());
                    }
                    if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
                        com.bytedance.msdk.core.ox.ox.dq(((com.bytedance.msdk.core.mn.s) o.this).yy.wi(), ((com.bytedance.msdk.core.mn.ox) o.this).kk, ((com.bytedance.msdk.core.mn.s) o.this).yy.b());
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
                        j = -1;
                    } else {
                        str2 = tn.i();
                        j = System.currentTimeMillis() - currentTimeMillis;
                    }
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 1, str2, j, str, false);
                }
            }
            str = null;
            if (o.this.pa != null) {
            }
            if (o.this.m.dq()) {
            }
            mp.dq().mn(((com.bytedance.msdk.core.mn.ox) o.this).kk);
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
            }
            com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 1, str2, j, str, false);
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void c_(com.bytedance.msdk.api.dq dqVar) {
            String str;
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
                str = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                str = null;
                j = -1;
            }
            com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, dqVar, 1, 1, str, j);
            o.this.iw(dqVar);
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
            if (!fw.dq()) {
                if (o.this.m.dq()) {
                    o.this.m.p();
                    return;
                } else {
                    if (o.this.pa != null) {
                        o.this.pa.dq(o.dq(((com.bytedance.msdk.core.mn.ox) o.this).no, dqVar, ((com.bytedance.msdk.core.mn.s) o.this).yy));
                        o.this.dq((com.bytedance.msdk.api.ox.dq) null, 1);
                        return;
                    }
                    return;
                }
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!dub.b()) {
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 4, 1, 1, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 4, 0, 1, fw.p() ? tn.m() : null);
            }
            if (o.this.no()) {
                return;
            }
            if (o.this.m.dq()) {
                o.this.m.p();
            } else if (o.this.pa != null) {
                o.this.pa.dq(o.dq(((com.bytedance.msdk.core.mn.ox) o.this).no, dqVar, ((com.bytedance.msdk.core.mn.s) o.this).yy));
                o.this.dq((com.bytedance.msdk.api.ox.dq) null, 1);
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void iw() {
            if (!fw.dq()) {
                if (o.this.m.dq()) {
                    o.this.m.d();
                }
                if (o.this.pa != null) {
                    o.this.pa.iw();
                    return;
                }
                return;
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!dub.b()) {
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 3, 1, 1, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 3, 0, 1, (String) null);
            }
            if (o.this.no()) {
                return;
            }
            if (o.this.m.dq()) {
                o.this.m.d();
            }
            if (o.this.pa != null) {
                o.this.pa.iw();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void s_() {
            String str;
            long j;
            String str2;
            String str3 = null;
            if (fw.dq()) {
                if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                    if (!dub.b()) {
                        com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 5, 1, 1, tn.m());
                        return;
                    } else if (fw.ox()) {
                        str2 = tn.m();
                        if (!o.this.no() && o.this.pa != null) {
                            o.this.pa.s_();
                        }
                        str = str2;
                    }
                }
                str2 = null;
                if (!o.this.no()) {
                    o.this.pa.s_();
                }
                str = str2;
            } else {
                if (o.this.pa != null) {
                    o.this.pa.s_();
                }
                str = null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
                str3 = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                j = -1;
            }
            com.bytedance.msdk.s.iw.d(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 1, str3, j, str, ((com.bytedance.msdk.core.mn.s) o.this).yy.uh());
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void t_() {
            if (!fw.dq()) {
                if (o.this.pa != null) {
                    o.this.pa.t_();
                    return;
                }
                return;
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!dub.b()) {
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 2, 1, 1, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 2, 0, 1, (String) null);
            }
            if (o.this.no() || o.this.pa == null) {
                return;
            }
            o.this.pa.t_();
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void u_() {
            if (!fw.dq()) {
                if (o.this.m.dq()) {
                    o.this.m.s();
                }
                if (o.this.pa != null) {
                    o.this.pa.u_();
                    return;
                }
                return;
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!dub.b()) {
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 1, 1, 1, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 1, 0, 1, (String) null);
            }
            if (o.this.no()) {
                return;
            }
            if (o.this.m.dq()) {
                o.this.m.s();
            }
            if (o.this.pa != null) {
                o.this.pa.u_();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.ia.dq
        public void v_() {
            String str;
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
                str = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                str = null;
                j = -1;
            }
            com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, (com.bytedance.msdk.api.dq) null, 2, 1, str, j);
            if (o.this.pa != null) {
                o.this.pa.v_();
            }
        }
    }

    /* renamed from: com.bytedance.msdk.core.admanager.o$7, reason: invalid class name */
    public class AnonymousClass7 implements com.bytedance.msdk.dq.d.d {

        /* renamed from: d, reason: collision with root package name */
        private volatile boolean f817d = false;
        private volatile boolean ox = false;
        private final Handler p = new Handler(Looper.getMainLooper());

        public AnonymousClass7() {
        }

        private void ia() {
            this.p.postDelayed(new Runnable() { // from class: com.bytedance.msdk.core.admanager.o.7.2
                @Override // java.lang.Runnable
                public void run() {
                    if (AnonymousClass7.this.ox || AnonymousClass7.this.f817d) {
                        AnonymousClass7.this.mn();
                        return;
                    }
                    o.this.dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.admanager.o.7.2.1
                        @Override // com.bytedance.msdk.api.ox.dq
                        public float d() {
                            return ((com.bytedance.msdk.core.mn.ox) o.this).no != null ? ((com.bytedance.msdk.core.mn.ox) o.this).no.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public boolean dq() {
                            return true;
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public String ox() {
                            return ((com.bytedance.msdk.core.mn.ox) o.this).no != null ? ((com.bytedance.msdk.core.mn.ox) o.this).no.bl() : "";
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public Map<String, Object> p() {
                            return new HashMap();
                        }
                    });
                    AnonymousClass7.this.mn();
                }
            }, com.bytedance.msdk.mn.dq.dq.jy().ia());
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0167  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0173  */
        @Override // com.bytedance.msdk.api.p.dq.p.dq
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void D_() {
            String str;
            long j;
            ia();
            String str2 = null;
            if (fw.dq() && ((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!tn.n()) {
                    o.this.dq(true);
                    com.bytedance.msdk.api.dq dqVar = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, dqVar, 1, 0, (String) null, 0L, tn.m());
                    o.this.s(dqVar);
                    return;
                }
                if (fw.s()) {
                    str = tn.m();
                    if (o.this.ox != null) {
                        o.this.ox.E_();
                    }
                    if (o.this.io.dq()) {
                        o.this.io.dq(new dq.d() { // from class: com.bytedance.msdk.core.admanager.o.7.1
                            @Override // com.bytedance.msdk.core.admanager.reward.dq.d
                            public void dq(final com.bytedance.msdk.api.ox.dq dqVar2) {
                                com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.o.7.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (o.this.ox != null) {
                                            o.this.ox.dq(dqVar2);
                                            o.this.dq(dqVar2, 0);
                                        }
                                    }
                                });
                            }
                        });
                        o.this.io.dq(((com.bytedance.msdk.core.mn.ox) o.this).no, ((com.bytedance.msdk.core.mn.s) o.this).yy);
                    }
                    mp.dq().mn(((com.bytedance.msdk.core.mn.ox) o.this).kk);
                    if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(((com.bytedance.msdk.core.mn.ox) o.this).kk, "show_listen") + "adSlotId：" + ((com.bytedance.msdk.core.mn.s) o.this).yy.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(((com.bytedance.msdk.core.mn.s) o.this).yy.hf()));
                        com.bytedance.msdk.core.kk.no.dq().d(((com.bytedance.msdk.core.mn.ox) o.this).kk, ((com.bytedance.msdk.core.mn.s) o.this).yy.b());
                    }
                    o.this.jy();
                    o oVar = o.this;
                    oVar.ox(((com.bytedance.msdk.core.mn.s) oVar).yy);
                    if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
                        com.bytedance.msdk.core.ox.ox.dq(((com.bytedance.msdk.core.mn.s) o.this).yy.wi(), ((com.bytedance.msdk.core.mn.ox) o.this).kk, ((com.bytedance.msdk.core.mn.s) o.this).yy.b());
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
                        j = -1;
                    } else {
                        str2 = tn.i();
                        j = System.currentTimeMillis() - currentTimeMillis;
                    }
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 0, str2, j, str, false);
                    com.bytedance.msdk.core.d.dq.mn(((com.bytedance.msdk.core.mn.ox) o.this).kk);
                    com.bytedance.msdk.core.d.dq.ox(((com.bytedance.msdk.core.mn.ox) o.this).kk);
                    com.bytedance.msdk.core.o.p.dq(1, ((com.bytedance.msdk.core.mn.ox) o.this).no.k(), ((com.bytedance.msdk.core.mn.s) o.this).yy.qz(), ((com.bytedance.msdk.core.mn.s) o.this).yy.dk());
                    com.bytedance.msdk.core.mn.mn.dq(((com.bytedance.msdk.core.mn.ox) o.this).kk, ((com.bytedance.msdk.core.mn.s) o.this).yy);
                }
            }
            str = null;
            if (o.this.ox != null) {
            }
            if (o.this.io.dq()) {
            }
            mp.dq().mn(((com.bytedance.msdk.core.mn.ox) o.this).kk);
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
            }
            o.this.jy();
            o oVar2 = o.this;
            oVar2.ox(((com.bytedance.msdk.core.mn.s) oVar2).yy);
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null) {
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
            }
            com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 0, str2, j, str, false);
            com.bytedance.msdk.core.d.dq.mn(((com.bytedance.msdk.core.mn.ox) o.this).kk);
            com.bytedance.msdk.core.d.dq.ox(((com.bytedance.msdk.core.mn.ox) o.this).kk);
            com.bytedance.msdk.core.o.p.dq(1, ((com.bytedance.msdk.core.mn.ox) o.this).no.k(), ((com.bytedance.msdk.core.mn.s) o.this).yy.qz(), ((com.bytedance.msdk.core.mn.s) o.this).yy.dk());
            com.bytedance.msdk.core.mn.mn.dq(((com.bytedance.msdk.core.mn.ox) o.this).kk, ((com.bytedance.msdk.core.mn.s) o.this).yy);
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void b_(com.bytedance.msdk.api.dq dqVar) {
            String str;
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
                str = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                str = null;
                j = -1;
            }
            com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, dqVar, 1, 0, str, j);
            o.this.s(dqVar);
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void iw() {
            mn();
            this.f817d = true;
            if (!fw.dq()) {
                o.this.q();
                if (o.this.io.dq()) {
                    o.this.io.d();
                }
                if (o.this.ox != null) {
                    o.this.ox.iw();
                    return;
                }
                return;
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!tn.n()) {
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 3, 1, 0, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 3, 0, 0, (String) null);
            }
            if (o.this.no()) {
                return;
            }
            o.this.q();
            if (o.this.io.dq()) {
                o.this.io.d();
            }
            if (o.this.ox != null) {
                o.this.ox.iw();
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
                if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                    if (!tn.n()) {
                        com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 5, 1, 0, tn.m());
                        return;
                    } else if (fw.iw()) {
                        str2 = tn.m();
                        if (!o.this.no() && o.this.ox != null) {
                            o.this.ox.s_();
                        }
                        str = str2;
                    }
                }
                str2 = null;
                if (!o.this.no()) {
                    o.this.ox.s_();
                }
                str = str2;
            } else {
                if (o.this.ox != null) {
                    o.this.ox.s_();
                }
                str = null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (r.dq(((com.bytedance.msdk.core.mn.s) o.this).yy)) {
                str3 = tn.i();
                j = System.currentTimeMillis() - currentTimeMillis;
            } else {
                j = -1;
            }
            long j2 = j;
            String str4 = str3;
            com.bytedance.msdk.core.d.dq.s(((com.bytedance.msdk.core.mn.ox) o.this).kk);
            com.bytedance.msdk.s.iw.d(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 0, str4, j2, str, ((com.bytedance.msdk.core.mn.s) o.this).yy.by());
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void p_() {
            mn();
            this.ox = true;
            if (!fw.dq()) {
                o.this.q();
                if (o.this.f() || o.this.ox == null) {
                    return;
                }
                o.this.ox.t_();
                return;
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!tn.n()) {
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 2, 1, 0, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 2, 0, 0, (String) null);
            }
            if (o.this.no()) {
                return;
            }
            o.this.q();
            if (o.this.f() || o.this.ox == null) {
                return;
            }
            o.this.ox.t_();
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void q_() {
            if (!fw.dq()) {
                o.this.q();
                if (o.this.io.dq()) {
                    o.this.io.s();
                }
                if (o.this.ox != null) {
                    o.this.ox.u_();
                    return;
                }
                return;
            }
            if (((com.bytedance.msdk.core.mn.s) o.this).yy != null && MediationConstant.ADN_PANGLE.equals(((com.bytedance.msdk.core.mn.s) o.this).yy.m())) {
                if (!tn.n()) {
                    com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 1, 1, 0, tn.m());
                    return;
                }
                com.bytedance.msdk.s.iw.dq(((com.bytedance.msdk.core.mn.s) o.this).yy, ((com.bytedance.msdk.core.mn.ox) o.this).no, 1, 0, 0, (String) null);
            }
            if (o.this.no()) {
                return;
            }
            o.this.q();
            if (o.this.io.dq()) {
                o.this.io.s();
            }
            if (o.this.ox != null) {
                o.this.ox.u_();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.p.dq
        public void r_() {
            o.this.v_();
        }
    }

    public o(Context context, String str) {
        super(context, str, 7);
        this.io = new com.bytedance.msdk.core.admanager.reward.dq(this.kk);
        this.m = new com.bytedance.msdk.core.admanager.reward.dq(this.kk);
        this.dq = new AnonymousClass1();
        this.cc = new AnonymousClass7();
    }

    public static com.bytedance.msdk.api.ox.dq dq(final com.bytedance.msdk.api.dq.d dVar, final com.bytedance.msdk.api.ox.dq dqVar, final com.bytedance.msdk.d.s sVar) {
        if (dqVar == null) {
            return null;
        }
        return new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.admanager.o.6
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
        if (r.dq(this.yy)) {
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
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, i, str3, j2, i2, i3, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        if (dVar == null || dVar.ia() == 1) {
            dub.k(new StringBuilder("--==--ra: 激励再得，一次链路只展示一次激励再得: "), this.kk, "TTMediationSDK");
            return false;
        }
        com.bytedance.msdk.core.admanager.reward.rewardagain.dq kk = com.bytedance.msdk.core.admanager.reward.rewardagain.ox.kk(this.kk);
        if (kk == null) {
            dub.k(new StringBuilder("--==--ra: 激励再得开关未开启: "), this.kk, "TTMediationSDK");
            return false;
        }
        if (this.wi) {
            dub.k(new StringBuilder("--==--ra: 激励再得，adn已经触发了再看一个: "), this.kk, "TTMediationSDK");
            return false;
        }
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.xv;
        if (oxVar != null) {
            int dq = oxVar.dq(this.no, kk, this.yy);
            com.bytedance.msdk.core.no.d dVar2 = this.mn;
            String gx = dVar2 != null ? dVar2.gx() : null;
            com.bytedance.msdk.s.iw.dq(this.no, gx, dq, com.bytedance.msdk.core.s.d.p.dq().ox(this.kk, i()) ? ((com.bytedance.msdk.core.mn.p) this).er ? 4 : 2 : 1);
            if (dq == 0) {
                this.xv.dq(kk, gx, this.yy);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.o.5
            @Override // java.lang.Runnable
            public void run() {
                if (o.this.pa != null) {
                    o.this.pa.c_(dqVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.o.4
            @Override // java.lang.Runnable
            public void run() {
                if (o.this.ox != null) {
                    o.this.ox.c_(dqVar);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd  */
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
        if (fw.dq() && (sVar2 = this.yy) != null && MediationConstant.ADN_PANGLE.equals(sVar2.m())) {
            if (!dub.b()) {
                dq(true);
                com.bytedance.msdk.api.dq dqVar2 = new com.bytedance.msdk.api.dq(40063, com.bytedance.msdk.api.dq.dq(40063));
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, dqVar2, 1, 0, (String) null, 0L, tn.m());
                s(dqVar2);
                return;
            }
            if (fw.d()) {
                str = tn.m();
                dqVar = this.ox;
                if (dqVar != null) {
                    dqVar.E_();
                }
                if (this.io.dq()) {
                    this.io.dq(new dq.d() { // from class: com.bytedance.msdk.core.admanager.o.3
                        @Override // com.bytedance.msdk.core.admanager.reward.dq.d
                        public void dq(final com.bytedance.msdk.api.ox.dq dqVar3) {
                            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.o.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (o.this.ox != null) {
                                        o.this.ox.dq(dqVar3);
                                        o.this.dq(dqVar3, 0);
                                    }
                                }
                            });
                        }
                    });
                    this.io.dq(this.no, this.yy);
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
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 0, str2, j, str, false);
                com.bytedance.msdk.core.d.dq.mn(this.no.k());
                com.bytedance.msdk.core.d.dq.ox(this.no.k());
                com.bytedance.msdk.core.o.p.dq(1, this.no.k(), this.yy.qz(), this.yy.dk());
                com.bytedance.msdk.core.mn.mn.dq(this.kk, this.yy);
            }
        }
        str = null;
        dqVar = this.ox;
        if (dqVar != null) {
        }
        if (this.io.dq()) {
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
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, 0, str2, j, str, false);
        com.bytedance.msdk.core.d.dq.mn(this.no.k());
        com.bytedance.msdk.core.d.dq.ox(this.no.k());
        com.bytedance.msdk.core.o.p.dq(1, this.no.k(), this.yy.qz(), this.yy.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.kk, this.yy);
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void c_(com.bytedance.msdk.api.dq dqVar) {
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
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, dqVar, 1, 0, str, j);
        s(dqVar);
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d() {
        if (this.yy == null) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(l(), this.kk, this.no, i(), this.yy);
        }
        super.d();
        this.io.ox();
        this.m.ox();
        this.f811d = null;
        this.ox = null;
    }

    public void d(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ia.d dVar2) {
        if (ig()) {
            this.f811d = dVar2;
            if (dVar != null) {
                this.no = new com.bytedance.msdk.api.dq.d(dVar);
            }
            this.t = this;
            this.gx = this.dq;
            if (com.bytedance.msdk.core.admanager.reward.rewardagain.ox.kk(this.kk) != null) {
                this.xv = new com.bytedance.msdk.core.admanager.reward.rewardagain.ox(this.l.get(), this.no, this.ox, this.pa);
            }
            ia();
        }
    }

    public void d(com.bytedance.msdk.api.p.dq.ia.dq dqVar) {
        this.pa = dqVar;
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.xv;
        if (oxVar != null) {
            oxVar.d(dqVar);
        }
    }

    public void dq(Activity activity) {
        dq(activity, (TTAdConstant.RitScenes) null, (String) null);
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.xv;
        if (oxVar != null) {
            oxVar.dq(activity, ritScenes, str);
        }
        super.dq(activity, ritScenes, str, new p.dq() { // from class: com.bytedance.msdk.core.admanager.o.2
            @Override // com.bytedance.msdk.core.mn.p.dq
            public void dq() {
                o.this.s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            }
        });
        if (this.ox == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "注意：未设置GMRewardedAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
        d((com.bytedance.msdk.d.s) null);
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ia.d dVar2) {
        if (!com.bytedance.msdk.core.dq.d().dq(j(), 7) && dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
        } else if (com.bytedance.msdk.core.dq.d().r()) {
            d(dVar, dVar2);
        } else if (dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840036, com.bytedance.msdk.api.dq.dq(840036)));
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ia.d dVar = this.f811d;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
        if (!fw.dq()) {
            com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.xv;
            if (oxVar != null) {
                oxVar.d();
            }
            if (this.io.dq()) {
                this.io.p();
                return;
            }
            com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.ox;
            if (dqVar2 != null) {
                dqVar2.dq(dq(this.no, dqVar, this.yy));
                dq((com.bytedance.msdk.api.ox.dq) null, 0);
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 4, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.yy, this.no, 4, 0, 0, fw.p() ? tn.m() : null);
        }
        if (no()) {
            return;
        }
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar2 = this.xv;
        if (oxVar2 != null) {
            oxVar2.d();
        }
        if (this.io.dq()) {
            this.io.p();
            return;
        }
        com.bytedance.msdk.api.p.dq.ia.dq dqVar3 = this.ox;
        if (dqVar3 != null) {
            dqVar3.dq(dq(this.no, dqVar, this.yy));
            dq((com.bytedance.msdk.api.ox.dq) null, 0);
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.ia.dq dqVar) {
        this.ox = dqVar;
        com.bytedance.msdk.core.admanager.reward.rewardagain.ox oxVar = this.xv;
        if (oxVar != null) {
            oxVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.core.mn.p
    public void dq(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (sVar != null) {
            if (sVar.cv() == 6 || sVar.cv() != 7) {
                this.t = this;
            } else {
                this.t = this.cc;
            }
        }
        super.dq(sVar, activity, ritScenes, str);
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void iw() {
        if (!fw.dq()) {
            q();
            if (this.io.dq()) {
                this.io.d();
            }
            com.bytedance.msdk.api.p.dq.ia.dq dqVar = this.ox;
            if (dqVar != null) {
                dqVar.iw();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 3, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.yy, this.no, 3, 0, 0, (String) null);
        }
        if (no()) {
            return;
        }
        q();
        if (this.io.dq()) {
            this.io.d();
        }
        com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.ox;
        if (dqVar2 != null) {
            dqVar2.iw();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
        com.bytedance.msdk.api.p.dq.ia.d dVar = this.f811d;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
        com.bytedance.msdk.api.p.dq.ia.d dVar = this.f811d;
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
        com.bytedance.msdk.core.d.dq.s(this.no.k());
        String str3 = null;
        if (fw.dq()) {
            com.bytedance.msdk.d.s sVar = this.yy;
            if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
                if (!dub.b()) {
                    com.bytedance.msdk.s.iw.dq(this.yy, this.no, 5, 1, 0, tn.m());
                    return;
                } else if (fw.ox()) {
                    str2 = tn.m();
                    if (!no() && (dqVar = this.ox) != null) {
                        dqVar.s_();
                    }
                    str = str2;
                }
            }
            str2 = null;
            if (!no()) {
                dqVar.s_();
            }
            str = str2;
        } else {
            com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.ox;
            if (dqVar2 != null) {
                dqVar2.s_();
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
        com.bytedance.msdk.d.s sVar2 = this.yy;
        com.bytedance.msdk.s.iw.d(sVar2, this.no, 0, str4, j2, str, sVar2.by());
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void t_() {
        com.bytedance.msdk.api.p.dq.ia.dq dqVar;
        com.bytedance.msdk.api.p.dq.ia.dq dqVar2;
        if (!fw.dq()) {
            q();
            if (f() || (dqVar = this.ox) == null) {
                return;
            }
            dqVar.t_();
            return;
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 2, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.yy, this.no, 2, 0, 0, (String) null);
        }
        if (no()) {
            return;
        }
        q();
        if (f() || (dqVar2 = this.ox) == null) {
            return;
        }
        dqVar2.t_();
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void u_() {
        if (!fw.dq()) {
            q();
            if (this.io.dq()) {
                this.io.s();
            }
            com.bytedance.msdk.api.p.dq.ia.dq dqVar = this.ox;
            if (dqVar != null) {
                dqVar.u_();
                return;
            }
            return;
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            if (!dub.b()) {
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 1, 1, 0, tn.m());
                return;
            }
            com.bytedance.msdk.s.iw.dq(this.yy, this.no, 1, 0, 0, (String) null);
        }
        if (no()) {
            return;
        }
        q();
        if (this.io.dq()) {
            this.io.s();
        }
        com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.ox;
        if (dqVar2 != null) {
            dqVar2.u_();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ia.dq
    public void v_() {
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
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, (com.bytedance.msdk.api.dq) null, 2, 0, str, j);
        com.bytedance.msdk.api.p.dq.ia.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.v_();
        }
    }
}
