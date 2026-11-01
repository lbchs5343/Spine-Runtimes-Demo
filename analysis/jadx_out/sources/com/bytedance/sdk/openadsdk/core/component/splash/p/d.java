package com.bytedance.sdk.openadsdk.core.component.splash.p;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.splash.TsView;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.component.splash.p.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.SplashExpressBackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.iw;
import com.bytedance.sdk.openadsdk.core.nativeexpress.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.kx;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class d extends dq implements ox.InterfaceC0004ox, ox.p, dq.d, dq.InterfaceC0174dq {
    private NativeExpressView ce;
    private Context er;
    private String j;
    private p l;
    private int nh;
    private WeakReference<ViewGroup> ob;
    private final AtomicBoolean vf = new AtomicBoolean(false);
    private com.bytedance.sdk.openadsdk.f.d.ox.d wn;

    /* renamed from: com.bytedance.sdk.openadsdk.core.component.splash.p.d$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.bytedance.sdk.openadsdk.f.d.ox.d f2758d;
        final /* synthetic */ Context dq;
        final /* synthetic */ com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p iw;
        final /* synthetic */ com.bytedance.sdk.openadsdk.core.component.splash.dq.dq mn;
        final /* synthetic */ String ox;
        final /* synthetic */ int p;
        final /* synthetic */ com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox s;

        public AnonymousClass1(Context context, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str, int i, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox oxVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p pVar, com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar) {
            this.dq = context;
            this.f2758d = dVar;
            this.ox = str;
            this.p = i;
            this.s = oxVar;
            this.iw = pVar;
            this.mn = dqVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d.this.er = this.dq;
                d.this.wn = this.f2758d;
                d.this.j = this.ox;
                d.this.nh = this.p;
                d dVar = d.this;
                dVar.dq((dq.d) dVar);
                d.this.dq(this.s, this.iw, this.mn);
                d dVar2 = d.this;
                dVar2.l = new p(dVar2.f2761d, new com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.d.1.1
                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
                    public int d() {
                        return 0;
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
                    public void d(int i) {
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
                    public void d(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                        if (d.this.ce != null) {
                            d.this.ce.dq(view, i, oxVar);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
                    public long dq() {
                        return 0L;
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
                    public void dq(float f2) {
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
                    public void dq(int i) {
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
                    public void dq(int i, String str) {
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
                    public void dq(View view) {
                        d dVar3 = d.this;
                        com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar = dVar3.ia;
                        if (dqVar != null) {
                            dqVar.d(dVar3);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
                    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                        if (d.this.ce != null) {
                            d.this.ce.dq(view, i, oxVar);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
                    public void dq(ViewGroup viewGroup) {
                        if (kx.iw(d.this.f2761d).s()) {
                            TextView textView = new TextView(d.this.er);
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                            textView.setTextSize(1, 20.0f);
                            int ox = ce.ox(wp.getContext(), 80.0f);
                            textView.setText("跳转至详情页或第三方应用");
                            layoutParams.bottomMargin = ox;
                            int i = ox / 3;
                            layoutParams.leftMargin = i;
                            layoutParams.rightMargin = i;
                            layoutParams.gravity = 81;
                            textView.setTextColor(-1);
                            int i2 = ox / 6;
                            textView.setPadding(0, i2, 0, i2);
                            textView.setGravity(17);
                            textView.setLayoutParams(layoutParams);
                            textView.setClickable(true);
                            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.d.1.1.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    if (d.this.ce != null) {
                                        d.this.ce.dq(view, 2, new k.dq().dq());
                                    }
                                }
                            });
                            textView.bringToFront();
                            viewGroup.addView(textView);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
                    public long getActualPlayDuration() {
                        return 0L;
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
                    public void setPauseFromExpressView(boolean z) {
                    }
                });
            } catch (Throwable th) {
                ig.p("splrender", th.getMessage());
            }
        }
    }

    public d(Context context, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str, int i, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox oxVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<kk, mn> pVar, com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new AnonymousClass1(context, dVar, str, i, oxVar, pVar, dqVar));
    }

    private void cd() {
        if (this.f2761d.ho() == 2) {
            this.ce = new NativeExpressVideoView(true, this.er, this.f2761d, this.wn, this.j);
        } else {
            this.ce = new NativeExpressVideoView(false, this.er, this.f2761d, this.wn, this.j);
        }
        if (this.ce.getVideoController() instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) {
            this.bl = (com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) this.ce.getVideoController();
        }
        this.ce.setVideoAdListener(this);
        this.ce.setVideoAdInteractionListener(this);
    }

    private void dq(final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<kk, mn> pVar) {
        if (pVar == null || this.f2761d == null) {
            return;
        }
        if (this.h) {
            this.gh = true;
            cd();
        } else {
            this.gh = false;
            fw();
        }
        this.k.dq(this);
        NativeExpressView nativeExpressView = this.ce;
        if (nativeExpressView == null) {
            this.k.d(3);
            this.k.dq("no render express");
            pVar.dq(this.k);
        } else {
            nativeExpressView.setBackupListener(new com.bytedance.sdk.component.adexpress.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.d.2
                @Override // com.bytedance.sdk.component.adexpress.d.ox
                public boolean dq(ViewGroup viewGroup, int i) {
                    try {
                        SplashExpressBackupView splashExpressBackupView = new SplashExpressBackupView(d.this.er);
                        d dVar = d.this;
                        splashExpressBackupView.dq(dVar.kx, dVar.f2761d, (NativeExpressView) viewGroup);
                        if (splashExpressBackupView.getVideoController() instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) {
                            d.this.bl = (com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) splashExpressBackupView.getVideoController();
                        }
                        splashExpressBackupView.setVideoAdListener(d.this);
                        d.this.mp();
                        TsView tsView = ((dq) d.this).dq;
                        if (tsView == null) {
                            return true;
                        }
                        tsView.dq();
                        return true;
                    } catch (Exception unused) {
                        return false;
                    }
                }
            });
            this.no = 3;
            this.ce.setExpressInteractionListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.d.3
                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
                public void dq(View view, float f2, float f3) {
                    if (view == null || f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        d.this.k.d(3);
                        d.this.k.dq("render splash view error");
                        pVar.dq(d.this.k);
                        return;
                    }
                    kk kkVar = new kk(d.this.ir.get(), d.this);
                    if (d.this.ce != null && !d.this.ce.i()) {
                        ((dq) d.this).dq.setComplianceBarVisibility(8);
                    }
                    kkVar.dq(d.this.ce.i());
                    d.this.wp.set(true);
                    d dVar = d.this;
                    ((dq) dVar).dq.setExpressView(dVar.ce);
                    d.this.vf.set(true);
                    if (d.this.f2762e.get()) {
                        d dVar2 = d.this;
                        dVar2.dq((WeakReference<ViewGroup>) dVar2.ob);
                        d.this.f2762e.set(false);
                    }
                    pVar.d(kkVar);
                    d.this.l.dq(((dq) d.this).dq.getEasyPlayableLayout(), d.this.ce.getVideoContainer());
                }

                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
                public void dq(View view, int i) {
                    d dVar = d.this;
                    com.bytedance.sdk.openadsdk.core.ig.ox.d(dVar.q, dVar.f2761d);
                    d dVar2 = d.this;
                    com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar = dVar2.ia;
                    if (dqVar != null) {
                        dqVar.d(dVar2);
                    }
                    d.this.ig();
                }

                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
                public void dq(View view, String str, int i) {
                    ig.p(MediationConstant.RIT_TYPE_SPLASH, "onRenderFail:".concat(String.valueOf(str)));
                    d.this.k.d(3);
                    d.this.k.dq("render splash express fail");
                    pVar.dq(d.this.k);
                }
            });
        }
    }

    private void dq(j jVar) {
        if (this.ce == null || jVar == null) {
            return;
        }
        Context context = this.er;
        String str = this.j;
        iw iwVar = new iw(context, jVar, str, c.dq(str));
        iwVar.dq(this.ce);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.ox);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.kk);
        this.ce.setClickListener(iwVar);
        Context context2 = this.er;
        String str2 = this.j;
        s sVar = new s(context2, jVar, str2, c.dq(str2));
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        sVar.dq(this.ce);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.ox);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.kk);
        this.ce.setClickCreativeListener(sVar);
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(WeakReference<ViewGroup> weakReference) {
        ViewGroup viewGroup;
        if (weakReference == null || (viewGroup = weakReference.get()) == null) {
            return;
        }
        if (((dq) this).dq.getParent() != null) {
            ((ViewGroup) ((dq) this).dq.getParent()).removeView(((dq) this).dq);
        }
        viewGroup.addView(((dq) this).dq);
    }

    private void fw() {
        if (this.f2761d.ho() == 2) {
            this.ce = new NativeExpressView(true, this.er, this.f2761d, this.wn, this.j, true);
        } else {
            this.ce = new NativeExpressView(false, this.er, this.f2761d, this.wn, this.j, true);
        }
    }

    private void gh() {
        if (this.f2760c > 0) {
            return;
        }
        if (this.u == 1) {
            this.f2760c = 1;
        } else {
            this.f2760c = 2;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
    public void J_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void K_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void L_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void M_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void N_() {
        this.i = false;
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.q, this.f2761d);
        com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar = this.ia;
        if (dqVar != null) {
            this.o = true;
            dqVar.dq(this, 4);
            dq(false);
        }
        q();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.p.dq.d
    public void P_() {
        j jVar = this.f2761d;
        if (jVar == null || this.fw == null) {
            return;
        }
        int ce = jVar.ce();
        p pVar = this.l;
        boolean s = (pVar == null || pVar.dq() == null) ? false : this.l.dq().s();
        Boolean le = this.ce.le();
        if (le != null && le.booleanValue()) {
            s = true;
        }
        if (ce == 2) {
            if (this.vf.get()) {
                NativeExpressView nativeExpressView = this.ce;
                if (nativeExpressView != null) {
                    nativeExpressView.f();
                    if (i.p(this.f2761d)) {
                        this.fw.put("openPlayableLandingPage", Boolean.valueOf(s));
                    }
                    com.bytedance.sdk.openadsdk.core.nativeexpress.kx.dq(this.fw, this.f2761d, this.ce);
                }
                this.fw.put("splash_show_type", 3);
            }
        } else if (this.h) {
            if (TextUtils.isEmpty(pa.dq(this.f2761d))) {
                this.fw.put("splash_show_type", 2);
            }
            this.fw.put("splash_show_type", 1);
        } else {
            this.fw.put("splash_show_type", 0);
        }
        dq(this.f2761d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
    public boolean bl() {
        return false;
    }

    public void d(int i) {
        this.nh = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.p.dq, com.bytedance.sdk.openadsdk.f.d.d.d
    public View dq() {
        if (this.f2760c == -1) {
            this.f2760c = 0;
        }
        return ((dq) this).dq;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
    public void dq(int i, int i2) {
        this.i = false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void dq(long j, long j2) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.p.dq, com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(ViewGroup viewGroup) {
        if (viewGroup == null) {
            ig.p(MediationConstant.RIT_TYPE_SPLASH, "展示开屏的容器不能为空");
            return;
        }
        gh();
        WeakReference<ViewGroup> weakReference = new WeakReference<>(viewGroup);
        this.ob = weakReference;
        if (!this.wp.get() || ((dq) this).dq == null) {
            this.f2762e.set(true);
        } else {
            dq(weakReference);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox oxVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<kk, mn> pVar) {
        this.no = 3;
        dq(pVar);
        f();
    }

    public void f() {
        NativeExpressView nativeExpressView = this.ce;
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.s(this.nh);
        this.ce.fw();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.p.dq, com.bytedance.sdk.openadsdk.core.component.splash.TsView.dq
    public void no() {
        super.no();
        NativeExpressView nativeExpressView = this.ce;
        if (nativeExpressView != null) {
            nativeExpressView.mp();
        }
        this.ce = null;
        this.mn = null;
        this.iw = null;
        Map<String, Object> map = this.kk;
        if (map != null) {
            map.clear();
        }
        p pVar = this.l;
        if (pVar != null) {
            pVar.d();
        }
        dq(false);
        q();
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
    public com.bytedance.sdk.openadsdk.core.multipro.d.dq op() {
        NativeExpressView nativeExpressView;
        com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
        ox oxVar = this.bl;
        if (oxVar == null && (nativeExpressView = this.ce) != null) {
            oxVar = nativeExpressView.getVideoController();
        }
        if (oxVar != null) {
            dqVar.mn = oxVar.no();
            dqVar.dq = oxVar.r();
            dqVar.ia = oxVar.gh();
        }
        return dqVar;
    }
}
