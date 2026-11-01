package com.bytedance.msdk.ox.p;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class iw extends d implements com.bytedance.msdk.dq.d.dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.dq.d f1202d;
    private com.bytedance.msdk.api.p.dq.dq.dq dq;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.dq.p f1203f;
    private boolean jy;

    public iw(Context context) {
        super(context);
        this.jy = false;
    }

    private View dq(Context context, com.bytedance.msdk.d.s sVar) {
        this.p = sVar;
        this.ox.dq(sVar);
        this.p.iw(true);
        this.p.dq(this.kk);
        if (this.p.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, this.p.b(), this.iw.s())) {
            com.bytedance.msdk.d.s sVar2 = this.p;
            com.bytedance.msdk.ox.mn.p.dq(sVar2, this.s, sVar2.b());
        }
        dq(false);
        StringBuilder sb = new StringBuilder();
        sb.append(com.bytedance.msdk.dq.s.s.dq(this.s, "show"));
        sb.append("展示的广告类型：");
        sb.append(com.bytedance.msdk.d.dq.dq(this.p.hf()));
        sb.append(",slotId：");
        tn.a(this.p, sb, ",slotType:");
        sb.append(this.p.y());
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
        final View ig = this.p.ig();
        if (!this.p.zc() && this.p.cv() == 4 && this.p.dc() == 2 && !this.p.mc()) {
            com.bytedance.msdk.api.p.dq.dq.p pVar = this.f1203f;
            if (pVar != null) {
                try {
                    ig = pVar.dq(ox(this.p));
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
        if (this.p.o() && context != null) {
            this.p.dq((Activity) context, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.ox.p.iw.1
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

    private void dq(boolean z) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null && sVar.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, this.p.b(), this.iw.s())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.p.b(), this.iw, this.ox.bl(), z, this.ox.n(), this.ox.c(), this.ia.get());
        }
    }

    private com.bytedance.msdk.api.p.dq.dq.ox ox(final com.bytedance.msdk.d.s sVar) {
        return new com.bytedance.msdk.api.p.dq.dq.ox() { // from class: com.bytedance.msdk.ox.p.iw.3
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
                return new com.bytedance.msdk.api.p.d() { // from class: com.bytedance.msdk.ox.p.iw.3.1
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
                            iaVar.dq(new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.ox.p.iw.3.1.1
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

    private void ox(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.iw.2
            @Override // java.lang.Runnable
            public void run() {
                if (iw.this.dq != null) {
                    iw.this.dq.a_(dqVar);
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
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, dqVar, 1, 0, str, j);
        ox(dqVar);
    }

    @Override // com.bytedance.msdk.api.p.dq.dq.dq
    public void d(View view) {
        String str;
        long j;
        this.jy = true;
        if (this.dq != null) {
            com.bytedance.msdk.core.kk.mp.dq().mn(this.s);
            com.bytedance.msdk.core.kk.mp.dq().d(this.s);
            this.dq.d(view);
        }
        if (this.p != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.msdk.dq.s.s.dq(this.s, "show_listen"));
            sb.append("adSlotId：");
            tn.a(this.p, sb, "，广告类型：");
            sb.append(com.bytedance.msdk.d.dq.dq(this.p.hf()));
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
            com.bytedance.msdk.core.kk.no.dq().d(this.s, this.p.b());
            com.bytedance.msdk.core.kk.ig.dq().d(this.s, this.p.b());
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            com.bytedance.msdk.core.ox.ox.dq(sVar.wi(), this.s, this.p.b());
        }
        dq(true);
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, 0, str, j, false);
        com.bytedance.msdk.core.d.dq.mn(this.iw.k());
        com.bytedance.msdk.core.d.dq.ox(this.iw.k());
        com.bytedance.msdk.core.o.p.dq(1, this.iw.k(), this.p.qz(), this.p.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.s, this.p);
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.dq.d dVar = this.f1202d;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    public synchronized View dq(Context context) {
        List<com.bytedance.msdk.core.no.no> list;
        View view;
        com.bytedance.msdk.d.s sVar;
        com.bytedance.msdk.d.s next;
        com.bytedance.msdk.d.s sVar2;
        try {
            com.bytedance.msdk.core.no.d dVar = this.mn;
            com.bytedance.msdk.s.iw.dq(this.iw, dVar != null ? dVar.gx() : null);
            if (this.ig) {
                com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.iw, 0);
                ox(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
                return null;
            }
            int d2 = d.d(this.s);
            if (d2 != 0) {
                com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.iw, d2);
                ox(new com.bytedance.msdk.api.dq(d2, com.bytedance.msdk.api.dq.dq(d2)));
                return null;
            }
            List<com.bytedance.msdk.d.s> r = this.ox.r();
            try {
                list = h_();
            } catch (Throwable th) {
                th.printStackTrace();
                list = null;
            }
            if (list != null && list.size() > 0) {
                HashMap<String, com.bytedance.msdk.d.s> d3 = d(r);
                view = null;
                for (com.bytedance.msdk.core.no.no noVar : list) {
                    if (noVar != null) {
                        String cd = noVar.cd();
                        com.bytedance.msdk.d.s sVar3 = d3.get(cd);
                        if (sVar3 != null && sVar3.u(this.s) && !sVar3.xi() && (view = dq(context, sVar3)) != null) {
                            break;
                        }
                        if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, cd, this.iw.s()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.iw, false) == 3) {
                            com.bytedance.msdk.core.s.dq.dq dq = com.bytedance.msdk.core.s.dq.dq.dq();
                            com.bytedance.msdk.api.dq.d dVar2 = this.iw;
                            List<com.bytedance.msdk.core.s.d.ig> dq2 = dq.dq(cd, dVar2, dVar2.s());
                            if (dq2 != null && dq2.size() > 0 && (sVar2 = dq2.get(0).dq) != null && sVar2.u(this.s) && !sVar2.xi()) {
                                d(sVar2);
                                view = dq(context, sVar2);
                                if (view != null) {
                                    break;
                                }
                            }
                        }
                    }
                }
            } else {
                view = null;
            }
            if (view == null && r != null && r.size() > 0) {
                Iterator<com.bytedance.msdk.d.s> it = r.iterator();
                while (it.hasNext() && ((next = it.next()) == null || !next.u(this.s) || next.xi() || (view = dq(context, next)) == null)) {
                }
            }
            if (view == null) {
                com.bytedance.msdk.s.iw.dq(r, this.iw, 0);
                ox(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
                return null;
            }
            this.ig = true;
            com.bytedance.msdk.core.s.dq.dq dq3 = com.bytedance.msdk.core.s.dq.dq.dq();
            List<com.bytedance.msdk.d.s> r2 = this.ox.r();
            String str = this.s;
            com.bytedance.msdk.api.dq.d dVar3 = this.iw;
            dq3.dq(r2, str, dVar3, dVar3.s(), this.p);
            if (this.p != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.p);
                dq(arrayList);
            }
            com.bytedance.msdk.s.iw.dq(this.p, this.iw, false, 0);
            if (this.dq != null && (sVar = this.p) != null && sVar.hf() == 2) {
                com.bytedance.msdk.dq.s.ox.dq("ADMOB_EVENT", com.bytedance.msdk.dq.s.s.d(this.s, this.p.b()) + "mTTAdBannerListener-->Admob--->onAdShow......");
                com.bytedance.msdk.core.kk.mp.dq().mn(this.s);
                com.bytedance.msdk.core.kk.mp.dq().d(this.s);
                this.dq.d(null);
                if (this.p != null) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.s, "show_listen") + "adSlotId：" + this.p.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(this.p.hf()));
                    com.bytedance.msdk.core.kk.no.dq().d(this.s, this.p.b());
                    com.bytedance.msdk.core.kk.ig.dq().d(this.s, this.p.b());
                }
                com.bytedance.msdk.d.s sVar4 = this.p;
                if (sVar4 != null) {
                    com.bytedance.msdk.core.ox.ox.dq(sVar4.wi(), this.s, this.p.b());
                }
                dq(true);
                com.bytedance.msdk.s.iw.dq(this.p, this.iw, 0, (String) null, 0L, false);
                com.bytedance.msdk.core.mn.mn.dq(this.s, this.p);
            }
            return view;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            return sVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.msdk.ox.p.d
    public void dq() {
        if (!this.ig) {
            com.bytedance.msdk.core.s.dq.dq dq = com.bytedance.msdk.core.s.dq.dq.dq();
            List<com.bytedance.msdk.d.s> r = this.ox.r();
            String str = this.s;
            com.bytedance.msdk.api.dq.d dVar = this.iw;
            dq.dq(r, str, dVar, dVar.s(), this.p);
        }
        super.dq();
        this.dq = null;
        this.f1202d = null;
    }

    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.d.s sVar = this.p;
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
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        String str2 = str;
        long j2 = j;
        com.bytedance.msdk.core.d.dq.s(this.iw.k());
        com.bytedance.msdk.d.s sVar = this.p;
        com.bytedance.msdk.s.iw.d(sVar, this.iw, 0, str2, j2, sVar.by());
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.dq.d dVar2) {
        dq(dVar);
        this.kk = this;
        this.f1202d = dVar2;
        no();
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.dq dqVar) {
        this.dq = dqVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.p pVar) {
        this.f1203f = pVar;
    }

    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.dq((Dialog) tTDislikeDialogAbstract);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.dq(oxVar);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.dq(dVar);
        }
    }

    @Override // com.bytedance.msdk.ox.p.d
    public com.bytedance.msdk.api.ox fw() {
        if (this.jy) {
            return super.fw();
        }
        return null;
    }

    public void iw() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.ce();
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
        com.bytedance.msdk.api.p.dq.dq.d dVar = this.f1202d;
        if (dVar != null) {
            dVar.dq();
        }
    }

    public com.bytedance.sdk.openadsdk.f.d.d.p mn() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            return sVar.kk();
        }
        return null;
    }

    public boolean ox() {
        List<com.bytedance.msdk.core.no.no> list;
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        return jy.dq(this.ox.mn(), this.ox.o(), this.ox.ia(), this.iw, this.ig, new AtomicBoolean(this.ox.d()), this.s, this.iw.s(), list, dVar != null ? dVar.gx() : null);
    }

    public int p() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            return sVar.yo();
        }
        return 0;
    }

    public void p(String str) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.dq(str);
        }
    }

    public void s() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.er();
        }
    }
}
