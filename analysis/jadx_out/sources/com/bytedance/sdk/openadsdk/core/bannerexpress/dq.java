package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
class dq extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    protected NativeExpressView f2475d;
    protected final Context dq;
    protected int ia;
    protected com.bytedance.sdk.openadsdk.core.nativeexpress.dq iw;
    protected boolean kk;
    protected com.bytedance.sdk.openadsdk.e.dq.d.dq.ox mn;
    protected String o;
    protected NativeExpressView ox;
    protected j p;
    protected com.bytedance.sdk.openadsdk.f.d.ox.d s;

    public dq(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(context);
        this.o = "banner_ad";
        this.dq = context;
        this.p = jVar;
        this.s = dVar;
        dq();
    }

    private ObjectAnimator d(NativeExpressView nativeExpressView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(nativeExpressView, "translationX", getWidth(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.dq.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                dq.this.kk = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return ofFloat;
    }

    private ObjectAnimator dq(NativeExpressView nativeExpressView) {
        return ObjectAnimator.ofFloat(nativeExpressView, "translationX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -getWidth());
    }

    public boolean d() {
        return this.ox != null;
    }

    public void dq() {
        NativeExpressView nativeExpressView = new NativeExpressView(this.dq, this.p, this.s, this.o);
        this.f2475d = nativeExpressView;
        addView(nativeExpressView, new ViewGroup.LayoutParams(-1, -1));
    }

    public void dq(float f2, float f3) {
        int ox = ce.ox(this.dq, f2);
        int ox2 = ce.ox(this.dq, f3);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(ox, ox2);
        }
        layoutParams.width = ox;
        layoutParams.height = ox2;
        setLayoutParams(layoutParams);
    }

    public void dq(j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        NativeExpressView nativeExpressView = new NativeExpressView(this.dq, jVar, dVar, this.o);
        this.ox = nativeExpressView;
        nativeExpressView.setExpressInteractionListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.dq.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, float f2, float f3) {
                dq.this.dq(f2, f3);
                dq.this.iw();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, int i) {
                dq dqVar = dq.this;
                com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar2 = dqVar.iw;
                if (dqVar2 != null) {
                    dqVar2.dq(dqVar, i);
                }
            }
        });
        ce.dq((View) this.ox, 8);
        addView(this.ox, new ViewGroup.LayoutParams(-1, -1));
    }

    public NativeExpressView getCurView() {
        return this.f2475d;
    }

    public NativeExpressView getNextView() {
        return this.ox;
    }

    public void iw() {
        if (this.kk || this.ox == null || this.f2475d == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(dq(this.f2475d)).with(d(this.ox));
        animatorSet.setDuration(this.ia).start();
        ce.dq((View) this.ox, 0);
        this.kk = true;
        NativeExpressView nativeExpressView = this.f2475d;
        this.f2475d = this.ox;
        this.ox = nativeExpressView;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.ox.mp();
            this.ox = null;
        }
    }

    public void ox() {
        NativeExpressView nativeExpressView = this.ox;
        if (nativeExpressView != null) {
            nativeExpressView.fw();
        }
    }

    public void p() {
        NativeExpressView nativeExpressView = this.f2475d;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.f2475d.mp();
            this.f2475d = null;
        }
        NativeExpressView nativeExpressView2 = this.ox;
        if (nativeExpressView2 != null) {
            removeView(nativeExpressView2);
            this.ox.mp();
            this.ox = null;
        }
    }

    public void s() {
        NativeExpressView nativeExpressView = this.f2475d;
        if (nativeExpressView != null) {
            nativeExpressView.fw();
        }
    }

    public void setDuration(int i) {
        this.ia = i;
    }

    public void setExpressInteractionListener(com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar) {
        this.iw = dqVar;
        NativeExpressView nativeExpressView = this.f2475d;
        if (nativeExpressView != null) {
            nativeExpressView.setExpressInteractionListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.dq.2
                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
                public void dq(View view, float f2, float f3) {
                    if (!(view instanceof NativeExpressView) || !((NativeExpressView) view).i()) {
                        dq.this.dq(f2, f3);
                    }
                    dq dqVar2 = dq.this;
                    com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar3 = dqVar2.iw;
                    if (dqVar3 != null) {
                        dqVar3.dq(dqVar2, f2, f3);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
                public void dq(View view, int i) {
                    dq dqVar2 = dq.this;
                    com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar3 = dqVar2.iw;
                    if (dqVar3 != null) {
                        dqVar3.dq(dqVar2, i);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
                public void dq(View view, String str, int i) {
                    dq dqVar2 = dq.this;
                    com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar3 = dqVar2.iw;
                    if (dqVar3 != null) {
                        dqVar3.dq(dqVar2, str, i);
                    }
                }
            });
        }
    }

    public void setVideoAdListener(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        this.mn = oxVar;
    }
}
