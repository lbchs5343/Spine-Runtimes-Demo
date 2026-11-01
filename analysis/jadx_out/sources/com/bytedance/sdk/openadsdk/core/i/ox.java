package com.bytedance.sdk.openadsdk.core.i;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.f;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ji;
import com.bytedance.sdk.openadsdk.core.k;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.e;
import com.bytedance.sdk.openadsdk.core.nativeexpress.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.le;
import com.bytedance.sdk.openadsdk.core.o.d.dq;
import com.bytedance.sdk.openadsdk.core.r.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;
import com.bytedance.sdk.openadsdk.core.r.kx;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.UGenVideoPanelView;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.f.d.d.mp;
import com.bytedance.sdk.openadsdk.f.d.d.s;
import com.bytedance.sdk.openadsdk.mediation.MediationNativeManagerDefault;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.f.d.ox {
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox cd;

    /* renamed from: d, reason: collision with root package name */
    private final j f2918d;
    private final k dq;

    /* renamed from: e, reason: collision with root package name */
    private final p f2919e;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq gh;
    private com.bytedance.sdk.openadsdk.f.d.ox.d ia;
    private int iw;
    private float jy;
    private final boolean k;
    private com.bytedance.sdk.openadsdk.f.d.p kk;
    private int mn;
    private View no;
    private volatile ViewGroup o;
    private final Context ox;
    private ia p;
    private float q;
    private TextView r;
    private s s;
    private boolean ig = false;
    private boolean mp = true;

    /* renamed from: f, reason: collision with root package name */
    private AtomicBoolean f2920f = new AtomicBoolean(false);
    private AtomicBoolean fw = new AtomicBoolean(false);
    private boolean i = false;
    private boolean le = false;
    private volatile WeakReference<NativeVideoTsView> wp = null;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq kx = null;

    public ox(Context context, final j jVar, int i, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z) {
        f.dq(jVar, "materialMeta不能为null");
        this.k = z;
        this.f2918d = jVar;
        if (context == null) {
            this.ox = wp.getContext();
        } else {
            this.ox = context;
        }
        this.iw = i;
        this.ia = dVar;
        k kVar = new k(this.ox, this, jVar, dq(i));
        this.dq = kVar;
        kVar.dq(i);
        this.kk = dq(jVar);
        this.f2919e = new p(jVar, new com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq() { // from class: com.bytedance.sdk.openadsdk.core.i.ox.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int d() {
                NativeVideoTsView nativeVideoTsView;
                if (ox.this.wp == null || (nativeVideoTsView = (NativeVideoTsView) ox.this.wp.get()) == null) {
                    return 0;
                }
                com.bykv.vk.openvk.component.video.api.p.ox nativeVideoController = nativeVideoTsView.getNativeVideoController();
                if (nativeVideoController == null) {
                    return 4;
                }
                if (nativeVideoController.r()) {
                    return 5;
                }
                if (nativeVideoController.le()) {
                    return 1;
                }
                return ((nativeVideoController instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) && ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) nativeVideoController).by()) ? 2 : 3;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void d(int i2) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void d(View view, int i2, com.bytedance.sdk.component.adexpress.ox oxVar) {
                o oVar;
                if ((i2 == 1 || i2 == 2) && (oxVar instanceof com.bytedance.sdk.openadsdk.core.r.k)) {
                    com.bytedance.sdk.openadsdk.core.r.k kVar2 = (com.bytedance.sdk.openadsdk.core.r.k) oxVar;
                    oVar = new o();
                    oVar.dq(kVar2.dq);
                    oVar.d(kVar2.f3469d);
                    oVar.ox(kVar2.ox);
                    oVar.p(kVar2.p);
                    oVar.dq(kVar2.s);
                    oVar.d(kVar2.iw);
                    oVar.dq(kVar2.jy);
                } else {
                    oVar = null;
                }
                if (i2 == 2) {
                    ox.this.dq.dq(view, oVar);
                }
                if (i2 == 1) {
                    ox.this.dq.d(view, oVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long dq() {
                NativeVideoTsView nativeVideoTsView;
                com.bykv.vk.openvk.component.video.api.p.ox nativeVideoController;
                if (ox.this.wp == null || (nativeVideoTsView = (NativeVideoTsView) ox.this.wp.get()) == null || (nativeVideoController = nativeVideoTsView.getNativeVideoController()) == null) {
                    return 0L;
                }
                return ((int) nativeVideoController.no()) / 1000;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(float f2) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i2) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i2, String str) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(View view) {
                if (ox.this.gh != null) {
                    ox.this.gh.dq(view, ox.this);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(View view, int i2, com.bytedance.sdk.component.adexpress.ox oxVar) {
                o oVar;
                if (oxVar instanceof com.bytedance.sdk.openadsdk.core.r.k) {
                    com.bytedance.sdk.openadsdk.core.r.k kVar2 = (com.bytedance.sdk.openadsdk.core.r.k) oxVar;
                    oVar = new o();
                    oVar.dq(kVar2.dq);
                    oVar.d(kVar2.f3469d);
                    oVar.ox(kVar2.ox);
                    oVar.p(kVar2.p);
                    oVar.dq(kVar2.s);
                    oVar.d(kVar2.iw);
                    oVar.dq(kVar2.jy);
                } else {
                    oVar = null;
                }
                ox.this.dq.dq(view, oVar);
                boolean dq = com.bytedance.sdk.openadsdk.core.ugeno.component.interact.o.dq(ox.this.wp != null ? (NativeVideoTsView) ox.this.wp.get() : null, oxVar);
                j jVar2 = jVar;
                com.bytedance.sdk.openadsdk.core.ugeno.component.interact.o.dq(jVar2, dq, kx.ox(jVar2), 1);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(ViewGroup viewGroup) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long getActualPlayDuration() {
                return dq();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int ox() {
                return 0;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void p() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void s() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void setPauseFromExpressView(boolean z2) {
            }
        });
    }

    private boolean bl() {
        j jVar = this.f2918d;
        if (jVar == null || jVar.y() == 5) {
            return false;
        }
        if (this.mn == 0) {
            this.mn = c.kk(this.f2918d);
        }
        return wp.d().ia(this.mn) == 1;
    }

    private NativeVideoTsView d(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ("ado_tag".equals(childAt.getTag()) && (childAt instanceof NativeVideoTsView)) {
                return (NativeVideoTsView) childAt;
            }
        }
        return null;
    }

    private com.bytedance.sdk.openadsdk.f.d.p dq(j jVar) {
        j jVar2 = this.f2918d;
        if (jVar2 == null || jVar2.ce() != 2) {
            return null;
        }
        boolean z = pa.q(jVar) != null;
        int i = this.iw;
        if (i == 1) {
            return z ? new com.bytedance.sdk.openadsdk.core.bannerexpress.ox(this.ox, jVar, this.ia) : new com.bytedance.sdk.openadsdk.core.bannerexpress.d(this.ox, jVar, this.ia);
        }
        if (i == 5) {
            return z ? new e(this.ox, jVar, this.ia) : new i(this.ox, jVar, this.ia);
        }
        if (i != 9) {
            return null;
        }
        return new le(this.ox, jVar, this.ia);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String dq(int i) {
        return i != 1 ? i != 2 ? i != 5 ? i != 6 ? i != 9 ? "embeded_ad" : "draw_ad" : "stream" : "embeded_ad" : "interaction" : "banner_ad";
    }

    private List<View> dq(List<View> list, List<View> list2) {
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                linkedList.add(list.get(i));
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                linkedList.add(list2.get(i2));
            }
        }
        return linkedList;
    }

    private void n() {
        com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox oxVar;
        if (this.kk == null) {
            com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox oxVar2 = this.cd;
            if (oxVar2 != null) {
                oxVar2.dq(this.o, this.ia.no(), this.ia.ig(), false);
                return;
            }
            return;
        }
        if (this.f2920f.get() && (oxVar = this.cd) != null) {
            oxVar.dq(this.no, this.q, this.jy, this.fw.get());
        } else {
            this.kk.dq(new com.bytedance.sdk.openadsdk.e.dq.d.dq.d(null) { // from class: com.bytedance.sdk.openadsdk.core.i.ox.5
                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void d(View view, int i) {
                    if (ox.this.gh != null) {
                        ox.this.gh.dq(ox.this);
                    }
                    if (ox.this.f2919e == null || ox.this.f2919e.dq() == null) {
                        return;
                    }
                    ox.this.f2919e.dq().p();
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, float f2, float f3) {
                    ox.this.f2920f.set(true);
                    ox.this.fw.set(true);
                    ox.this.no = view;
                    ox.this.q = f2;
                    ox.this.jy = f3;
                    if (ox.this.cd != null) {
                        ox.this.cd.dq(view, f2, f3, true);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, int i) {
                    if (ox.this.gh != null) {
                        ox.this.gh.dq(view, ox.this);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, String str, int i) {
                    ox.this.f2920f.set(true);
                    ox oxVar3 = ox.this;
                    oxVar3.no = oxVar3.o;
                    ox oxVar4 = ox.this;
                    oxVar4.q = oxVar4.ia.no();
                    ox oxVar5 = ox.this;
                    oxVar5.jy = oxVar5.ia.ig();
                    if (ox.this.cd != null) {
                        ox.this.cd.dq(ox.this.o, ox.this.ia.no(), ox.this.ia.ig(), false);
                    }
                }
            });
            this.kk.p();
        }
    }

    private void op() {
        if (this.o == null || this.kk == null || this.no == null) {
            return;
        }
        this.o.removeAllViews();
        if (this.no.getParent() != null) {
            ((ViewGroup) this.no.getParent()).removeAllViews();
        }
        this.o.addView(this.no);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.content.Context] */
    private void ox(Activity activity) {
        Context context = this.ox;
        Activity activity2 = activity;
        if (context instanceof Activity) {
            activity2 = activity;
            if (!((Activity) context).isFinishing()) {
                activity2 = this.ox;
            }
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(activity2, this.f2918d.ez(), dq(this.iw), false);
        this.p = dqVar;
        com.bytedance.sdk.openadsdk.core.dislike.ox.dq(activity2, dqVar, this.f2918d);
    }

    private void ox(boolean z) {
        ig.dq().dq(this.iw, this.f2918d, z);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.f.d.d.p cd() {
        j jVar = this.f2918d;
        if (jVar == null || jVar.ez() == null) {
            return null;
        }
        this.f2918d.ez().d(dq(this.iw));
        return new com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.f2918d.ez());
    }

    public void d() {
        NativeVideoTsView nativeVideoTsView;
        if (this.wp == null || this.wp.get() == null) {
            nativeVideoTsView = null;
        } else {
            nativeVideoTsView = this.wp.get();
            nativeVideoTsView.setEasyPlayableEventSender(this.f2919e.dq());
        }
        k kVar = this.dq;
        if (kVar != null) {
            kVar.dq(this.f2919e.dq());
        }
        this.f2919e.dq(this.o, nativeVideoTsView);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(Activity activity) {
        if (activity != null) {
            this.dq.dq(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox
    public void d(final Dialog dialog, final int[] iArr) {
        com.bytedance.sdk.openadsdk.f.d.p pVar = this.kk;
        if (pVar != null) {
            pVar.dq(dialog, iArr);
        }
        try {
            dialog.getWindow().getDecorView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.i.ox.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    com.bytedance.sdk.openadsdk.core.dislike.ox.d ez = ox.this.f2918d != null ? ox.this.f2918d.ez() : null;
                    if (ez != null) {
                        com.bytedance.sdk.openadsdk.core.dislike.dq.d.dq(ez, dialog, iArr);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
        k kVar = this.dq;
        if (kVar != null) {
            kVar.dq(d2);
        }
    }

    public void d(boolean z) {
        this.ig = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public ia dq(Activity activity) {
        if (this.kk != null && this.fw.get()) {
            return this.kk.dq(activity);
        }
        if (this.p == null) {
            ox(activity);
        }
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox
    public ia dq(final Dialog dialog, int[] iArr) {
        if (dialog == null) {
            throw new IllegalArgumentException("dialog is null, please check");
        }
        com.bytedance.sdk.openadsdk.core.dislike.dq.d.dq(this.f2918d.ez(), dialog, iArr);
        return new ia() { // from class: com.bytedance.sdk.openadsdk.core.i.ox.2
            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void dq() {
                if (!(dialog.getContext() instanceof Activity) || ((Activity) dialog.getContext()).isFinishing()) {
                    return;
                }
                dialog.show();
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void dq(com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void dq(String str) {
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public boolean ox() {
                return false;
            }
        };
    }

    public void dq() {
        NativeVideoTsView nativeVideoTsView;
        k p;
        UGenVideoPanelView genVideoPanelView;
        if (this.wp == null || this.o == null || (nativeVideoTsView = this.wp.get()) == null || (p = p()) == null || (genVideoPanelView = nativeVideoTsView.getGenVideoPanelView()) == null) {
            return;
        }
        genVideoPanelView.setAdSlot(this.ia);
        p.dq((NativeExpressView) genVideoPanelView);
        nativeVideoTsView.setRegisterContainer(this.o);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.f.d.p pVar;
        if (dqVar == null || activity == null || (pVar = this.kk) == null) {
            return;
        }
        pVar.dq(activity, dqVar);
    }

    public void dq(ViewGroup viewGroup) {
        if (viewGroup != null && this.k && com.bytedance.sdk.openadsdk.h.o.dq(this.f2918d)) {
            NativeVideoTsView d2 = d(viewGroup);
            if (d2 != null) {
                if (5 == this.iw) {
                    d2.setIsAutoPlay(this.ig ? this.ia.ia() : this.mp);
                    return;
                } else {
                    d2.setIsAutoPlay(this.mp);
                    return;
                }
            }
            NativeVideoTsView nativeVideoTsView = new NativeVideoTsView(this.ox, this.f2918d, false, false, c.d(this.iw), false, false);
            if (5 == this.iw) {
                nativeVideoTsView.setIsAutoPlay(this.ig ? this.ia.ia() : this.mp);
            } else {
                nativeVideoTsView.setIsAutoPlay(this.mp);
            }
            nativeVideoTsView.setTag("ado_tag");
            nativeVideoTsView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));
            viewGroup.addView(nativeVideoTsView);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        f.dq(viewGroup != null || this.fw.get(), "container不能为null");
        f.dq(view != null || this.fw.get(), "clickView不能为null");
        this.o = viewGroup;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(view);
        dq(viewGroup, arrayList, null, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        f.dq(viewGroup != null || this.fw.get(), "container不能为null");
        f.dq(list != null || this.fw.get(), "clickView不能为null");
        f.dq(list != null && list.size() > 0, "clickViews数量必须大于等于1");
        this.o = viewGroup;
        dq(viewGroup, null, list, list2, view, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        f.dq(viewGroup != null || this.fw.get(), "container不能为null");
        f.dq(list != null || this.fw.get(), "clickView不能为null");
        f.dq(list != null && list.size() > 0, "clickViews数量必须大于等于1");
        this.o = viewGroup;
        dq(viewGroup, list, list2, null, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        f.dq(viewGroup != null || this.fw.get(), "container不能为null");
        f.dq(list2 != null || this.fw.get(), "clickView不能为null");
        f.dq(list2 != null && list2.size() > 0, "clickViews数量必须大于等于1");
        this.o = viewGroup;
        dq(viewGroup, list, list2, list3, (List<View>) null, view, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        int i;
        boolean z = false;
        f.dq(viewGroup != null || this.fw.get(), "container不能为null");
        f.dq(list2 != null || this.fw.get(), "clickView不能为null");
        f.dq(list2 != null && list2.size() > 0, "clickViews数量必须大于等于1");
        this.o = viewGroup;
        this.gh = dqVar;
        if (list3 != null && list3.size() > 0) {
            z = true;
        }
        ox(z);
        List<View> dq = bl() ? dq(list2, list3) : list3;
        if (this.fw.get() && ((i = this.iw) == 5 || i == 1 || i == 9)) {
            op();
        }
        if (!this.fw.get()) {
            this.dq.dq(viewGroup, list, list2, dq, list4, view, dqVar, this.kx);
            dq();
            dq(viewGroup);
        }
        ia iaVar = this.p;
        if (iaVar instanceof com.bytedance.sdk.openadsdk.core.dislike.ui.dq) {
            ((com.bytedance.sdk.openadsdk.core.dislike.ui.dq) iaVar).dq(this.o);
        }
        d();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        f.dq(dVar, "downloadListener不能为null");
        this.dq.dq(dq.C0176dq.dq(dVar, this.f2918d));
        com.bytedance.sdk.openadsdk.f.d.p pVar = this.kk;
        if (pVar != null) {
            pVar.dq(dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
        j jVar = this.f2918d;
        if (jVar != null) {
            com.bytedance.sdk.openadsdk.core.e.dq(jVar.ff(), dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
        this.f2919e.dq(dVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar) {
        this.kx = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox oxVar) {
        this.cd = oxVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
        if (this.i) {
            return;
        }
        ji.dq(this.f2918d, d2);
        this.i = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
        if (this.le) {
            return;
        }
        ji.dq(this.f2918d, d2, str, str2);
        this.le = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2918d, str);
    }

    public void dq(WeakReference<NativeVideoTsView> weakReference) {
        this.wp = weakReference;
        k kVar = this.dq;
        if (kVar != null) {
            kVar.dq(weakReference);
        }
    }

    public void dq(boolean z) {
        this.mp = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s e() {
        return new MediationNativeManagerDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int f() {
        j jVar = this.f2918d;
        if (jVar == null) {
            return -1;
        }
        return jVar.y();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int fw() {
        j jVar = this.f2918d;
        if (jVar == null) {
            return -1;
        }
        return jVar.gv();
    }

    public Context getContext() {
        return this.ox;
    }

    public boolean h() {
        return this.mp;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public View i() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String ia() {
        j jVar = this.f2918d;
        if (jVar == null) {
            return "";
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar) && !TextUtils.isEmpty(ce.iw(this.f2918d))) {
            return ce.iw(this.f2918d);
        }
        if (wp.d().bx()) {
            if (!TextUtils.isEmpty(this.f2918d.gl())) {
                return this.f2918d.gl();
            }
            if (!TextUtils.isEmpty(this.f2918d.lk())) {
                return this.f2918d.lk();
            }
        } else {
            if (!TextUtils.isEmpty(this.f2918d.lk())) {
                return this.f2918d.lk();
            }
            if (!TextUtils.isEmpty(this.f2918d.gl())) {
                return this.f2918d.gl();
            }
        }
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int ig() {
        if (this.f2918d.gm() != null) {
            return this.f2918d.gm().mn();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Bitmap iw() {
        j jVar = this.f2918d;
        if (jVar == null) {
            return BitmapFactory.decodeResource(this.ox.getResources(), r.s(wp.getContext(), "tt_ad_logo_new"));
        }
        String rr = jVar.rr();
        if (TextUtils.isEmpty(rr)) {
            return BitmapFactory.decodeResource(this.ox.getResources(), r.s(wp.getContext(), "tt_ad_logo_new"));
        }
        if (this.r == null) {
            this.r = new TextView(wp.getContext());
            this.r.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.r, rr, wp.getContext());
        return com.bytedance.sdk.openadsdk.core.ir.ce.mn(this.r);
    }

    public boolean ji() {
        return this.ig;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public List<mp> jy() {
        ArrayList arrayList = new ArrayList();
        if (this.f2918d.oh() != null && !this.f2918d.oh().isEmpty()) {
            Iterator<com.bytedance.sdk.openadsdk.core.r.ji> it = this.f2918d.oh().iterator();
            while (it.hasNext()) {
                mp dq = com.bytedance.sdk.openadsdk.core.r.ji.dq(it.next());
                if (dq != null) {
                    arrayList.add(dq);
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void k() {
        n();
        com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.f2918d).dq(this.iw).d(this.mn);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String kk() {
        return this.f2918d.tu();
    }

    public j kx() {
        return this.f2918d;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public Map<String, Object> le() {
        j jVar = this.f2918d;
        if (jVar != null) {
            return jVar.ps();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mn() {
        j jVar = this.f2918d;
        if (jVar == null) {
            return "";
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar) && !TextUtils.isEmpty(ce.ox(this.f2918d))) {
            return ce.ox(this.f2918d);
        }
        if (wp.d().bx()) {
            if (!TextUtils.isEmpty(this.f2918d.lk())) {
                return this.f2918d.lk();
            }
            if (this.f2918d.gm() != null && !TextUtils.isEmpty(this.f2918d.gm().ox())) {
                return this.f2918d.gm().ox();
            }
            if (!TextUtils.isEmpty(mp())) {
                return mp();
            }
        } else {
            if (this.f2918d.gm() != null && !TextUtils.isEmpty(this.f2918d.gm().ox())) {
                return this.f2918d.gm().ox();
            }
            if (!TextUtils.isEmpty(mp())) {
                return mp();
            }
            if (!TextUtils.isEmpty(this.f2918d.lk())) {
                return this.f2918d.lk();
            }
        }
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public String mp() {
        return this.f2918d.w();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int no() {
        if (this.f2918d.gm() != null) {
            return this.f2918d.gm().iw();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public int o() {
        if (this.f2918d.gm() != null) {
            return this.f2918d.gm().s();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    /* renamed from: ox, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.openadsdk.core.r.mp gh() {
        j jVar = this.f2918d;
        if (jVar == null || jVar.y() != 4) {
            return null;
        }
        return new com.bytedance.sdk.openadsdk.core.r.mp(this.f2918d);
    }

    public k p() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public mp q() {
        return com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f2918d) ? TextUtils.isEmpty(ce.kk(this.f2918d)) ? com.bytedance.sdk.openadsdk.core.r.ji.dq(0, 0, "", 0.0d) : com.bytedance.sdk.openadsdk.core.r.ji.dq(ce.no(this.f2918d), ce.o(this.f2918d), ce.kk(this.f2918d), 0.0d) : this.f2918d.wq() == null ? com.bytedance.sdk.openadsdk.core.r.ji.dq(0, 0, "", 0.0d) : com.bytedance.sdk.openadsdk.core.r.ji.dq(this.f2918d.wq());
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public s r() {
        if (this.kk != null && this.f2920f.get()) {
            return null;
        }
        j jVar = this.f2918d;
        boolean z = jVar != null && jVar.y() == 4;
        if (this.s == null && this.dq != null && z) {
            this.s = new s() { // from class: com.bytedance.sdk.openadsdk.core.i.ox.3
                @Override // com.bytedance.sdk.openadsdk.f.d.d.s
                public void d() {
                    com.bytedance.sdk.openadsdk.core.o.d.ox dq;
                    if (ox.this.kx == null || (dq = ox.this.dq.dq()) == null) {
                        return;
                    }
                    dq.mn();
                }

                @Override // com.bytedance.sdk.openadsdk.f.d.d.s
                public void dq() {
                    int q;
                    if (ox.this.kx != null) {
                        com.bytedance.sdk.openadsdk.core.o.d.ox dq = ox.this.dq.dq();
                        if ((dq instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) && (1 == (q = ((com.bytedance.sdk.openadsdk.core.o.ox.ia) dq).q()) || 4 == q || 6 == q || 7 == q)) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("downloadstatuscontroller_type", 1);
                            ox oxVar = ox.this;
                            String dq2 = oxVar.dq(oxVar.iw);
                            kk.dq dqVar = new kk.dq();
                            float iw = com.bytedance.sdk.openadsdk.core.ir.ce.iw(ox.this.ox);
                            com.bytedance.sdk.openadsdk.core.ig.ox.dq("click", ox.this.f2918d, dqVar.dq(iw).dq(com.bytedance.sdk.openadsdk.core.ir.ce.ia(ox.this.ox)).d(com.bytedance.sdk.openadsdk.core.ir.ce.mn(ox.this.ox)).dq(), dq2, true, hashMap, 1, false);
                        }
                        if (dq != null) {
                            dq.p(true);
                            dq.d(c.gh(ox.this.f2918d), false);
                        }
                    }
                }
            };
        }
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public mp s() {
        j jVar = this.f2918d;
        if (jVar == null) {
            return com.bytedance.sdk.openadsdk.core.r.ji.dq(0, 0, "", 0.0d);
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            return TextUtils.isEmpty(ce.ia(this.f2918d)) ? com.bytedance.sdk.openadsdk.core.r.ji.dq(0, 0, "", 0.0d) : com.bytedance.sdk.openadsdk.core.r.ji.dq(ce.mp(this.f2918d), ce.ig(this.f2918d), ce.ia(this.f2918d), 0.0d);
        }
        if (pa.q(this.f2918d) != null) {
            return com.bytedance.sdk.openadsdk.core.r.ji.dq(pa.ox(this.f2918d), pa.p(this.f2918d), pa.d(this.f2918d), 0.0d);
        }
        return com.bytedance.sdk.openadsdk.core.r.ji.dq(0, 0, "", 0.0d);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void wp() {
        com.bytedance.sdk.openadsdk.f.d.p pVar = this.kk;
        if (pVar != null) {
            pVar.s();
        }
        j jVar = this.f2918d;
        if (jVar != null) {
            com.bytedance.sdk.openadsdk.core.e.dq(jVar.ff());
        }
        k kVar = this.dq;
        if (kVar != null) {
            kVar.d();
        }
        this.f2919e.d();
    }
}
