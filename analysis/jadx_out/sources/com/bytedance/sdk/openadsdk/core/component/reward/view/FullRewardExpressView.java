package com.bytedance.sdk.openadsdk.core.component.reward.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.d.ox;
import com.bytedance.sdk.component.adexpress.d.p;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.nativeexpress.FullRewardExpressBackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.mp;
import com.bytedance.sdk.openadsdk.core.nativeexpress.o;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.video.dq.dq;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class FullRewardExpressView extends NativeExpressView implements o {

    /* renamed from: d, reason: collision with root package name */
    FullRewardExpressBackupView f2661d;
    o dq;

    /* renamed from: e, reason: collision with root package name */
    private dq.InterfaceC0196dq f2662e;
    private com.bytedance.sdk.openadsdk.core.ugeno.no.dq h;
    private ImageView i;
    private dq k;
    private FullSwiperItemView.dq kx;
    private HashSet<String> le;
    com.bytedance.sdk.openadsdk.core.video.d.dq ox;
    private p p;
    private q s;
    private View wp;

    public interface dq {
        void dq(int i);
    }

    public FullRewardExpressView(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str, boolean z) {
        super(context, jVar, dVar, str, z);
        this.le = new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(ViewGroup viewGroup, boolean z) {
        dq dqVar;
        q qVar = this.s;
        if (qVar == null) {
            return;
        }
        double iw = qVar.iw();
        double mn = this.s.mn();
        double ia = this.s.ia();
        double kk = this.s.kk();
        int ox = ce.ox(this.iw, (float) iw);
        int ox2 = ce.ox(this.iw, (float) mn);
        int ox3 = ce.ox(this.iw, (float) ia);
        int ox4 = ce.ox(this.iw, (float) kk);
        float ig = this.s.ig();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float ox5 = ig > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? ce.ox(this.iw, this.s.ig()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float ox6 = this.s.mp() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? ce.ox(this.iw, this.s.mp()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float ox7 = this.s.q() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? ce.ox(this.iw, this.s.q()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (this.s.jy() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f2 = ce.ox(this.iw, this.s.jy());
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
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(ox3, ox4);
        }
        layoutParams.width = ox3;
        layoutParams.height = ox4;
        layoutParams.topMargin = ox2;
        layoutParams.leftMargin = ox;
        viewGroup.setLayoutParams(layoutParams);
        ce.d(viewGroup, f2);
        if (z) {
            viewGroup.removeAllViews();
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewGroup);
            }
            if (this.p.ox() == 7 || this.p.ox() == 10) {
                q qVar2 = this.s;
                if (qVar2 instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.d) {
                    FrameLayout fw = ((com.bytedance.sdk.openadsdk.core.ugeno.ox.d) qVar2).fw();
                    if (fw != null) {
                        fw.addView(viewGroup, new FrameLayout.LayoutParams(-1, -1));
                    }
                    dqVar = this.k;
                    if (dqVar != null || ox4 == 0) {
                    }
                    dqVar.dq(ox4);
                    return;
                }
            }
            this.r.addView(viewGroup);
            dqVar = this.k;
            if (dqVar != null) {
            }
        }
    }

    private void jy() {
        setBackupListener(new ox() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView.1
            @Override // com.bytedance.sdk.component.adexpress.d.ox
            public boolean dq(ViewGroup viewGroup, int i) {
                try {
                    ((NativeExpressView) viewGroup).gh();
                    FullRewardExpressView.this.f2661d = new FullRewardExpressBackupView(viewGroup.getContext());
                    FullRewardExpressView fullRewardExpressView = FullRewardExpressView.this;
                    fullRewardExpressView.f2661d.dq(((NativeExpressView) fullRewardExpressView).kk, (NativeExpressView) viewGroup);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    private void ox(boolean z) {
        com.bytedance.sdk.openadsdk.core.video.d.dq dqVar;
        if ((this.p instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq) && z) {
            ImageView imageView = this.i;
            if (imageView == null || imageView.getVisibility() != 0 || (dqVar = this.ox) == null) {
                dq(this.gh);
            } else {
                dqVar.iw();
            }
        }
    }

    private void wp() {
        com.bytedance.sdk.openadsdk.core.video.d.dq dqVar;
        if ((this.p instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq) && (dqVar = this.ox) != null) {
            if (dqVar.cv()) {
                this.ox.iw();
                d(true);
            } else {
                this.ox.ia();
                d(false);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int d() {
        o oVar = this.dq;
        if (oVar != null) {
            return oVar.d();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void d(int i) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.d(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0073  */
    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(p<? extends View> pVar, q qVar) {
        FrameLayout cd;
        View view;
        ViewGroup viewGroup;
        this.p = pVar;
        if (pVar instanceof mp) {
            mp mpVar = (mp) pVar;
            if (mpVar.W_() != null) {
                mpVar.W_().dq((o) this);
            }
        }
        if (qVar != null && qVar.ox()) {
            this.s = qVar;
            if (qVar.d() == 2) {
                View dq2 = qVar.dq();
                if (dq2 instanceof ViewGroup) {
                    ((ViewGroup) dq2).addView(getVideoContainer());
                    if (qVar.d() == 10 && (qVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.d)) {
                        this.h = ((com.bytedance.sdk.openadsdk.core.ugeno.ox.d) qVar).gh();
                    }
                    if (qVar.d() == 10 && (qVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.d) && (cd = ((com.bytedance.sdk.openadsdk.core.ugeno.ox.d) qVar).cd()) != null && (view = this.wp) != null) {
                        viewGroup = (ViewGroup) view.getParent();
                        if (viewGroup != null) {
                            viewGroup.removeView(this.wp);
                        }
                        cd.addView(this.wp);
                    }
                }
            }
            dq((ViewGroup) this.mp, true);
            if (qVar.d() == 10) {
                this.h = ((com.bytedance.sdk.openadsdk.core.ugeno.ox.d) qVar).gh();
            }
            if (qVar.d() == 10) {
                viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                }
                cd.addView(this.wp);
            }
        }
        super.d(pVar, qVar);
        p(getVisibility());
    }

    public void d(boolean z) {
        if (this.i == null) {
            this.i = new ImageView(getContext());
            if (no.ia().op() != null) {
                this.i.setImageBitmap(no.ia().op());
            } else {
                this.i.setImageDrawable(r.ox(wp.getContext(), "tt_new_play_video"));
            }
            this.i.setScaleType(ImageView.ScaleType.FIT_XY);
            int ox = ce.ox(getContext(), 50.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ox, ox);
            layoutParams.gravity = 17;
            this.mp.addView(this.i, layoutParams);
        }
        if (z) {
            this.i.setVisibility(0);
        } else {
            this.i.setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long dq() {
        o oVar = this.dq;
        if (oVar != null) {
            return oVar.dq();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(f2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2, float f3, float f4, float f5, int i) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(f2, f3, f4, f5, i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(i);
        }
    }

    public void dq(int i, int i2) {
        com.bytedance.sdk.openadsdk.core.ugeno.no.dq dqVar = this.h;
        if (dqVar != null) {
            dqVar.dq(i, i2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(final int i, final String str) {
        this.f2662e = new dq.InterfaceC0196dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView.3
            @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq.InterfaceC0196dq
            public void dq(long j, long j2) {
                o oVar;
                int abs = (int) Math.abs(i - j);
                if (FullRewardExpressView.this.ox.u() && (oVar = FullRewardExpressView.this.dq) != null) {
                    abs = (int) Math.abs(i - oVar.getActualPlayDuration());
                }
                FullRewardExpressView fullRewardExpressView = FullRewardExpressView.this;
                int i2 = fullRewardExpressView.ox instanceof com.bytedance.sdk.openadsdk.core.component.reward.draw.p ? 200 : 50;
                int i3 = i;
                if (i3 < 0 || abs > i2 || i3 > j2 || abs >= i2 || fullRewardExpressView.le.contains(str)) {
                    return;
                }
                if (i > j) {
                    FullRewardExpressView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FullRewardExpressView.this.ox.iw();
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            FullRewardExpressView.this.d(i, str);
                            if (uh.fw(((NativeExpressView) FullRewardExpressView.this).kk) || t.dq(((NativeExpressView) FullRewardExpressView.this).kk)) {
                                FullRewardExpressView.this.dq.dq(2);
                            }
                            o oVar2 = FullRewardExpressView.this.dq;
                            if (oVar2 != null) {
                                oVar2.setPauseFromExpressView(true);
                            }
                        }
                    }, abs);
                } else {
                    FullRewardExpressView.this.ox.iw();
                    FullRewardExpressView.this.d(i, str);
                    if (uh.fw(((NativeExpressView) FullRewardExpressView.this).kk) || t.dq(((NativeExpressView) FullRewardExpressView.this).kk)) {
                        FullRewardExpressView.this.dq.dq(2);
                    }
                    o oVar2 = FullRewardExpressView.this.dq;
                    if (oVar2 != null) {
                        oVar2.setPauseFromExpressView(true);
                    }
                }
                FullRewardExpressView.this.le.add(str);
            }
        };
        this.ox.ox(50);
        this.ox.dq(this.f2662e);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.d.ia
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
        FullSwiperItemView.dq dqVar = this.kx;
        if (dqVar != null) {
            dqVar.dq();
        }
        if (i != -1 && oxVar != null && i == 3) {
            kk();
            return;
        }
        if (i == 5) {
            dq(!this.gh);
        } else if (i == 4) {
            wp();
        } else {
            super.dq(view, i, oxVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.d.ia
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, int i2) {
        FullSwiperItemView.dq dqVar = this.kx;
        if (dqVar != null) {
            dqVar.dq();
        }
        if (i == -1 || oxVar == null || i != 3) {
            super.dq(view, i, oxVar, i2);
        } else {
            kk();
        }
    }

    public void dq(final ViewGroup viewGroup, final boolean z) {
        if (this.s == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            d(viewGroup, z);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    FullRewardExpressView.this.d(viewGroup, z);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(boolean z) {
        super.dq(z);
        this.gh = z;
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(z);
        }
        p pVar = this.p;
        if (pVar == null || !(pVar instanceof com.bytedance.sdk.component.adexpress.dynamic.dq.dq)) {
            return;
        }
        ((com.bytedance.sdk.component.adexpress.dynamic.dq.dq) pVar).dq(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long getActualPlayDuration() {
        o oVar = this.dq;
        if (oVar != null) {
            return oVar.getActualPlayDuration();
        }
        return 0L;
    }

    public q getRenderResult() {
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public com.bykv.vk.openvk.component.video.api.p.ox getVideoController() {
        return this.ox;
    }

    public FrameLayout getVideoFrameLayout() {
        return i() ? this.f2661d.getVideoContainer() : this.mp;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void ia() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.ia();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void ig() {
        this.jy = true;
        this.mp = new FrameLayout(this.iw);
        super.ig();
        jy();
        if (getJsObject() != null) {
            getJsObject().f(this.gh);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void iw() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.iw();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void kk() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.kk();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void mn() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.mn();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void mp() {
        super.mp();
        this.le.clear();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void no() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.no();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void o() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.o();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        ox(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int ox() {
        o oVar = this.dq;
        if (oVar != null) {
            return oVar.ox();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void p() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.p();
        }
    }

    public boolean q() {
        q qVar = this.s;
        if (qVar == null) {
            return true;
        }
        return qVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.d ? ((com.bytedance.sdk.openadsdk.core.ugeno.ox.d) qVar).fw() != null : (qVar.ia() == 0.0d || this.s.kk() == 0.0d) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void s() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.s();
        }
    }

    public void setEasyPlayableContainer(View view) {
        this.wp = view;
    }

    public void setExpressVideoListenerProxy(o oVar) {
        this.dq = oVar;
    }

    public void setInteractListener(FullSwiperItemView.dq dqVar) {
        this.kx = dqVar;
    }

    public void setOnVideoSizeChangeListener(dq dqVar) {
        this.k = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void setPauseFromExpressView(boolean z) {
    }

    public void setVideoController(com.bykv.vk.openvk.component.video.api.p.ox oxVar) {
        if (oxVar instanceof com.bytedance.sdk.openadsdk.core.video.d.dq) {
            com.bytedance.sdk.openadsdk.core.video.d.dq dqVar = (com.bytedance.sdk.openadsdk.core.video.d.dq) oxVar;
            this.ox = dqVar;
            dqVar.ox(50);
            this.ox.dq(this.f2662e);
        }
    }
}
