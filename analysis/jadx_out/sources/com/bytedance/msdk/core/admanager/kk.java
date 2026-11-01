package com.bytedance.msdk.core.admanager;

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
public class kk {

    /* renamed from: d, reason: collision with root package name */
    private final SoftReference<Context> f803d;

    /* renamed from: f, reason: collision with root package name */
    private final com.bytedance.msdk.api.p.dq.dq.dq f804f;
    private final Runnable fw;
    private final Handler ia;
    private ox iw;
    private final View.OnAttachStateChangeListener jy;
    private final Handler kk;
    private RefreshableBannerView mn;
    private com.bytedance.msdk.api.p.dq.dq.p no;
    private com.bytedance.msdk.api.p.dq.dq.dq o;
    private final String ox;
    private com.bytedance.msdk.api.dq.d p;
    private ox s;
    private int dq = 0;
    private SoftReference<Activity> ig = new SoftReference<>(null);
    private SoftReference<com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq> mp = new SoftReference<>(null);
    private SoftReference<TTDislikeDialogAbstract> q = new SoftReference<>(null);

    /* renamed from: com.bytedance.msdk.core.admanager.kk$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kk.this.kk.post(new Runnable() { // from class: com.bytedance.msdk.core.admanager.kk.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (kk.this.dq == 0 || kk.this.iw == null) {
                        return;
                    }
                    View dq = kk.this.iw.dq((Context) kk.this.f803d.get());
                    if (dq != null) {
                        kk kkVar = kk.this;
                        kkVar.d(kkVar.iw);
                        if (kk.this.mn != null) {
                            kk.this.mn.dq(dq);
                        }
                        kk.this.kk.postDelayed(new Runnable() { // from class: com.bytedance.msdk.core.admanager.kk.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (kk.this.s != null) {
                                    kk.this.s.d();
                                }
                                kk kkVar2 = kk.this;
                                kkVar2.s = kkVar2.iw;
                                kk.this.fw();
                            }
                        }, 250L);
                    } else {
                        if (kk.this.iw != null) {
                            kk.this.iw.d();
                        }
                        kk.this.fw();
                    }
                    kk.this.jy();
                }
            });
        }
    }

    public kk(Context context, String str) {
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.bytedance.msdk.core.admanager.kk.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (kk.this.dq == 0) {
                    return;
                }
                kk.this.fw();
                kk.this.jy();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                kk.this.f();
            }
        };
        this.jy = onAttachStateChangeListener;
        this.f804f = new com.bytedance.msdk.api.p.dq.dq.dq() { // from class: com.bytedance.msdk.core.admanager.kk.2
            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void C_() {
                kk.this.f();
                if (kk.this.o != null) {
                    kk.this.o.C_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void a_(com.bytedance.msdk.api.dq dqVar) {
                if (kk.this.o != null) {
                    kk.this.o.a_(dqVar);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void d(View view) {
                if (kk.this.o != null) {
                    kk.this.o.d(view);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void dq(View view) {
                if (kk.this.o != null) {
                    kk.this.o.dq(view);
                }
            }
        };
        this.fw = new AnonymousClass3();
        this.f803d = new SoftReference<>(context);
        this.ox = str;
        this.s = new ox(context, str);
        if (context != null) {
            RefreshableBannerView refreshableBannerView = new RefreshableBannerView(context);
            this.mn = refreshableBannerView;
            refreshableBannerView.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.mn.setVisibilityChangeListener(new RefreshableBannerView.dq() { // from class: com.bytedance.msdk.core.admanager.kk.4
                @Override // com.bytedance.msdk.core.views.RefreshableBannerView.dq
                public void dq(boolean z) {
                    if (!z) {
                        kk.this.f();
                    } else {
                        if (kk.this.dq == 0) {
                            return;
                        }
                        kk.this.jy();
                    }
                }
            });
        }
        this.ia = new Handler(com.bytedance.msdk.dq.s.iw.d());
        this.kk = new Handler(Looper.getMainLooper());
        dq(this.s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(ox oxVar) {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.q.get();
        if (tTDislikeDialogAbstract != null) {
            oxVar.dq(tTDislikeDialogAbstract);
        }
        Activity activity = this.ig.get();
        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar = this.mp.get();
        if (activity == null || dqVar == null) {
            return;
        }
        oxVar.dq(activity, dqVar);
    }

    private void dq(ox oxVar) {
        com.bytedance.msdk.core.no.d j_ = oxVar.j_();
        if (j_ != null) {
            int kk = j_.kk(1);
            if (kk < 10000 || kk > 180000) {
                com.bytedance.msdk.dq.s.ox.dq("TMe", "---==-----banner轮播时间下发不在10*1000～180*1000范围内：" + kk + "，禁止banner轮播");
                return;
            }
            this.dq = kk;
            com.bytedance.msdk.dq.s.ox.dq("TMe", "---==-----banner轮播时间：" + this.dq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.ia.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fw() {
        Context context;
        SoftReference<Context> softReference = this.f803d;
        if (softReference == null || (context = softReference.get()) == null) {
            return;
        }
        ox oxVar = new ox(context, this.ox);
        this.iw = oxVar;
        oxVar.dq(this.f804f);
        this.iw.dq(this.no);
        dq(this.iw);
        this.iw.dq(this.p, (com.bytedance.msdk.api.p.dq.dq.d) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jy() {
        this.ia.removeCallbacksAndMessages(null);
        this.ia.postDelayed(this.fw, this.dq);
    }

    public void d() {
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.k_();
        }
    }

    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.dq(activity);
        }
        return null;
    }

    public void dq() {
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.mn();
        }
    }

    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.ig = new SoftReference<>(activity);
        this.mp = new SoftReference<>(dqVar);
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.dq.d dVar2) {
        if (this.s != null) {
            this.p = dVar;
            if (!com.bytedance.msdk.core.dq.d().dq(this.s.j(), 1) && dVar2 != null) {
                dVar2.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
                return;
            }
            if (com.bytedance.msdk.core.dq.d().jy()) {
                this.s.dq(this.p.cd());
                this.s.dq(this.p, dVar2);
            } else if (dVar2 != null) {
                dVar2.dq(new com.bytedance.msdk.api.dq(840032, com.bytedance.msdk.api.dq.dq(840032)));
            }
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.dq dqVar) {
        this.o = dqVar;
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(this.f804f);
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.dq.p pVar) {
        this.no = pVar;
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(pVar);
        }
    }

    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        this.q = new SoftReference<>(tTDislikeDialogAbstract);
    }

    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        ox oxVar2 = this.s;
        if (oxVar2 != null) {
            oxVar2.dq(oxVar);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(dVar);
        }
    }

    public void dq(String str) {
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.a_(str);
        }
    }

    public List<com.bytedance.msdk.api.d> ia() {
        ox oxVar = this.s;
        return oxVar != null ? oxVar.ds() : new ArrayList();
    }

    public com.bytedance.msdk.api.ox ig() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.o();
        }
        return null;
    }

    public int iw() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.kk();
        }
        return 0;
    }

    public List<com.bytedance.msdk.api.ox> kk() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.nh();
        }
        return null;
    }

    public Map<String, Object> mn() {
        ox oxVar = this.s;
        return oxVar != null ? oxVar.xi() : new HashMap();
    }

    public int mp() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.z();
        }
        return -1;
    }

    public List<com.bytedance.msdk.api.ox> no() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.ob();
        }
        return null;
    }

    public com.bytedance.msdk.api.ox o() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.vf();
        }
        return null;
    }

    public void ox() {
        this.kk.removeCallbacksAndMessages(null);
        f();
        RefreshableBannerView refreshableBannerView = this.mn;
        if (refreshableBannerView != null) {
            refreshableBannerView.removeOnAttachStateChangeListener(this.jy);
        }
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.d();
        }
        ox oxVar2 = this.iw;
        if (oxVar2 != null) {
            oxVar2.d();
        }
    }

    public boolean p() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.iw();
        }
        return false;
    }

    public com.bytedance.sdk.openadsdk.f.d.d.p q() {
        ox oxVar = this.s;
        if (oxVar != null) {
            return oxVar.no();
        }
        return null;
    }

    public View s() {
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.d((com.bytedance.msdk.d.s) null);
            View dq = this.s.dq(this.f803d.get());
            if (dq != null && this.mn != null) {
                d(this.s);
                this.mn.removeAllViews();
                ViewParent parent = dq.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(dq);
                }
                this.mn.addView(dq);
                return this.mn;
            }
        }
        return null;
    }
}
