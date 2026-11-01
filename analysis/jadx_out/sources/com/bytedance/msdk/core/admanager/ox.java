package com.bytedance.msdk.core.admanager;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox extends p implements com.bytedance.msdk.dq.d.dq {
    private com.bytedance.msdk.api.p.dq.dq.p ce;

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.dq.d f819d;
    private com.bytedance.msdk.api.p.dq.dq.dq dq;
    private boolean ox;

    public ox(Context context, String str) {
        super(context, str, 1);
        this.ox = false;
    }

    private void d(boolean z) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null && sVar.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, this.yy.b(), i())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.yy.b(), this.no, this.i, z, this.ha, this.f963e, this.l.get());
        }
    }

    private View dq(Context context, com.bytedance.msdk.d.s sVar) {
        this.yy = sVar;
        sVar.iw(true);
        this.yy.dq(this.t);
        if (this.yy.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, this.yy.b(), i())) {
            com.bytedance.msdk.d.s sVar2 = this.yy;
            dq(sVar2, sVar2.b());
        }
        d(false);
        StringBuilder sb = new StringBuilder();
        sb.append(com.bytedance.msdk.dq.s.s.dq(this.kk, "show"));
        sb.append("展示的广告类型：");
        sb.append(com.bytedance.msdk.d.dq.dq(this.yy.hf()));
        sb.append(",slotId：");
        tn.a(this.yy, sb, ",slotType:");
        sb.append(this.yy.y());
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
        final View ig = this.yy.ig();
        if (!this.yy.zc() && this.yy.cv() == 4 && this.yy.dc() == 2 && !this.yy.mc()) {
            com.bytedance.msdk.api.p.dq.dq.p pVar = this.ce;
            if (pVar != null) {
                try {
                    ig = pVar.dq(ox(this.yy));
                    if (ig == null) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- banner混出自渲染信息流，getGMBannerViewFromNativeAd()返回null，将无法展示该广告");
                    }
                } catch (Throwable th) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- banner混出自渲染信息流，getGMBannerViewFromNativeAd()发生异常，将无法展示该广告，信息如下：");
                    th.printStackTrace();
                }
            } else {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- banner混出自渲染信息流，但未提供GMNativeToBannerListener，将无法展示该广告");
            }
        }
        if (this.yy.o() && (context instanceof Activity)) {
            this.yy.dq((Activity) context, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.core.admanager.ox.1
                @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                public void dq(int i, String str, boolean z) {
                    View view = ig;
                    if (view != null) {
                        View view2 = (View) view.getParent();
                        if (view2 instanceof ViewGroup) {
                            ((ViewGroup) view2).removeViewInLayout(ig);
                        }
                    }
                }
            });
        }
        return ig;
    }

    private com.bytedance.msdk.api.p.dq.dq.ox ox(final com.bytedance.msdk.d.s sVar) {
        return new com.bytedance.msdk.api.p.dq.dq.ox() { // from class: com.bytedance.msdk.core.admanager.ox.3
            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public com.bytedance.sdk.openadsdk.f.d.d.ia d(Activity activity) {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 != null) {
                    return sVar2.dq(activity);
                }
                return null;
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public com.bytedance.sdk.openadsdk.f.d.d.ia d(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 != null) {
                    return sVar2.dq(tTDislikeDialogAbstract);
                }
                return null;
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public String d() {
                return sVar.rp();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public com.bytedance.msdk.api.p.d dq(Activity activity) {
                return dq(activity, (Map<String, Object>) null);
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public com.bytedance.msdk.api.p.d dq(Activity activity, Map<String, Object> map) {
                final com.bytedance.sdk.openadsdk.f.d.d.ia dq = sVar.dq(activity);
                return new com.bytedance.msdk.api.p.d() { // from class: com.bytedance.msdk.core.admanager.ox.3.1
                    @Override // com.bytedance.msdk.api.p.d
                    public void dq() {
                        com.bytedance.sdk.openadsdk.f.d.d.ia iaVar = dq;
                        if (iaVar != null) {
                            iaVar.dq();
                        }
                    }

                    @Override // com.bytedance.msdk.api.p.d
                    public void dq(final com.bytedance.msdk.api.p.mn mnVar) {
                        com.bytedance.sdk.openadsdk.f.d.d.ia iaVar = dq;
                        if (iaVar != null) {
                            iaVar.dq(new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.core.admanager.ox.3.1.1
                                @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                                public void d() {
                                    com.bytedance.msdk.api.p.mn mnVar2 = mnVar;
                                    if (mnVar2 != null) {
                                        mnVar2.dq();
                                    }
                                }

                                @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                                public void dq() {
                                    com.bytedance.msdk.api.p.mn mnVar2 = mnVar;
                                    if (mnVar2 != null) {
                                        mnVar2.d();
                                    }
                                }

                                @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                                public void dq(int i, String str, boolean z) {
                                    com.bytedance.msdk.api.p.mn mnVar2 = mnVar;
                                    if (mnVar2 != null) {
                                        mnVar2.dq(i, str);
                                    }
                                }
                            });
                        }
                    }
                };
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public String dq() {
                return sVar.lk();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.msdk.api.p.dq.mn.no noVar) {
                sVar.dq(activity, viewGroup, list, list2, list3, noVar, null);
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.dq(activity, dqVar);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.dq((Dialog) tTDislikeDialogAbstract);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public int ia() {
                return sVar.yo();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public com.bytedance.sdk.openadsdk.f.d.d.p ig() {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 != null) {
                    return sVar2.kk();
                }
                return null;
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public List<String> iw() {
                return sVar.fp();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public int kk() {
                return sVar.jo();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public String mn() {
                return sVar.tu();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public boolean no() {
                return sVar.o();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public com.bytedance.msdk.api.p.dq.mn.d o() {
                if (!sVar.tl()) {
                    return null;
                }
                com.bytedance.msdk.api.p.dq.mn.d dVar = new com.bytedance.msdk.api.p.dq.mn.d();
                dVar.ox(sVar.xj());
                dVar.p(sVar.bf());
                dVar.dq(sVar.x());
                dVar.s(sVar.bx());
                dVar.iw(sVar.nt());
                dVar.mn(sVar.tv());
                dVar.dq(sVar.ny());
                dVar.d(sVar.a());
                dVar.d(sVar.fd());
                dVar.dq(sVar.jw());
                return dVar;
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public String ox() {
                return sVar.fq();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public String p() {
                return sVar.ux();
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.ox
            public double s() {
                return sVar.gl();
            }
        };
    }

    private void s(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.ox.2
            @Override // java.lang.Runnable
            public void run() {
                if (ox.this.dq != null) {
                    ox.this.dq.a_(dqVar);
                }
            }
        });
    }

    @Override // com.bytedance.msdk.api.p.dq.dq.dq
    public void C_() {
        com.bytedance.msdk.api.p.dq.dq.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.C_();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.dq.dq
    public void a_(com.bytedance.msdk.api.dq dqVar) {
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

    public void a_(String str) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.dq(str);
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d() {
        if (!this.uh) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(l(), this.kk, this.no, i(), this.yy);
        }
        super.d();
        this.dq = null;
        this.f819d = null;
    }

    @Override // com.bytedance.msdk.api.p.dq.dq.dq
    public void d(View view) {
        String str;
        long j;
        this.ox = true;
        if (this.dq != null) {
            mp.dq().mn(this.kk);
            mp.dq().d(this.kk);
            this.dq.d(view);
        }
        if (this.yy != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.msdk.dq.s.s.dq(this.kk, "show_listen"));
            sb.append("adSlotId：");
            tn.a(this.yy, sb, "，广告类型：");
            sb.append(com.bytedance.msdk.d.dq.dq(this.yy.hf()));
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
            com.bytedance.msdk.core.kk.no.dq().d(this.kk, this.yy.b());
            ig.dq().d(this.kk, this.yy.b());
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            com.bytedance.msdk.core.ox.ox.dq(sVar.wi(), this.kk, this.yy.b());
        }
        d(true);
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, 0, str, j, false);
        com.bytedance.msdk.core.d.dq.mn(this.no.k());
        com.bytedance.msdk.core.d.dq.ox(this.no.k());
        com.bytedance.msdk.core.o.p.dq(1, this.no.k(), this.yy.qz(), this.yy.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.kk, this.yy);
    }

    public synchronized View dq(Context context) {
        List<com.bytedance.msdk.core.no.no> list;
        View view;
        com.bytedance.msdk.d.s sVar;
        com.bytedance.msdk.d.s next;
        List<com.bytedance.msdk.core.s.d.ig> dq;
        com.bytedance.msdk.d.s sVar2;
        try {
            com.bytedance.msdk.core.no.d dVar = this.mn;
            com.bytedance.msdk.s.iw.dq(this.no, dVar != null ? dVar.gx() : null);
            if (this.uh) {
                com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.no, 0);
                s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
                return null;
            }
            int d2 = p.d(this.kk);
            if (d2 != 0) {
                com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.no, d2);
                s(new com.bytedance.msdk.api.dq(d2, com.bytedance.msdk.api.dq.dq(d2)));
                return null;
            }
            List<com.bytedance.msdk.d.s> l = l();
            try {
                list = h_();
            } catch (Throwable th) {
                th.printStackTrace();
                list = null;
            }
            if (list != null && list.size() > 0) {
                HashMap<String, com.bytedance.msdk.d.s> iw = iw(l);
                view = null;
                for (com.bytedance.msdk.core.no.no noVar : list) {
                    if (noVar != null) {
                        String cd = noVar.cd();
                        com.bytedance.msdk.d.s sVar3 = iw.get(cd);
                        if (sVar3 != null && sVar3.u(this.kk) && !sVar3.xi() && (view = dq(context, sVar3)) != null) {
                            break;
                        }
                        if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, false) == 3 && (dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, i())) != null && dq.size() > 0 && (sVar2 = dq.get(0).dq) != null && sVar2.u(this.kk) && !sVar2.xi()) {
                            p(sVar2);
                            view = dq(context, sVar2);
                            if (view != null) {
                                break;
                            }
                        }
                    }
                }
            } else {
                view = null;
            }
            if (view == null && l != null && l.size() > 0) {
                Iterator<com.bytedance.msdk.d.s> it = l.iterator();
                while (it.hasNext() && ((next = it.next()) == null || !next.u(this.kk) || next.xi() || (view = dq(context, next)) == null)) {
                }
            }
            if (view == null) {
                com.bytedance.msdk.s.iw.dq(l, this.no, 0);
                s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
                return null;
            }
            this.uh = true;
            com.bytedance.msdk.core.s.dq.dq.dq().dq(l(), this.kk, this.no, i(), this.yy);
            if (this.yy != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.yy);
                d(arrayList);
            }
            com.bytedance.msdk.s.iw.dq(this.yy, this.no, false, 0);
            if (this.dq != null && (sVar = this.yy) != null && sVar.hf() == 2) {
                com.bytedance.msdk.dq.s.ox.dq("ADMOB_EVENT", com.bytedance.msdk.dq.s.s.d(this.kk, this.yy.b()) + "mTTAdBannerListener-->Admob--->onAdShow......");
                mp.dq().mn(this.kk);
                mp.dq().d(this.kk);
                this.dq.d(null);
                if (this.yy != null) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk, "show_listen") + "adSlotId：" + this.yy.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(this.yy.hf()));
                    com.bytedance.msdk.core.kk.no.dq().d(this.kk, this.yy.b());
                    ig.dq().d(this.kk, this.yy.b());
                }
                com.bytedance.msdk.d.s sVar4 = this.yy;
                if (sVar4 != null) {
                    com.bytedance.msdk.core.ox.ox.dq(sVar4.wi(), this.kk, this.yy.b());
                }
                d(true);
                com.bytedance.msdk.s.iw.dq(this.yy, this.no, 0, (String) null, 0L, false);
                com.bytedance.msdk.core.mn.mn.dq(this.kk, this.yy);
            }
            return view;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            return sVar.dq(activity);
        }
        return null;
    }

    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.dq(activity, dqVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.dq.dq
    public void dq(View view) {
        String str;
        long j;
        com.bytedance.msdk.api.p.dq.dq.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(view);
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        String str2 = str;
        long j2 = j;
        com.bytedance.msdk.core.d.dq.s(this.no.k());
        com.bytedance.msdk.d.s sVar = this.yy;
        com.bytedance.msdk.s.iw.d(sVar, this.no, 0, str2, j2, sVar.by());
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.dq.d dVar2) {
        if (ig()) {
            this.no = dVar;
            this.f819d = dVar2;
            this.t = this;
            ia();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.dq.d dVar = this.f819d;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.dq dqVar) {
        this.dq = dqVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.p pVar) {
        this.ce = pVar;
    }

    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.dq((Dialog) tTDislikeDialogAbstract);
        }
    }

    public void dq(boolean z) {
        this.i.put("allow_show_close_btn", Boolean.valueOf(z));
    }

    public boolean iw() {
        List<com.bytedance.msdk.core.no.no> list;
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        return jy.dq(this.r, this.gh, this.cd, this.no, this.uh, this.s, j(), i(), list, dVar != null ? dVar.gx() : null);
    }

    public com.bytedance.msdk.core.no.d j_() {
        com.bytedance.msdk.core.f.ox oxVar;
        if (this.mn == null && (oxVar = this.ob) != null) {
            this.mn = oxVar.dq(this.kk, 1, 100);
            v();
        }
        return this.mn;
    }

    public void k_() {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.ce();
        }
    }

    public int kk() {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            return sVar.yo();
        }
        return 0;
    }

    public void mn() {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.er();
        }
    }

    public com.bytedance.sdk.openadsdk.f.d.d.p no() {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            return sVar.kk();
        }
        return null;
    }

    @Override // com.bytedance.msdk.core.mn.s
    public com.bytedance.msdk.api.ox o() {
        if (this.ox) {
            return super.o();
        }
        return null;
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
        com.bytedance.msdk.api.p.dq.dq.d dVar = this.f819d;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
    }
}
