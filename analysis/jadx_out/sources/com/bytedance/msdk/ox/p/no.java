package com.bytedance.msdk.ox.p;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.bytedance.msdk.core.views.RefreshableBannerView;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class no {

    /* renamed from: d, reason: collision with root package name */
    private final SoftReference<Context> f1217d;

    /* renamed from: f, reason: collision with root package name */
    private final Runnable f1218f;
    private final Handler ia;
    private RefreshableBannerView iw;
    private final com.bytedance.msdk.api.p.dq.dq.dq jy;
    private com.bytedance.msdk.api.p.dq.dq.dq kk;
    private final Handler mn;
    private com.bytedance.msdk.api.p.dq.dq.p o;
    private com.bytedance.msdk.api.dq.d ox;
    private iw p;
    private final View.OnAttachStateChangeListener q;
    private iw s;
    private int dq = 0;
    private SoftReference<Activity> no = new SoftReference<>(null);
    private SoftReference<com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq> ig = new SoftReference<>(null);
    private SoftReference<TTDislikeDialogAbstract> mp = new SoftReference<>(null);

    /* renamed from: com.bytedance.msdk.ox.p.no$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            no.this.ia.post(new Runnable() { // from class: com.bytedance.msdk.ox.p.no.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (no.this.dq == 0 || no.this.s == null) {
                        return;
                    }
                    View dq = no.this.s.dq((Context) no.this.f1217d.get());
                    if (dq != null) {
                        no noVar = no.this;
                        noVar.dq(noVar.s);
                        if (no.this.iw != null) {
                            no.this.iw.dq(dq);
                        }
                        no.this.ia.postDelayed(new Runnable() { // from class: com.bytedance.msdk.ox.p.no.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (no.this.p != null) {
                                    no.this.p.dq();
                                }
                                no noVar2 = no.this;
                                noVar2.p = noVar2.s;
                                no.this.fw();
                            }
                        }, 250L);
                    } else {
                        if (no.this.s != null) {
                            no.this.s.dq();
                        }
                        no.this.fw();
                    }
                    no.this.jy();
                }
            });
        }
    }

    public no(Context context) {
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.bytedance.msdk.ox.p.no.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (no.this.dq == 0) {
                    return;
                }
                no.this.fw();
                no.this.jy();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                no.this.f();
            }
        };
        this.q = onAttachStateChangeListener;
        this.jy = new com.bytedance.msdk.api.p.dq.dq.dq() { // from class: com.bytedance.msdk.ox.p.no.2
            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void C_() {
                no.this.f();
                if (no.this.kk != null) {
                    no.this.kk.C_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void a_(com.bytedance.msdk.api.dq dqVar) {
                if (no.this.kk != null) {
                    no.this.kk.a_(dqVar);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void d(View view) {
                if (no.this.kk != null) {
                    no.this.kk.d(view);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void dq(View view) {
                if (no.this.kk != null) {
                    no.this.kk.dq(view);
                }
            }
        };
        this.f1218f = new AnonymousClass3();
        this.f1217d = new SoftReference<>(context);
        this.p = new iw(context);
        if (context != null) {
            RefreshableBannerView refreshableBannerView = new RefreshableBannerView(context);
            this.iw = refreshableBannerView;
            refreshableBannerView.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.iw.setVisibilityChangeListener(new RefreshableBannerView.dq() { // from class: com.bytedance.msdk.ox.p.no.4
                @Override // com.bytedance.msdk.core.views.RefreshableBannerView.dq
                public void dq(boolean z) {
                    if (!z) {
                        no.this.f();
                    } else {
                        if (no.this.dq == 0) {
                            return;
                        }
                        no.this.jy();
                    }
                }
            });
        }
        this.mn = new Handler(com.bytedance.msdk.dq.s.iw.d());
        this.ia = new Handler(Looper.getMainLooper());
    }

    private void dq(com.bytedance.msdk.api.dq.d dVar) {
        com.bytedance.msdk.core.no.d dq;
        if (dVar == null || (dq = com.bytedance.msdk.core.dq.d().dq(dVar.k(), 1, 100)) == null) {
            return;
        }
        int kk = dq.kk(1);
        if (kk < 10000 || kk > 180000) {
            com.bytedance.msdk.dq.s.ox.dq("TMe", "---==-----banner轮播时间下发不在10*1000～180*1000范围内：" + kk + "，禁止banner轮播");
            return;
        }
        this.dq = kk;
        com.bytedance.msdk.dq.s.ox.dq("TMe", "---==-----banner轮播时间：" + this.dq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(iw iwVar) {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.mp.get();
        if (tTDislikeDialogAbstract != null) {
            iwVar.dq(tTDislikeDialogAbstract);
        }
        Activity activity = this.no.get();
        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar = this.ig.get();
        if (activity == null || dqVar == null) {
            return;
        }
        iwVar.dq(activity, dqVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.mn.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fw() {
        Context context;
        SoftReference<Context> softReference = this.f1217d;
        if (softReference == null || (context = softReference.get()) == null) {
            return;
        }
        iw iwVar = new iw(context);
        this.s = iwVar;
        iwVar.dq(this.jy);
        this.s.dq(this.o);
        dq(this.ox);
        this.s.dq(this.ox, (com.bytedance.msdk.api.p.dq.dq.d) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jy() {
        this.mn.removeCallbacksAndMessages(null);
        this.mn.postDelayed(this.f1218f, this.dq);
    }

    public void d() {
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.iw();
        }
    }

    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.dq(activity);
        }
        return null;
    }

    public void dq() {
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.s();
        }
    }

    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.no = new SoftReference<>(activity);
        this.ig = new SoftReference<>(dqVar);
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.dq.d dVar2) {
        SoftReference<Context> softReference;
        if (this.p == null || (softReference = this.f1217d) == null || softReference.get() == null) {
            return;
        }
        this.ox = dVar;
        dq(dVar);
        if (!com.bytedance.msdk.core.dq.d().dq(dVar.k(), 1) && dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
        } else if (com.bytedance.msdk.core.dq.d().jy()) {
            this.p.dq(this.ox, dVar2);
        } else if (dVar2 != null) {
            dVar2.dq(new com.bytedance.msdk.api.dq(840032, com.bytedance.msdk.api.dq.dq(840032)));
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.dq dqVar) {
        this.kk = dqVar;
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.dq(this.jy);
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.p pVar) {
        this.o = pVar;
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.dq(pVar);
        }
    }

    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        this.mp = new SoftReference<>(tTDislikeDialogAbstract);
    }

    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.dq(oxVar);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.dq(dVar);
        }
    }

    public void dq(String str) {
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.p(str);
        }
    }

    public List<com.bytedance.msdk.api.d> ia() {
        iw iwVar = this.p;
        return iwVar != null ? iwVar.ig() : new ArrayList();
    }

    public com.bytedance.msdk.api.ox ig() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.fw();
        }
        return null;
    }

    public int iw() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.p();
        }
        return 0;
    }

    public List<com.bytedance.msdk.api.ox> kk() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.mp();
        }
        return null;
    }

    public Map<String, Object> mn() {
        iw iwVar = this.p;
        return iwVar != null ? iwVar.r() : new HashMap();
    }

    public int mp() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.gh();
        }
        return -1;
    }

    public List<com.bytedance.msdk.api.ox> no() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.q();
        }
        return null;
    }

    public com.bytedance.msdk.api.ox o() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.cd();
        }
        return null;
    }

    public void ox() {
        this.ia.removeCallbacksAndMessages(null);
        f();
        RefreshableBannerView refreshableBannerView = this.iw;
        if (refreshableBannerView != null) {
            refreshableBannerView.removeOnAttachStateChangeListener(this.q);
        }
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.dq();
        }
        iw iwVar2 = this.s;
        if (iwVar2 != null) {
            iwVar2.dq();
        }
    }

    public boolean p() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.ox();
        }
        return false;
    }

    public com.bytedance.sdk.openadsdk.f.d.d.p q() {
        iw iwVar = this.p;
        if (iwVar != null) {
            return iwVar.mn();
        }
        return null;
    }

    public View s() {
        iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.dq((com.bytedance.msdk.d.s) null);
            View dq = this.p.dq(this.f1217d.get());
            if (dq != null && this.iw != null) {
                dq(this.p);
                this.iw.removeAllViews();
                ViewParent parent = dq.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(dq);
                }
                this.iw.addView(dq);
                return this.iw;
            }
        }
        return null;
    }
}
