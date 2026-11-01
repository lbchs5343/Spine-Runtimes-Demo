package com.bytedance.sdk.gromore.dq.dq.mn.p;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.api.p.dq.mn.mn;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.msdk.api.p.dq.mn.o;
import com.bytedance.msdk.ox.p.kk;
import com.bytedance.sdk.gromore.dq.dq.p.cd;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.mp;
import com.bytedance.sdk.openadsdk.mediation.dq.d.ia;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class d extends ia {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.mn.dq f2331d;
    private kk dq;
    private com.bytedance.sdk.openadsdk.f.d.dq.d ia;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq iw;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox mn;
    private com.bytedance.sdk.openadsdk.le.dq.d.dq.dq ox;
    private com.bytedance.sdk.openadsdk.le.dq.d.dq.d p;
    private View s;

    public d(kk kkVar, com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        this.dq = kkVar;
        this.f2331d = dqVar;
        kx();
    }

    private void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2331d;
        if (dqVar2 != null) {
            this.iw = dqVar;
            dqVar2.dq(new com.bytedance.msdk.api.p.dq.mn.p() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.d.5
                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq() {
                    if (d.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) d.this.mn).d();
                    }
                    if (d.this.iw != null) {
                        d.this.iw.dq(d.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq(View view) {
                    if (d.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) d.this.mn).dq();
                    }
                    if (d.this.iw != null) {
                        d.this.iw.dq(view, d.this);
                    }
                }
            });
        }
    }

    private void h() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar == null || !dqVar.ir()) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "当前广告为模版广告，不能使用自渲染接口进行渲染，请使用render进行渲染");
    }

    private void ji() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar == null || dqVar.ir()) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "当前广告为自渲染广告，不能使用模版接口进行渲染，请使用registerViewForInteraction进行渲染");
    }

    private void kx() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            dqVar.dq(new mn() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.d.1
                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq() {
                    if (d.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) d.this.mn).d();
                    }
                    if (d.this.iw != null) {
                        d.this.iw.dq(d.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(float f2, float f3) {
                    if (d.this.mn != null) {
                        d.this.mn.dq(d.this.s, f2, f3, true);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq(View view) {
                    if (d.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) d.this.mn).dq();
                    }
                    if (d.this.iw != null) {
                        d.this.iw.dq(view, d.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(View view, String str, int i) {
                    if (d.this.mn instanceof com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) {
                        ((com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s) d.this.mn).dq(view, str, i);
                    }
                }
            });
            this.f2331d.dq(new com.bytedance.msdk.api.p.dq.mn.kk() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.d.2
                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void by() {
                    if (d.this.ox != null) {
                        d.this.ox.dq(d.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(long j, long j2) {
                    if (d.this.ox != null) {
                        d.this.ox.dq(j, j2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(com.bytedance.msdk.api.dq dqVar2) {
                    if (dqVar2 == null || d.this.ox == null) {
                        return;
                    }
                    d.this.ox.dq(dqVar2.dq, -1);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void uh() {
                    if (d.this.ox != null) {
                        d.this.ox.d(d.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void v() {
                    if (d.this.ox != null) {
                        d.this.ox.s(d.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void xz() {
                    if (d.this.ox != null) {
                        d.this.ox.ox(d.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void yy() {
                    if (d.this.ox != null) {
                        d.this.ox.p(d.this);
                    }
                }
            });
            this.f2331d.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.d.3
                @Override // com.bytedance.msdk.api.p.dq.d
                public void d(long j, long j2, String str, String str2) {
                    if (d.this.ia != null) {
                        d.this.ia.ox(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq() {
                    if (d.this.ia != null) {
                        d.this.ia.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, int i, int i2, String str, String str2) {
                    if (d.this.ia != null) {
                        d.this.ia.dq(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, String str, String str2) {
                    if (d.this.ia != null) {
                        d.this.ia.d(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, String str, String str2) {
                    if (d.this.ia != null) {
                        d.this.ia.dq(j, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(String str, String str2) {
                    if (d.this.ia != null) {
                        d.this.ia.dq(str, str2);
                    }
                }
            });
            this.f2331d.dq(new o() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.d.4
                @Override // com.bytedance.msdk.api.p.dq.mn.o
                public void dq(int i) {
                    if (d.this.p != null) {
                        d.this.p.dq(i);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.p cd() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public com.bytedance.sdk.openadsdk.le.dq.d.d.dq d() {
        return new com.bytedance.sdk.gromore.dq.dq.p.ox(this.f2331d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(Activity activity) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            dqVar.d(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            dqVar.dq((Dialog) tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public double dq() {
        return 0.0d;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return dqVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return dqVar.dq(tTDislikeDialogAbstract);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar) {
        h();
        if (this.f2331d != null) {
            dq(dqVar);
            this.f2331d.dq(activity, viewGroup, list, list2, list3, no.dq(pVar));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2331d;
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
        if (this.f2331d != null) {
            dq(dqVar);
            this.f2331d.dq(viewGroup, list, list2, list3, list4, view);
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
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            dqVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s e() {
        return new com.bytedance.sdk.gromore.dq.dq.p.o(new ox(this.dq, this.f2331d));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int f() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return dqVar.kx();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int fw() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return dqVar.e();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.ox gh() {
        return new com.bytedance.sdk.gromore.dq.dq.p.d(this.f2331d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public View i() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar == null) {
            return null;
        }
        if (!dqVar.ir()) {
            return this.f2331d.mp();
        }
        View ig = this.f2331d.ig();
        this.s = ig;
        return ig;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String ia() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        return dqVar != null ? dqVar.s() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int ig() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar == null || dqVar.ox() == null) {
            return 0;
        }
        return this.f2331d.ox().en();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Bitmap iw() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return dqVar.le();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public List<mp> jy() {
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        List<String> jy = dqVar != null ? dqVar.jy() : null;
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2331d;
        String mn = dqVar2 != null ? dqVar2.mn() : null;
        if (jy != null) {
            if (jy.size() != 0) {
                Iterator<String> it = jy.iterator();
                while (it.hasNext()) {
                    arrayList.add(new cd(it.next()));
                }
            } else if (!TextUtils.isEmpty(mn)) {
                com.bytedance.msdk.api.p.dq.mn.dq dqVar3 = this.f2331d;
                int ia = dqVar3 != null ? dqVar3.ia() : 0;
                com.bytedance.msdk.api.p.dq.mn.dq dqVar4 = this.f2331d;
                arrayList.add(new cd(mn, ia, dqVar4 != null ? dqVar4.o() : 0));
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void k() {
        ji();
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            dqVar.op();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String kk() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        return dqVar != null ? dqVar.no() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Map<String, Object> le() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return com.bytedance.sdk.gromore.dq.d.d.dq(dqVar.h(), this.f2331d.gx());
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mn() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        return dqVar != null ? dqVar.p() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mp() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        return dqVar != null ? dqVar.f() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int no() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return dqVar.k();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int o() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            return (int) dqVar.q();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int ox() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            if (dqVar.ir()) {
                View view = this.s;
                if (view != null) {
                    return view.getWidth();
                }
                return 0;
            }
            com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2331d;
            if (dqVar2 != null) {
                return dqVar2.ji();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int p() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            if (dqVar.ir()) {
                View view = this.s;
                if (view != null) {
                    return view.getHeight();
                }
                return 0;
            }
            com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2331d;
            if (dqVar2 != null) {
                return dqVar2.bl();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public mp q() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        return new cd(dqVar != null ? dqVar.iw() : "");
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.s r() {
        return new com.bytedance.sdk.gromore.dq.dq.p.p(this.f2331d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public mp s() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void wp() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2331d;
        if (dqVar != null) {
            dqVar.vf();
        }
    }
}
