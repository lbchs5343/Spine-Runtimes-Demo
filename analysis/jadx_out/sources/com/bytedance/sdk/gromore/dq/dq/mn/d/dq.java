package com.bytedance.sdk.gromore.dq.dq.mn.d;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.api.p.dq.mn.kk;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.sdk.gromore.dq.dq.p.cd;
import com.bytedance.sdk.gromore.dq.dq.p.o;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.f.d.d.mp;
import com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s;
import com.bytedance.sdk.openadsdk.mediation.dq.d.mn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends mn {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.ox.dq f2316d;
    private com.bytedance.msdk.ox.p.mn dq;
    private com.bytedance.sdk.openadsdk.le.dq.d.dq.dq iw;
    private View ox;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox p;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq s;

    public dq(com.bytedance.msdk.ox.p.mn mnVar, com.bytedance.msdk.api.p.dq.ox.dq dqVar) {
        this.dq = mnVar;
        this.f2316d = dqVar;
        kx();
    }

    private void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar2 = this.f2316d;
        if (dqVar2 != null) {
            this.s = dqVar;
            dqVar2.dq(new com.bytedance.msdk.api.p.dq.ox.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.d.dq.3
                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq() {
                    if (dq.this.p instanceof s) {
                        ((s) dq.this.p).d();
                    }
                    if (dq.this.s != null) {
                        dq.this.s.dq(dq.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq(View view) {
                    if (dq.this.p instanceof s) {
                        ((s) dq.this.p).dq();
                    }
                    if (dq.this.s != null) {
                        dq.this.s.dq(view, dq.this);
                    }
                }
            });
        }
    }

    private void h() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar == null || !dqVar.u()) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "当前广告为模版广告，不能使用自渲染接口进行渲染，请使用render进行渲染");
    }

    private void ji() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar == null || dqVar.u()) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "当前广告为自渲染广告，不能使用模版接口进行渲染，请使用registerViewForInteraction进行渲染");
    }

    private void kx() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.dq(new com.bytedance.msdk.api.p.dq.ox.s() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.d.dq.1
                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq() {
                    if (dq.this.p instanceof s) {
                        ((s) dq.this.p).d();
                    }
                    if (dq.this.s != null) {
                        dq.this.s.dq(dq.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.s
                public void dq(float f2, float f3) {
                    if (dq.this.p != null) {
                        dq.this.p.dq(dq.this.ox, f2, f3, true);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq(View view) {
                    if (dq.this.p instanceof s) {
                        ((s) dq.this.p).dq();
                    }
                    if (dq.this.s != null) {
                        dq.this.s.dq(view, dq.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.s
                public void dq(View view, String str, int i) {
                    if (dq.this.p instanceof s) {
                        ((s) dq.this.p).dq(view, str, i);
                    }
                }
            });
            this.f2316d.dq(new kk() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.d.dq.2
                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void by() {
                    if (dq.this.iw != null) {
                        dq.this.iw.dq(dq.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(long j, long j2) {
                    if (dq.this.iw != null) {
                        dq.this.iw.dq(j, j2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(com.bytedance.msdk.api.dq dqVar2) {
                    if (dqVar2 == null || dq.this.iw == null) {
                        return;
                    }
                    dq.this.iw.dq(dqVar2.dq, -1);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void uh() {
                    if (dq.this.iw != null) {
                        dq.this.iw.d(dq.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void v() {
                    if (dq.this.iw != null) {
                        dq.this.iw.s(dq.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void xz() {
                    if (dq.this.iw != null) {
                        dq.this.iw.ox(dq.this);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void yy() {
                    if (dq.this.iw != null) {
                        dq.this.iw.p(dq.this);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.p cd() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public com.bytedance.sdk.openadsdk.le.dq.d.d.dq d() {
        return new com.bytedance.sdk.gromore.dq.dq.d.d(this.f2316d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(Activity activity) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.d(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.dq((Dialog) tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public double dq() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.r();
        }
        return 0.0d;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public ia dq(Activity activity) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.dq(tTDislikeDialogAbstract);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar) {
        h();
        if (this.f2316d != null) {
            dq(dqVar);
            this.f2316d.dq(activity, viewGroup, list, list2, list3, no.dq(pVar));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar2 = this.f2316d;
        if (dqVar2 == null || activity == null) {
            return;
        }
        dqVar2.dq(activity, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.o
    public void dq(Bitmap bitmap, int i) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.dq(bitmap, i);
        }
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
        if (this.f2316d != null) {
            dq(dqVar);
            this.f2316d.dq(viewGroup, list, list2, list3, list4, view);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.dq(dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.o
    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar2 = this.f2316d;
        if (dqVar2 != null) {
            dqVar2.dq(dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.d dVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar) {
        this.iw = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox oxVar) {
        this.p = oxVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(String str) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.o
    public void dq(boolean z) {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.dq(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s e() {
        return new o(new d(this.dq, this.f2316d));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int f() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.h();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int fw() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.kx();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.ox gh() {
        return new com.bytedance.sdk.gromore.dq.dq.d.dq(this.f2316d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public View i() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar == null) {
            return null;
        }
        if (!dqVar.u()) {
            return this.f2316d.q();
        }
        View mp = this.f2316d.mp();
        this.ox = mp;
        return mp;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String ia() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        return dqVar != null ? dqVar.iw() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int ig() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar == null || dqVar.p() == null) {
            return 0;
        }
        return this.f2316d.p().en();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Bitmap iw() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.le();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public List<mp> jy() {
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        List<String> f2 = dqVar != null ? dqVar.f() : null;
        com.bytedance.msdk.api.p.dq.ox.dq dqVar2 = this.f2316d;
        String ia = dqVar2 != null ? dqVar2.ia() : null;
        if (f2 != null) {
            if (f2.size() != 0) {
                Iterator<String> it = f2.iterator();
                while (it.hasNext()) {
                    arrayList.add(new cd(it.next()));
                }
            } else if (!TextUtils.isEmpty(ia)) {
                com.bytedance.msdk.api.p.dq.ox.dq dqVar3 = this.f2316d;
                int o = dqVar3 != null ? dqVar3.o() : 0;
                com.bytedance.msdk.api.p.dq.ox.dq dqVar4 = this.f2316d;
                arrayList.add(new cd(ia, o, dqVar4 != null ? dqVar4.no() : 0));
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void k() {
        ji();
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.ir();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String kk() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        return dqVar != null ? dqVar.ig() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Map<String, Object> le() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return com.bytedance.sdk.gromore.dq.d.d.dq(dqVar.ji(), this.f2316d.nh());
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mn() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        return dqVar != null ? dqVar.s() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mp() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        return dqVar != null ? dqVar.fw() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int no() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.k();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int o() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return (int) dqVar.jy();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int ox() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            if (dqVar.u()) {
                View view = this.ox;
                if (view != null) {
                    return view.getWidth();
                }
                return 0;
            }
            com.bytedance.msdk.api.p.dq.ox.dq dqVar2 = this.f2316d;
            if (dqVar2 != null) {
                return dqVar2.bl();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int p() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            if (dqVar.u()) {
                View view = this.ox;
                if (view != null) {
                    return view.getHeight();
                }
                return 0;
            }
            com.bytedance.msdk.api.p.dq.ox.dq dqVar2 = this.f2316d;
            if (dqVar2 != null) {
                return dqVar2.n();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public mp q() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        return new cd(dqVar != null ? dqVar.mn() : "");
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.s r() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.wp();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public mp s() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            return dqVar.i();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void wp() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.f2316d;
        if (dqVar != null) {
            dqVar.wn();
        }
    }
}
