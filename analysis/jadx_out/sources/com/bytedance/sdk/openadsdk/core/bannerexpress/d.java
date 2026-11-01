package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.d.dq.ox.ox;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.ir.ji;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.d;
import com.bytedance.sdk.openadsdk.core.nativeexpress.iw;
import com.bytedance.sdk.openadsdk.core.nativeexpress.kx;
import com.bytedance.sdk.openadsdk.core.nativeexpress.p;
import com.bytedance.sdk.openadsdk.core.nativeexpress.s;
import com.bytedance.sdk.openadsdk.core.o.d.dq;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.mediation.MediationNativeManagerDefault;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.core.nativeexpress.d implements e.dq {

    /* renamed from: d, reason: collision with root package name */
    protected final Context f2468d;
    protected dq dq;

    /* renamed from: e, reason: collision with root package name */
    private s f2469e;
    private e ig;
    protected com.bytedance.sdk.openadsdk.core.o.d.dq iw;
    private volatile View k;
    private NativeExpressView kx;
    protected WeakReference<BannerExpressBackupView> mn;
    private int mp;
    private com.bytedance.sdk.openadsdk.core.dislike.ui.dq no;
    private com.bytedance.sdk.openadsdk.core.o.d.ox o;
    protected j ox;
    protected com.bytedance.sdk.openadsdk.f.d.ox.d p;
    private com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq q;
    protected com.bytedance.sdk.openadsdk.core.nativeexpress.dq s;
    private iw wp;
    private String jy = "banner_ad";

    /* renamed from: f, reason: collision with root package name */
    private final Queue<Long> f2470f = new LinkedList();
    private Double fw = null;
    private boolean cd = false;
    private boolean gh = false;
    private AtomicBoolean r = new AtomicBoolean(false);
    private AtomicBoolean i = new AtomicBoolean(false);
    private AtomicBoolean le = new AtomicBoolean(false);

    public d(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.f2468d = context;
        this.ox = jVar;
        this.p = dVar;
        dq(context, jVar, dVar);
        dq(this.dq.getCurView(), this.ox, false);
    }

    private void d(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        if (this.no == null) {
            com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(activity, this.ox.ez(), this.jy, false);
            this.no = dqVar2;
            com.bytedance.sdk.openadsdk.core.dislike.ox.dq(activity, dqVar2, this.ox);
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar3 = this.no;
        if (dqVar3 != null) {
            dqVar3.dq(this.dq);
        }
        this.no.dq(dqVar);
        dq dqVar4 = this.dq;
        if (dqVar4 == null || dqVar4.getCurView() == null) {
            return;
        }
        this.dq.getCurView().setDislike(this.no);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(j jVar) {
        Queue<Long> queue = this.f2470f;
        if (queue == null || queue.size() <= 0 || jVar == null) {
            return;
        }
        try {
            long longValue = this.f2470f.poll().longValue();
            if (longValue > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis() - longValue);
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(sb.toString(), jVar, this.jy);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private EmptyView dq(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            try {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof EmptyView) {
                    return (EmptyView) childAt;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> dq(NativeExpressView nativeExpressView, j jVar) {
        HashMap hashMap = new HashMap();
        kx.dq(hashMap, this.ox, nativeExpressView);
        dq dqVar = this.dq;
        if (dqVar != null && dqVar.getCurView() != null && i.p(jVar)) {
            hashMap.put("openPlayableLandingPage", this.dq.getCurView().le());
        }
        return hashMap;
    }

    private void dq(NativeExpressView nativeExpressView, com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        if (dVar == null) {
            return;
        }
        if (this.q != null) {
            this.no.dq(dVar);
            if (nativeExpressView != null) {
                nativeExpressView.setDislike(this.no);
            }
        }
        if (this.kk != null) {
            dq(dVar);
            if (nativeExpressView != null) {
                nativeExpressView.setOuterDislike(this.kk);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar, NativeExpressView nativeExpressView) {
        if (oxVar == null || nativeExpressView == null) {
            return;
        }
        j jVar = this.ox;
        d.dq dqVar = new d.dq(this.iw, jVar != null ? jVar.fx() : "");
        this.ia = dqVar;
        oxVar.dq(dqVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(j jVar) {
        if (this.dq.getNextView() == null || !this.dq.d()) {
            return;
        }
        dq(this.dq.getNextView(), jVar.ez());
        this.le.set(false);
        dq(this.dq.getNextView(), jVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(boolean z, j jVar) {
        Queue<Long> queue = this.f2470f;
        if (queue == null) {
            return;
        }
        try {
            if (z) {
                queue.offer(Long.valueOf(System.currentTimeMillis()));
            } else if (queue.size() > 0) {
                long longValue = this.f2470f.poll().longValue();
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis() - longValue);
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(sb.toString(), jVar, this.jy);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ig() {
        if (this.ox.y() == 4) {
            mn.dq(new kk("banner_express_register_download") { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.d.1
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.ox.y() == 4) {
                        d dVar = d.this;
                        dVar.o = com.bytedance.sdk.openadsdk.core.o.s.dq(dVar.f2468d, dVar.ox, dVar.jy, false);
                        d.this.o.ia();
                        d dVar2 = d.this;
                        if (dVar2.f2468d instanceof Activity) {
                            dVar2.o.dq((Activity) d.this.f2468d);
                        }
                        if (d.this.wp != null) {
                            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) d.this.wp.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(d.this.o);
                        }
                        if (d.this.f2469e != null) {
                            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) d.this.f2469e.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(d.this.o);
                        }
                        d dVar3 = d.this;
                        dVar3.dq(dVar3.o, d.this.kx);
                        d.this.o.s(false);
                    }
                }
            });
        }
    }

    private void jy() {
        p.dq(this.f2468d).dq(this.p, 1, null, new p.d(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.d.6
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.p.dq
            public void dq() {
                d.this.mp();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.p.dq
            public void dq(List<j> list) {
                if (list == null || list.isEmpty()) {
                    d.this.mp();
                    return;
                }
                j jVar = list.get(0);
                d dVar = d.this;
                dVar.dq.dq(jVar, dVar.p);
                d.this.dq(jVar);
                d.this.dq.ox();
            }
        }), MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mp() {
        e eVar;
        if (this.k == null || !this.k.isShown() || (eVar = this.ig) == null) {
            return;
        }
        eVar.removeCallbacksAndMessages(null);
        this.ig.sendEmptyMessageDelayed(112201, this.mp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        e eVar = this.ig;
        if (eVar != null) {
            eVar.removeCallbacksAndMessages(null);
        }
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
        this.fw = d2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public View dq() {
        com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.ox).dq(1);
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public ia dq(Activity activity) {
        if (this.no == null) {
            d(activity, (com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq) null);
        }
        return this.no;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(int i) {
        if (i <= 0) {
            return;
        }
        this.jy = "slide_banner_ad";
        dq(this.dq.getCurView(), this.ox, false);
        this.dq.setDuration(1000);
        if (i < 30000) {
            i = 30000;
        } else if (i > 120000) {
            i = 120000;
        }
        this.mp = i;
        this.ig = new e(Looper.getMainLooper(), this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        if (dqVar == null || activity == null) {
            return;
        }
        this.q = dqVar;
        d(activity, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d
    public void dq(Dialog dialog) {
        if (dialog == null) {
            ig.d("dialog is null, please check");
            return;
        }
        dq dqVar = this.dq;
        if (dqVar == null || dqVar.getCurView() == null) {
            return;
        }
        this.dq.getCurView().setOuterDislike(dialog);
    }

    public void dq(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.dq = new dq(context, jVar, dVar);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what == 112201 && this.k != null && this.k.isShown()) {
            jy();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void dq(final NativeExpressView nativeExpressView, final j jVar, boolean z) {
        if (nativeExpressView == null || jVar == null) {
            return;
        }
        this.kx = nativeExpressView;
        this.ox = jVar;
        nativeExpressView.setBackupListener(new com.bytedance.sdk.component.adexpress.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.d.2
            @Override // com.bytedance.sdk.component.adexpress.d.ox
            public boolean dq(ViewGroup viewGroup, int i) {
                try {
                    ((NativeExpressView) viewGroup).gh();
                    BannerExpressBackupView bannerExpressBackupView = new BannerExpressBackupView(viewGroup.getContext());
                    d dVar = d.this;
                    bannerExpressBackupView.dq(dVar.ox, (NativeExpressView) viewGroup, dVar.o);
                    bannerExpressBackupView.setDislikeInner(d.this.no);
                    bannerExpressBackupView.setDislikeOuter(((com.bytedance.sdk.openadsdk.core.nativeexpress.d) d.this).kk);
                    d dVar2 = d.this;
                    if (dVar2.ox != null) {
                        dVar2.dq(jVar.ez());
                    }
                    d.this.mn = new WeakReference<>(bannerExpressBackupView);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar);
        EmptyView dq = dq(nativeExpressView);
        if (dq == null) {
            EmptyView emptyView = new EmptyView(this.f2468d, nativeExpressView, jVar.vb());
            emptyView.setMaterialMeta(this.ox);
            nativeExpressView.addView(emptyView);
            dq = emptyView;
        }
        this.k = dq;
        dq.setCallback(new EmptyView.dq() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.d.3
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void d() {
                if (d.this.o != null) {
                    d.this.o.kk();
                }
                d.this.d(jVar);
                d.this.r.set(false);
                d.this.i.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq() {
                d.this.ig();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(View view) {
                if (d.this.f2470f != null) {
                    d.this.f2470f.offer(Long.valueOf(System.currentTimeMillis()));
                }
                Map dq2 = d.this.dq(nativeExpressView, jVar);
                d.this.r.set(true);
                if (!d.this.i.get()) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, d.this.jy, (Map<String, Object>) dq2, d.this.fw);
                    com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
                }
                d dVar = d.this;
                if (dVar.s != null && !dVar.le.getAndSet(true)) {
                    d.this.s.d(view, jVar.y());
                }
                d.this.mp();
                dq dqVar = d.this.dq;
                if (dqVar == null || dqVar.getCurView() == null) {
                    return;
                }
                d.this.dq.getCurView().cd();
                d.this.dq.getCurView().f();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(boolean z2) {
                String unused = d.this.jy;
                if (d.this.o != null) {
                    if (z2) {
                        d.this.o.ia();
                    } else {
                        com.bytedance.sdk.openadsdk.core.o.d.ox unused2 = d.this.o;
                    }
                }
                if (z2) {
                    d.this.mp();
                } else {
                    d.this.q();
                }
                d.this.dq(z2, jVar);
            }
        });
        iw iwVar = new iw(this.f2468d, jVar, this.jy, 2);
        this.wp = iwVar;
        final com.bytedance.sdk.openadsdk.core.d.dq.ox.ox oxVar = (com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class);
        oxVar.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.d.4
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.dq
            public boolean dq() {
                oxVar.dq(d.this.dq(nativeExpressView, jVar));
                oxVar.dq(d.this.jy);
                oxVar.dq(d.this.fw);
                boolean z2 = d.this.r.get();
                d.this.i.set(!z2);
                return z2;
            }
        });
        this.wp.dq(nativeExpressView);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.wp.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        nativeExpressView.setClickListener(this.wp);
        s sVar = new s(this.f2468d, jVar, this.jy, 2);
        this.f2469e = sVar;
        final com.bytedance.sdk.openadsdk.core.d.dq.ox.ox oxVar2 = (com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class);
        oxVar2.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.d.5
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.dq
            public boolean dq() {
                oxVar2.dq(d.this.dq(nativeExpressView, jVar));
                oxVar2.dq(d.this.jy);
                oxVar2.dq(d.this.fw);
                boolean z2 = d.this.r.get();
                d.this.i.set(!z2);
                return z2;
            }
        });
        this.f2469e.dq(nativeExpressView);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.f2469e.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        nativeExpressView.setClickCreativeListener(this.f2469e);
        dq.setNeedCheckingShow(true);
        if (z) {
            ig();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.dq dq = com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq(dVar);
        this.s = dq;
        this.dq.setExpressInteractionListener(dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.dq dq = com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq(dqVar);
        this.s = dq;
        this.dq.setExpressInteractionListener(dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.sdk.openadsdk.core.o.d.dq dq = dq.C0176dq.dq(dVar);
        this.iw = dq;
        d.dq dqVar = this.ia;
        if (dqVar != null) {
            dqVar.dq(dq);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
        if (this.cd) {
            return;
        }
        ji.dq(this.ox, d2);
        this.cd = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
        if (this.gh) {
            return;
        }
        ji.dq(this.ox, d2, str, str2);
        this.gh = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, str);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public Map<String, Object> ia() {
        j jVar = this.ox;
        if (jVar != null) {
            return jVar.ps();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.p iw() {
        j jVar = this.ox;
        if (jVar == null || jVar.ez() == null) {
            return null;
        }
        this.ox.ez().d(this.jy);
        return new com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.ox.ez());
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s kk() {
        return new MediationNativeManagerDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void mn() {
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
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.no;
        if (dqVar != null) {
            dqVar.dq(this.dq);
        }
        this.dq.s();
        com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.ox).dq(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void s() {
        super.s();
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.p();
        }
        e eVar = this.ig;
        if (eVar != null) {
            eVar.removeCallbacksAndMessages(null);
            this.ig = null;
        }
    }
}
