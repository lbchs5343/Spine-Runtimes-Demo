package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.d.dq.ox.ox;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ji;
import com.bytedance.sdk.openadsdk.core.nativeexpress.d;
import com.bytedance.sdk.openadsdk.core.o.d.dq;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.mediation.MediationNativeManagerDefault;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class i extends d {

    /* renamed from: d, reason: collision with root package name */
    protected final Context f3229d;
    protected NativeExpressView dq;
    private iw gh;
    private dq iw;
    private final com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p k;
    private final FrameLayout le;
    private com.bytedance.sdk.openadsdk.core.o.d.dq mn;
    private com.bytedance.sdk.openadsdk.core.o.d.ox no;
    private com.bytedance.sdk.openadsdk.core.dislike.ui.dq o;
    protected j ox;
    private s r;
    protected WeakReference<no> s;
    protected String p = "embeded_ad";
    private long ig = 0;
    private Double mp = null;
    private boolean q = false;
    private boolean jy = false;

    /* renamed from: f, reason: collision with root package name */
    private AtomicBoolean f3231f = new AtomicBoolean(false);
    private AtomicBoolean fw = new AtomicBoolean(false);
    private AtomicBoolean cd = new AtomicBoolean(false);
    private volatile boolean i = false;
    private final ViewGroup wp = new FrameLayout(com.bytedance.sdk.openadsdk.core.wp.getContext());

    /* renamed from: e, reason: collision with root package name */
    private final dq f3230e = new dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.i.1
        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
        public void d(View view, int i) {
            if (i.this.iw != null && !i.this.cd.getAndSet(true)) {
                i.this.iw.d(i.this.wp, i);
            }
            if (i.this.k == null || i.this.k.dq() == null) {
                return;
            }
            i.this.k.dq().p();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
        public void dq(View view, float f2, float f3) {
            i.this.wp.removeAllViews();
            i.this.wp.addView(view);
            i.this.wp.addView(i.this.le, new FrameLayout.LayoutParams((int) f2, (int) f3));
            if (i.this.iw != null) {
                i.this.iw.dq(i.this.wp, f2, f3);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
        public void dq(View view, int i) {
            if (i.this.iw != null) {
                i.this.iw.dq(i.this.wp, i);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
        public void dq(View view, String str, int i) {
            if (i.this.iw != null) {
                i.this.iw.dq(i.this.wp, str, i);
            }
        }
    };

    public i(Context context, final j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.f3229d = context;
        this.ox = jVar;
        dq(context, jVar, dVar);
        this.le = new FrameLayout(context);
        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p pVar = new com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p(jVar, new com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.i.2
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int d() {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    return nativeExpressView.d();
                }
                return 0;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void d(int i) {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.d(i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void d(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.dq(view, i, oxVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long dq() {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    return nativeExpressView.dq();
                }
                return 0L;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(float f2) {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.dq(f2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i) {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.dq(i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i, String str) {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.dq(i, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(View view) {
                i.this.f3230e.dq(view, jVar.y());
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.dq(view, i, oxVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(ViewGroup viewGroup) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long getActualPlayDuration() {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    return nativeExpressView.getActualPlayDuration();
                }
                return 0L;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int ox() {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    return nativeExpressView.ox();
                }
                return 0;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void p() {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void s() {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.s();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void setPauseFromExpressView(boolean z) {
                NativeExpressView nativeExpressView = i.this.dq;
                if (nativeExpressView != null) {
                    nativeExpressView.setPauseFromExpressView(z);
                }
            }
        });
        this.k = pVar;
        this.dq.setEasyPlayableSender(pVar.dq());
        pVar.dq(this.dq.getEasyPlayableLayout(), this.dq.getVideoContainer());
    }

    private void d(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        if (this.o == null) {
            com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(activity, this.ox.ez(), this.p, false);
            this.o = dqVar2;
            com.bytedance.sdk.openadsdk.core.dislike.ox.dq(activity, dqVar2, this.ox);
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar3 = this.o;
        if (dqVar3 != null) {
            dqVar3.dq(this.dq);
        }
        this.o.dq(dqVar);
        NativeExpressView nativeExpressView = this.dq;
        if (nativeExpressView != null) {
            nativeExpressView.setDislike(this.o);
        }
    }

    private EmptyView dq(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar, NativeExpressView nativeExpressView) {
        if (oxVar == null || nativeExpressView == null) {
            return;
        }
        j jVar = this.ox;
        d.dq dqVar = new d.dq(this.mn, jVar != null ? jVar.fx() : "");
        this.ia = dqVar;
        oxVar.dq(dqVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ig() {
        if (!this.i) {
            this.i = true;
            if (this.ox.y() == 4) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("native_register_download") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.i.3
                    @Override // java.lang.Runnable
                    public void run() {
                        i iVar = i.this;
                        iVar.no = com.bytedance.sdk.openadsdk.core.o.s.dq(iVar.f3229d, iVar.ox, iVar.p, false);
                        if (i.this.gh != null) {
                            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) i.this.gh.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(i.this.no);
                        }
                        if (i.this.r != null) {
                            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) i.this.r.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(i.this.no);
                        }
                        i iVar2 = i.this;
                        if (iVar2.f3229d instanceof Activity) {
                            iVar2.no.dq((Activity) i.this.f3229d);
                        }
                        i iVar3 = i.this;
                        iVar3.dq(iVar3.no, i.this.dq);
                        i.this.no.s(false);
                        i.this.no.dq(i.this.ia);
                    }
                });
                return;
            }
            return;
        }
        if (this.no != null) {
            iw iwVar = this.gh;
            if (iwVar != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.no);
            }
            s sVar = this.r;
            if (sVar != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.no);
            }
            try {
                dq(this.no, this.dq);
                this.no.s(false);
                this.no.dq(this.ia);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> mp() {
        HashMap hashMap = new HashMap();
        kx.dq(hashMap, this.ox, this.dq);
        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p pVar = this.k;
        boolean s = (pVar == null || pVar.dq() == null) ? false : this.k.dq().s();
        Boolean le = this.dq.le();
        if (le != null && le.booleanValue()) {
            s = true;
        }
        if (this.dq != null && com.bytedance.sdk.openadsdk.core.ir.i.p(this.ox)) {
            hashMap.put("openPlayableLandingPage", Boolean.valueOf(s));
        }
        return hashMap;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public int d() {
        j jVar = this.ox;
        if (jVar == null) {
            return -1;
        }
        return jVar.gv();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
        this.mp = d2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public View dq() {
        com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.ox);
        return this.wp;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        if (this.o == null) {
            d(activity, null);
        }
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        if (dqVar == null || activity == null) {
            return;
        }
        d(activity, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d
    public void dq(Dialog dialog) {
        if (dialog == null) {
            com.bytedance.sdk.component.utils.ig.d("dialog is null, please check");
            return;
        }
        NativeExpressView nativeExpressView = this.dq;
        if (nativeExpressView != null) {
            nativeExpressView.setOuterDislike(dialog);
        }
    }

    public void dq(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        NativeExpressView nativeExpressView = new NativeExpressView(context, jVar, dVar, this.p);
        this.dq = nativeExpressView;
        this.wp.addView(nativeExpressView);
        dq(this.dq, this.ox);
    }

    public void dq(final com.bytedance.sdk.openadsdk.core.d.dq.ox.ox oxVar) {
        oxVar.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.i.6
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.dq
            public boolean dq() {
                oxVar.dq(i.this.mp());
                oxVar.dq(i.this.p);
                oxVar.dq(i.this.mp);
                boolean z = i.this.f3231f.get();
                i.this.fw.set(!z);
                return z;
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void dq(NativeExpressView nativeExpressView, final j jVar) {
        this.ox = jVar;
        nativeExpressView.setBackupListener(new com.bytedance.sdk.component.adexpress.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.i.4
            @Override // com.bytedance.sdk.component.adexpress.d.ox
            public boolean dq(ViewGroup viewGroup, int i) {
                try {
                    ((NativeExpressView) viewGroup).gh();
                    no noVar = new no(viewGroup.getContext());
                    com.bytedance.sdk.openadsdk.core.video.p.dq.dq(Integer.valueOf(jVar.hashCode()), i.this);
                    i iVar = i.this;
                    noVar.dq(iVar.ox, (NativeExpressView) viewGroup, iVar.no);
                    noVar.setDislikeInner(i.this.o);
                    noVar.setDislikeOuter(i.this.kk);
                    i iVar2 = i.this;
                    j jVar2 = iVar2.ox;
                    if (jVar2 != null) {
                        iVar2.dq(jVar2.ez());
                    }
                    i.this.s = new WeakReference<>(noVar);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar);
        EmptyView dq = dq(nativeExpressView);
        if (dq == null) {
            EmptyView emptyView = new EmptyView(this.f3229d, nativeExpressView, jVar != null ? jVar.vb() : 1000);
            emptyView.setMaterialMeta(this.ox);
            nativeExpressView.addView(emptyView);
            dq = emptyView;
        }
        dq.setCallback(new EmptyView.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.i.5
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void d() {
                if (i.this.no != null) {
                    i.this.no.kk();
                }
                i iVar = i.this;
                iVar.ig = com.bytedance.sdk.openadsdk.core.ig.ox.dq(iVar.ig, jVar, i.this.p);
                i.this.f3231f.set(false);
                i.this.fw.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq() {
                i.this.ig();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(View view) {
                i.this.ig();
                i.this.ig = System.currentTimeMillis();
                Map mp = i.this.mp();
                i.this.f3231f.set(true);
                if (!i.this.fw.get()) {
                    j jVar2 = jVar;
                    i iVar = i.this;
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar2, iVar.p, (Map<String, Object>) mp, iVar.mp);
                    com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
                }
                i.this.f3230e.d(view, jVar.y());
                NativeExpressView nativeExpressView2 = i.this.dq;
                if (nativeExpressView2 != null) {
                    nativeExpressView2.cd();
                    i.this.dq.f();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(boolean z) {
                if (i.this.no != null) {
                    if (z) {
                        i.this.no.ia();
                    } else {
                        com.bytedance.sdk.openadsdk.core.o.d.ox unused = i.this.no;
                    }
                }
                i iVar = i.this;
                iVar.ig = com.bytedance.sdk.openadsdk.core.ig.ox.dq(iVar.ig, z, jVar, i.this.p);
            }
        });
        Context context = this.f3229d;
        String str = this.p;
        iw iwVar = new iw(context, jVar, str, c.dq(str));
        this.gh = iwVar;
        dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        this.gh.dq(nativeExpressView);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.gh.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        this.dq.setClickListener(this.gh);
        Context context2 = this.f3229d;
        String str2 = this.p;
        s sVar = new s(context2, jVar, str2, c.dq(str2));
        this.r = sVar;
        dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        this.r.dq(nativeExpressView);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.r.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        this.dq.setClickCreativeListener(this.r);
        dq.setNeedCheckingShow(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
        this.iw = dq.dq(dVar);
        this.dq.setExpressInteractionListener(this.f3230e);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.dq dqVar) {
        this.iw = dq.dq(dqVar);
        this.dq.setExpressInteractionListener(this.f3230e);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.sdk.openadsdk.core.o.d.dq dq = dq.C0176dq.dq(dVar);
        this.mn = dq;
        d.dq dqVar = this.ia;
        if (dqVar != null) {
            dqVar.dq(dq);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
        if (this.q) {
            return;
        }
        ji.dq(this.ox, d2);
        this.q = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
        if (this.jy) {
            return;
        }
        ji.dq(this.ox, d2, str, str2);
        this.jy = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, str);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(JSONObject jSONObject) {
        NativeExpressView nativeExpressView = this.dq;
        if (nativeExpressView != null) {
            nativeExpressView.dq(jSONObject);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public Map<String, Object> ia() {
        j jVar = this.ox;
        if (jVar == null) {
            return null;
        }
        Map<String, Object> ps = jVar.ps();
        if (ps == null) {
            ps = new HashMap<>();
        }
        if (!ps.containsKey("live_room_id")) {
            ps.put("live_room_id", this.ox.ap());
        }
        if (!ps.containsKey("live_interaction_type")) {
            ps.put("live_interaction_type", Integer.valueOf(this.ox.po()));
        }
        if (this.ox.ur() != null && !ps.containsKey("group_info")) {
            ps.put("group_info", this.ox.ur().p());
        }
        return ps;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.p iw() {
        j jVar = this.ox;
        if (jVar == null || jVar.ez() == null) {
            return null;
        }
        this.ox.ez().d(this.p);
        return new com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.ox.ez());
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s kk() {
        return new MediationNativeManagerDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void mn() {
        NativeExpressView nativeExpressView = this.dq;
        if (nativeExpressView != null) {
            nativeExpressView.k();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d
    public j o() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public int ox() {
        j jVar = this.ox;
        if (jVar == null) {
            return -1;
        }
        return jVar.y();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void p() {
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.o;
        if (dqVar != null) {
            dqVar.dq(this.dq);
        }
        this.dq.fw();
        com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.ox);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void s() {
        super.s();
        NativeExpressView nativeExpressView = this.dq;
        if (nativeExpressView != null) {
            nativeExpressView.mp();
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.no;
        if (oxVar != null) {
            oxVar.kk();
        }
        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p pVar = this.k;
        if (pVar != null) {
            pVar.d();
        }
    }
}
