package com.bytedance.sdk.gromore.dq.dq.p;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class no extends com.bytedance.sdk.openadsdk.mediation.dq.d.ia {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.mn.dq f2354d;
    private com.bytedance.msdk.core.admanager.ia dq;
    private com.bytedance.sdk.openadsdk.f.d.dq.d ia;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq iw;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox mn;
    private com.bytedance.sdk.openadsdk.le.dq.d.dq.dq ox;
    private com.bytedance.sdk.openadsdk.le.dq.d.dq.d p;
    private View s;

    public no(com.bytedance.msdk.core.admanager.ia iaVar, com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        this.dq = iaVar;
        this.f2354d = dqVar;
        kx();
    }

    private void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2354d;
        if (dqVar2 != null) {
            this.iw = dqVar;
            dqVar2.dq(new com.bytedance.msdk.api.p.dq.mn.p() { // from class: com.bytedance.sdk.gromore.dq.dq.p.no.5
                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq() {
                    if (no.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) no.this.mn).d();
                    }
                    if (no.this.iw != null) {
                        no.this.iw.dq(no.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq(View view) {
                    if (no.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) no.this.mn).dq();
                    }
                    if (no.this.iw != null) {
                        no.this.iw.dq(view, no.this);
                    }
                }
            });
        }
    }

    private void h() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar == null || !dqVar.ir()) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "当前广告为模版广告，不能使用自渲染接口进行渲染，请使用render进行渲染");
    }

    private void ji() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar == null || dqVar.ir()) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "当前广告为自渲染广告，不能使用模版接口进行渲染，请使用registerViewForInteraction进行渲染");
    }

    private void kx() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            dqVar.dq(new com.bytedance.msdk.api.p.dq.mn.mn() { // from class: com.bytedance.sdk.gromore.dq.dq.p.no.1
                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq() {
                    if (no.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) no.this.mn).d();
                    }
                    if (no.this.iw != null) {
                        no.this.iw.dq(no.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(float f2, float f3) {
                    if (no.this.mn != null) {
                        no.this.mn.dq(no.this.s, f2, f3, true);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq(View view) {
                    if (no.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) no.this.mn).dq();
                    }
                    if (no.this.iw != null) {
                        no.this.iw.dq(view, no.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(View view, String str, int i) {
                    if (no.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) no.this.mn).dq(view, str, i);
                    }
                }
            });
            this.f2354d.dq(new com.bytedance.msdk.api.p.dq.mn.kk() { // from class: com.bytedance.sdk.gromore.dq.dq.p.no.2
                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void by() {
                    if (no.this.ox != null) {
                        no.this.ox.dq(no.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(long j, long j2) {
                    if (no.this.ox != null) {
                        no.this.ox.dq(j, j2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(com.bytedance.msdk.api.dq dqVar2) {
                    if (dqVar2 == null || no.this.ox == null) {
                        return;
                    }
                    no.this.ox.dq(dqVar2.dq, -1);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void uh() {
                    if (no.this.ox != null) {
                        no.this.ox.d(no.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void v() {
                    if (no.this.ox != null) {
                        no.this.ox.s(no.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void xz() {
                    if (no.this.ox != null) {
                        no.this.ox.ox(no.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void yy() {
                    if (no.this.ox != null) {
                        no.this.ox.p(no.this);
                    }
                }
            });
            this.f2354d.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.p.no.3
                @Override // com.bytedance.msdk.api.p.dq.d
                public void d(long j, long j2, String str, String str2) {
                    if (no.this.ia != null) {
                        no.this.ia.ox(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq() {
                    if (no.this.ia != null) {
                        no.this.ia.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, int i, int i2, String str, String str2) {
                    if (no.this.ia != null) {
                        no.this.ia.dq(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, String str, String str2) {
                    if (no.this.ia != null) {
                        no.this.ia.d(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, String str, String str2) {
                    if (no.this.ia != null) {
                        no.this.ia.dq(j, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(String str, String str2) {
                    if (no.this.ia != null) {
                        no.this.ia.dq(str, str2);
                    }
                }
            });
            this.f2354d.dq(new com.bytedance.msdk.api.p.dq.mn.o() { // from class: com.bytedance.sdk.gromore.dq.dq.p.no.4
                @Override // com.bytedance.msdk.api.p.dq.mn.o
                public void dq(int i) {
                    if (no.this.p != null) {
                        no.this.p.dq(i);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.p cd() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public com.bytedance.sdk.openadsdk.le.dq.d.d.dq d() {
        return new ox(this.f2354d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(Activity activity) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            dqVar.d(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            dqVar.dq((Dialog) tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public double dq() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.r();
        }
        return 0.0d;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.dq(tTDislikeDialogAbstract);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar) {
        h();
        if (this.f2354d != null) {
            dq(dqVar);
            this.f2354d.dq(activity, viewGroup, list, list2, list3, com.bytedance.msdk.api.p.dq.mn.no.dq(pVar));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2354d;
        if (dqVar2 == null || activity == null) {
            return;
        }
        dqVar2.dq(activity, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(view);
        dq(viewGroup, (List<View>) null, arrayList, (List<View>) null, (List<View>) null, (View) null, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        dq(viewGroup, (List<View>) null, list, list2, (List<View>) null, view, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        dq(viewGroup, (List<View>) null, list, list2, (List<View>) null, (View) null, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        dq(viewGroup, list, list2, list3, (List<View>) null, view, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        h();
        if (this.f2354d != null) {
            dq(dqVar);
            this.f2354d.dq(viewGroup, list, list2, list3, list4, view);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        this.ia = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.d dVar) {
        this.p = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar) {
        this.ox = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox oxVar) {
        this.mn = oxVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(String str) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            dqVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s e() {
        return new o(new ig(this.dq, this.f2354d));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int f() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.kx();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int fw() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.e();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.ox gh() {
        return new d(this.f2354d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public View i() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar == null) {
            return null;
        }
        if (!dqVar.ir()) {
            return this.f2354d.mp();
        }
        View ig = this.f2354d.ig();
        this.s = ig;
        return ig;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String ia() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        return dqVar != null ? dqVar.s() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int ig() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar == null || dqVar.ox() == null) {
            return 0;
        }
        return this.f2354d.ox().en();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Bitmap iw() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.le();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public List<com.bytedance.sdk.openadsdk.f.d.d.mp> jy() {
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        List<String> jy = dqVar != null ? dqVar.jy() : null;
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2354d;
        String mn = dqVar2 != null ? dqVar2.mn() : null;
        if (jy != null) {
            if (jy.size() != 0) {
                Iterator<String> it = jy.iterator();
                while (it.hasNext()) {
                    arrayList.add(new cd(it.next()));
                }
            } else if (!TextUtils.isEmpty(mn)) {
                com.bytedance.msdk.api.p.dq.mn.dq dqVar3 = this.f2354d;
                int ia = dqVar3 != null ? dqVar3.ia() : 0;
                com.bytedance.msdk.api.p.dq.mn.dq dqVar4 = this.f2354d;
                arrayList.add(new cd(mn, ia, dqVar4 != null ? dqVar4.o() : 0));
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void k() {
        ji();
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            dqVar.op();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String kk() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        return dqVar != null ? dqVar.no() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Map<String, Object> le() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return com.bytedance.sdk.gromore.dq.d.d.dq(dqVar.h(), this.f2354d.gx());
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mn() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        return dqVar != null ? dqVar.p() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mp() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        return dqVar != null ? dqVar.f() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int no() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.k();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int o() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return (int) dqVar.q();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int ox() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            if (dqVar.ir()) {
                View view = this.s;
                if (view != null) {
                    return view.getWidth();
                }
                return 0;
            }
            com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2354d;
            if (dqVar2 != null) {
                return dqVar2.ji();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int p() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            if (dqVar.ir()) {
                View view = this.s;
                if (view != null) {
                    return view.getHeight();
                }
                return 0;
            }
            com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2354d;
            if (dqVar2 != null) {
                return dqVar2.bl();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.mp q() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        return new cd(dqVar != null ? dqVar.iw() : "");
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.s r() {
        return new p(this.f2354d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.mp s() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            return dqVar.i();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void wp() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2354d;
        if (dqVar != null) {
            dqVar.vf();
        }
    }
}
