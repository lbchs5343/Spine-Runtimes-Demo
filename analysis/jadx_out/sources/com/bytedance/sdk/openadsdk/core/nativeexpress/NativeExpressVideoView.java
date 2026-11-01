package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.dq.dq;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class NativeExpressVideoView extends NativeExpressView implements ox.InterfaceC0004ox, ox.p, o {

    /* renamed from: d, reason: collision with root package name */
    boolean f3204d;
    int dq;

    /* renamed from: e, reason: collision with root package name */
    private HashSet<String> f3205e;
    private com.bytedance.sdk.openadsdk.core.multipro.d.dq i;
    private long k;
    private long le;
    boolean ox;
    int p;
    boolean s;
    private com.bytedance.sdk.component.adexpress.d.p wp;

    public NativeExpressVideoView(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        super(context, jVar, dVar, str, true);
        this.dq = 1;
        this.f3204d = false;
        this.ox = true;
        this.s = true;
        this.gh = com.bytedance.sdk.openadsdk.core.wp.d().p(c.kk(this.kk));
        q();
    }

    public NativeExpressVideoView(boolean z, Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        super(z, context, jVar, dVar, str, true);
        this.dq = 1;
        this.f3204d = false;
        this.ox = true;
        this.s = true;
        this.gh = com.bytedance.sdk.openadsdk.core.wp.d().p(c.kk(this.kk));
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.sdk.component.adexpress.d.q qVar) {
        if (qVar == null) {
            return;
        }
        double iw = qVar.iw();
        double mn = qVar.mn();
        double ia = qVar.ia();
        double kk = qVar.kk();
        int ox = ce.ox(this.iw, (float) iw);
        int ox2 = ce.ox(this.iw, (float) mn);
        int ox3 = ce.ox(this.iw, (float) ia);
        int ox4 = ce.ox(this.iw, (float) kk);
        float ig = qVar.ig();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float ox5 = ig > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? ce.ox(this.iw, qVar.ig()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float ox6 = qVar.mp() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? ce.ox(this.iw, qVar.mp()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float ox7 = qVar.q() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? ce.ox(this.iw, qVar.q()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (qVar.jy() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f2 = ce.ox(this.iw, qVar.jy());
        }
        if (ox6 < ox5) {
            ox5 = ox6;
        }
        if (ox7 >= ox5) {
            ox7 = ox5;
        }
        if (f2 >= ox7) {
            f2 = ox7;
        }
        if (qVar.d() != 2) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mp.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(ox3, ox4);
            }
            layoutParams.width = ox3;
            layoutParams.height = ox4;
            layoutParams.topMargin = ox2;
            layoutParams.leftMargin = ox;
            this.mp.setLayoutParams(layoutParams);
        }
        ce.d(this.mp, f2);
        this.mp.removeAllViews();
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView != null) {
            this.mp.addView(expressVideoView);
            this.o.dq(0L, true, false);
            ox(this.p);
            if (!com.bytedance.sdk.component.utils.q.p(this.iw) && !this.ox && this.s) {
                this.o.S_();
            }
            setShowAdInteractionView(false);
        }
        ViewGroup viewGroup = (ViewGroup) this.mp.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.mp);
        }
        if (qVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.d) {
            FrameLayout fw = ((com.bytedance.sdk.openadsdk.core.ugeno.ox.d) qVar).fw();
            if (fw != null) {
                this.o.setClickable(false);
                fw.addView(this.mp, new FrameLayout.LayoutParams(-1, -1));
                return;
            }
            return;
        }
        if (qVar.d() != 2) {
            this.r.addView(this.mp);
            return;
        }
        View dq = qVar.dq();
        if (dq instanceof ViewGroup) {
            this.o.setClickable(false);
            ((ViewGroup) dq).addView(this.mp);
        }
    }

    private void dq(final com.bytedance.sdk.component.adexpress.d.q qVar) {
        if (qVar == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            d(qVar);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.3
                @Override // java.lang.Runnable
                public void run() {
                    NativeExpressVideoView.this.d(qVar);
                }
            });
        }
    }

    private boolean dq(long j) {
        int i = this.dq;
        if (i != 5 && i != 3 && j > this.le) {
            return true;
        }
        ExpressVideoView expressVideoView = this.o;
        return expressVideoView != null && expressVideoView.T_();
    }

    private void e() {
        ExpressVideoView expressVideoView;
        com.bytedance.sdk.component.adexpress.d.p pVar = this.wp;
        if (((pVar instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq) || (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox)) && (expressVideoView = this.o) != null) {
            expressVideoView.d(true);
            if (this.o.T_()) {
                this.o.setPauseIcon(true);
                this.o.setVideoPlayStatus(2);
            } else {
                this.o.setVideoPlayStatus(3);
                this.o.setPauseIcon(false);
            }
            this.o.performClick();
            this.o.iw();
        }
    }

    private void setShowAdInteractionView(boolean z) {
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView != null) {
            expressVideoView.setShowAdInteractionView(z);
        }
    }

    private void wp() {
        try {
            this.i = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
            ExpressVideoView dq = dq(this.iw, this.kk, this.mn);
            this.o = dq;
            dq.setNativeExpressVideoView(this);
            this.o.setAdCreativeClickListener(new NativeVideoTsView.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.1
                @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.dq
                public void dq(View view, int i) {
                    dq expressInteractionListener = NativeExpressVideoView.this.getExpressInteractionListener();
                    if (expressInteractionListener == null) {
                        return;
                    }
                    expressInteractionListener.dq(view, i);
                }
            });
            this.o.setShouldCheckNetChange(false);
            this.o.setControllerStatusCallBack(new NativeVideoTsView.ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.2
                @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.ox
                public void dq(boolean z, long j, long j2, long j3, boolean z2, boolean z3) {
                    NativeExpressVideoView.this.i.dq = z;
                    NativeExpressVideoView.this.i.s = j;
                    NativeExpressVideoView.this.i.iw = j2;
                    NativeExpressVideoView.this.i.mn = j3;
                    NativeExpressVideoView.this.i.p = z2;
                    NativeExpressVideoView.this.i.ia = z3;
                }
            });
            this.o.setVideoAdLoadListener(this);
            this.o.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.mn)) {
                this.o.setIsAutoPlay(this.f3204d ? this.ia.ia() : this.ox);
            } else if ("splash_ad".equals(this.mn)) {
                this.o.setIsAutoPlay(true);
            } else {
                this.o.setIsAutoPlay(this.ox);
            }
            if ("splash_ad".equals(this.mn)) {
                this.o.setIsQuiet(true);
            } else {
                this.o.setIsQuiet(com.bytedance.sdk.openadsdk.core.wp.d().p(this.p));
            }
            this.o.ox();
        } catch (Exception e2) {
            this.o = null;
            com.bytedance.sdk.component.utils.ig.p("NativeExpressVideoView", "（dev ignore）ExpressVideoView-->print:" + e2.toString());
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
    public void J_() {
        ox.p pVar = this.no;
        if (pVar != null) {
            pVar.J_();
        }
        com.bytedance.sdk.component.adexpress.d.p pVar2 = this.wp;
        if (pVar2 != null) {
            if (pVar2 instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq) {
                ((com.bytedance.sdk.component.adexpress.dynamic.dq.dq) pVar2).s();
            }
            com.bytedance.sdk.component.adexpress.d.p pVar3 = this.wp;
            if (pVar3 instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) {
                ((com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) pVar3).ig();
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void K_() {
        this.s = false;
        ox.InterfaceC0004ox interfaceC0004ox = this.ig;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.K_();
        }
        this.dq = 2;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void L_() {
        this.s = false;
        ox.InterfaceC0004ox interfaceC0004ox = this.ig;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.L_();
        }
        this.q = true;
        this.dq = 3;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void M_() {
        this.s = false;
        ox.InterfaceC0004ox interfaceC0004ox = this.ig;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.M_();
        }
        this.q = false;
        this.dq = 2;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void N_() {
        this.s = false;
        com.bytedance.sdk.component.adexpress.d.p pVar = this.wp;
        if (pVar != null) {
            if (pVar instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq) {
                ((com.bytedance.sdk.component.adexpress.dynamic.dq.dq) pVar).p();
            }
            com.bytedance.sdk.component.adexpress.d.p pVar2 = this.wp;
            if (pVar2 instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) {
                ((com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) pVar2).no();
            }
        }
        ox.InterfaceC0004ox interfaceC0004ox = this.ig;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.N_();
        }
        this.dq = 5;
        com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = this.i;
        if (dqVar != null) {
            dqVar.dq = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int d() {
        ExpressVideoView expressVideoView;
        if (this.dq == 3 && (expressVideoView = this.o) != null) {
            expressVideoView.ox();
        }
        ExpressVideoView expressVideoView2 = this.o;
        if (expressVideoView2 == null || !expressVideoView2.getNativeVideoController().le()) {
            return this.dq;
        }
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void d(com.bytedance.sdk.component.adexpress.d.p<? extends View> pVar, com.bytedance.sdk.component.adexpress.d.q qVar) {
        ExpressVideoView expressVideoView;
        this.wp = pVar;
        if ((pVar instanceof mp) && ((mp) pVar).W_() != null) {
            ((mp) this.wp).W_().dq((o) this);
        }
        if (qVar != null && qVar.ox()) {
            if ((qVar.d() == 2 || qVar.d() == 7) && (expressVideoView = this.o) != null) {
                expressVideoView.dq(this.iw, 25, pa.d(this.kk));
            }
            dq(qVar);
        }
        com.bytedance.sdk.component.adexpress.d.p pVar2 = this.wp;
        if (pVar2 != null && (pVar2 instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq)) {
            ((com.bytedance.sdk.component.adexpress.dynamic.dq.dq) pVar2).dq(com.bytedance.sdk.openadsdk.core.wp.d().p(this.p));
        }
        super.d(pVar, qVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long dq() {
        return this.le;
    }

    public ExpressVideoView dq(Context context, j jVar, String str) {
        return new ExpressVideoView(context, jVar, str, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2, float f3, float f4, float f5, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i) {
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView == null) {
            com.bytedance.sdk.component.utils.ig.p("NativeExpressVideoView", "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!");
            return;
        }
        if (i == 1) {
            expressVideoView.dq(0L, true, false);
            return;
        }
        if (i == 2 || i == 3) {
            expressVideoView.setVideoPlayStatus(i);
            this.o.setCanInterruptVideoPlay(true);
            this.o.performClick();
        } else if (i == 4) {
            expressVideoView.getNativeVideoController().o();
        } else {
            if (i != 5) {
                return;
            }
            expressVideoView.dq(0L, true, false);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
    public void dq(int i, int i2) {
        ox.p pVar = this.no;
        if (pVar != null) {
            pVar.dq(i, i2);
        }
        this.le = this.k;
        this.dq = 4;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(final int i, final String str) {
        super.dq(i, str);
        com.bykv.vk.openvk.component.video.api.p.ox videoController = this.o.getVideoController();
        if (videoController instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) {
            com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar = (com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) videoController;
            oxVar.ox(50);
            oxVar.dq(new dq.InterfaceC0196dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.4
                @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq.InterfaceC0196dq
                public void dq(long j, long j2) {
                    int abs = (int) Math.abs(i - j);
                    int i2 = i;
                    if (i2 < 0 || abs > 50 || i2 > j2 || abs >= 50 || NativeExpressVideoView.this.f3205e.contains(str)) {
                        return;
                    }
                    if (i > j) {
                        NativeExpressVideoView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NativeExpressVideoView.this.o.setVideoPlayStatus(2);
                                NativeExpressVideoView.this.o.setCanInterruptVideoPlay(true);
                                NativeExpressVideoView.this.o.performClick();
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                NativeExpressVideoView.this.d(i, str);
                            }
                        }, abs);
                    } else {
                        NativeExpressVideoView.this.o.setVideoPlayStatus(2);
                        NativeExpressVideoView.this.o.setCanInterruptVideoPlay(true);
                        NativeExpressVideoView.this.o.performClick();
                        NativeExpressVideoView.this.d(i, str);
                    }
                    NativeExpressVideoView.this.f3205e.add(str);
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void dq(long j, long j2) {
        this.s = false;
        ox.InterfaceC0004ox interfaceC0004ox = this.ig;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.dq(j, j2);
        }
        if (dq(j)) {
            this.dq = 2;
        }
        this.le = j;
        this.k = j2;
        if (!this.f3205e.isEmpty()) {
            com.bykv.vk.openvk.component.video.api.p.ox videoController = this.o.getVideoController();
            if (videoController instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) {
                ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) videoController).ox(50);
            }
        }
        com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = this.i;
        if (dqVar != null) {
            dqVar.mn = j;
        }
        com.bytedance.sdk.component.adexpress.d.p pVar = this.wp;
        if (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) {
            ((com.bytedance.sdk.openadsdk.core.ugeno.ox.ox) pVar).dq(j, j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.d.ia
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
        if (i == -1 || oxVar == null) {
            return;
        }
        if (i == 4) {
            e();
        } else if (i != 5) {
            super.dq(view, i, oxVar);
        } else {
            dq(!this.gh);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.d.ia
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, int i2) {
        if (i == -1 || oxVar == null) {
            return;
        }
        if (i != 4) {
            if (i != 5) {
                super.dq(view, i, oxVar, i2);
                return;
            }
        } else if (this.mn == "draw_ad") {
            ExpressVideoView expressVideoView = this.o;
            if (expressVideoView != null) {
                expressVideoView.performClick();
                return;
            }
            return;
        }
        dq(!this.gh);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(boolean z) {
        super.dq(z);
        this.gh = z;
        this.o.d(z, true);
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView != null && expressVideoView.getNativeVideoController() != null) {
            this.o.getNativeVideoController().d(z);
        }
        com.bytedance.sdk.component.adexpress.d.p pVar = this.wp;
        if (pVar == null || !(pVar instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq)) {
            return;
        }
        ((com.bytedance.sdk.component.adexpress.dynamic.dq.dq) pVar).dq(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public com.bykv.vk.openvk.component.video.api.p.ox getVideoController() {
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView != null) {
            return expressVideoView.getVideoController();
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.core.multipro.d.dq getVideoModel() {
        return this.i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void ia() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void iw() {
    }

    public void jy() {
        this.o.o();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void kk() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void mn() {
        super.mn();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void mp() {
        super.mp();
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView != null) {
            expressVideoView.gh();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void no() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void o() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        ExpressVideoView expressVideoView;
        int i;
        super.onAttachedToWindow();
        com.bytedance.sdk.component.adexpress.d.p pVar = this.wp;
        if ((!(pVar instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq) && !(pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox)) || (expressVideoView = this.o) == null || (i = this.dq) == 2 || i == 5) {
            return;
        }
        expressVideoView.setNeedNativeVideoPlayBtnVisible(true);
        this.o.S_();
        this.o.R_();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        ExpressVideoView expressVideoView;
        ImageView imageView;
        super.onWindowFocusChanged(z);
        com.bytedance.sdk.component.adexpress.d.p pVar = this.wp;
        if (((pVar instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq) || (pVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.ox)) && (expressVideoView = this.o) != null && z && (imageView = expressVideoView.f3203d) != null && imageView.getVisibility() == 0) {
            this.o.f3203d.setVisibility(8);
        }
    }

    public void ox(int i) {
        int mn = com.bytedance.sdk.openadsdk.core.wp.d().mn(i);
        if (3 == mn) {
            this.f3204d = false;
            this.ox = false;
        } else if (1 == mn) {
            this.f3204d = false;
            this.ox = com.bytedance.sdk.component.utils.q.p(this.iw);
        } else if (2 == mn) {
            if (com.bytedance.sdk.component.utils.q.s(this.iw) || com.bytedance.sdk.component.utils.q.p(this.iw) || com.bytedance.sdk.component.utils.q.iw(this.iw)) {
                this.f3204d = false;
                this.ox = true;
            }
        } else if (5 == mn) {
            if (com.bytedance.sdk.component.utils.q.p(this.iw) || com.bytedance.sdk.component.utils.q.iw(this.iw)) {
                this.f3204d = false;
                this.ox = true;
            }
        } else if (4 == mn) {
            this.f3204d = true;
        }
        if (!this.ox) {
            this.dq = 3;
        }
        com.bytedance.sdk.component.utils.ig.dq("NativeVideoAdView", "mIsAutoPlay=" + this.ox + ",status=" + mn);
    }

    public void q() {
        this.mp = new FrameLayout(this.iw);
        this.p = c.kk(this.kk);
        this.f3205e = new HashSet<>();
        ox(this.p);
        wp();
    }

    public void setCanInterruptVideoPlay(boolean z) {
        ExpressVideoView expressVideoView = this.o;
        if (expressVideoView != null) {
            expressVideoView.setCanInterruptVideoPlay(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void setPauseFromExpressView(boolean z) {
    }
}
