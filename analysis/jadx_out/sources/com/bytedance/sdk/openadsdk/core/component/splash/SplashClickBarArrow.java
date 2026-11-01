package com.bytedance.sdk.openadsdk.core.component.splash;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class SplashClickBarArrow extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private RelativeLayout f2684d;
    private View dq;
    private SplashDiffuseView ia;
    private AnimatorSet ig;
    private FrameLayout iw;
    private RelativeLayout kk;
    private ImageView mn;
    private int no;
    private boolean o;
    private ImageView ox;
    private ImageView p;
    private ImageView s;

    public static class dq implements Interpolator {
        private dq() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.38f ? f2 * 2.631579f : (f2 * (-1.6129032f)) + 1.6129032f;
        }
    }

    public SplashClickBarArrow(Context context) {
        super(context);
        this.o = true;
        this.ig = new AnimatorSet();
        d(context);
    }

    private void d() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ox, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ofFloat.setInterpolator(new dq());
        ofFloat.setDuration(1300L);
        ofFloat.setStartDelay(700L);
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ox, "translationX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(getContext(), 20.0f));
        ofFloat2.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ofFloat2.setDuration(1300L);
        ofFloat2.setStartDelay(700L);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setRepeatMode(1);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.p, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ofFloat3.setInterpolator(new dq());
        ofFloat3.setDuration(1300L);
        ofFloat3.setStartDelay(500L);
        ofFloat3.setRepeatCount(-1);
        ofFloat3.setRepeatMode(1);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.p, "translationX", ce.ox(getContext(), 23.0f));
        ofFloat4.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ofFloat4.setDuration(1300L);
        ofFloat4.setStartDelay(500L);
        ofFloat4.setRepeatCount(-1);
        ofFloat4.setRepeatMode(1);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.s, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ofFloat5.setInterpolator(new dq());
        ofFloat5.setDuration(1300L);
        ofFloat5.setStartDelay(200L);
        ofFloat5.setRepeatCount(-1);
        ofFloat5.setRepeatMode(1);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.s, "translationX", ce.ox(getContext(), 25.0f));
        ofFloat6.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ofFloat6.setDuration(1300L);
        ofFloat6.setStartDelay(200L);
        ofFloat6.setRepeatCount(-1);
        ofFloat6.setRepeatMode(1);
        this.ig.playTogether(ofFloat, ofFloat3, ofFloat5, ofFloat2, ofFloat4, ofFloat6);
    }

    private void d(Context context) {
        View dq2 = dq(getContext());
        if (dq2 == null) {
            return;
        }
        addView(dq2);
        SplashDiffuseView splashDiffuseView = new SplashDiffuseView(getContext());
        this.ia = splashDiffuseView;
        this.iw.addView(splashDiffuseView, 0);
        ViewGroup.LayoutParams layoutParams = this.ia.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.ia.setVisibility(4);
    }

    private View dq(Context context) {
        Resources resources = context.getResources();
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setClipChildren(false);
        frameLayout.setLayoutParams(layoutParams);
        this.dq = new ImageView(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 14.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 16.0f, resources.getDisplayMetrics()));
        this.dq.setId(2114387595);
        layoutParams2.gravity = 16;
        this.dq.setBackground(r.ox(context, "tt_splash_click_bar_go"));
        this.dq.setLayoutParams(layoutParams2);
        frameLayout.addView(this.dq);
        ce.dq(this.dq, 8);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.f2684d = relativeLayout;
        relativeLayout.setId(2114387594);
        new FrameLayout.LayoutParams(-2, -2).gravity = 16;
        this.f2684d.setPadding(ce.ox(context, 4.0f), 0, 0, 0);
        frameLayout.addView(this.f2684d);
        ce.dq((View) this.f2684d, 8);
        ImageView imageView = new ImageView(context);
        this.ox = imageView;
        imageView.setId(2114387593);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.ox.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.ox.setBackground(r.ox(context, "tt_splash_arrow"));
        this.ox.setLayoutParams(layoutParams3);
        this.f2684d.addView(this.ox);
        ImageView imageView2 = new ImageView(context);
        this.p = imageView2;
        imageView2.setId(2114387592);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.p.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.p.setBackground(r.ox(context, "tt_splash_arrow"));
        this.p.setLayoutParams(layoutParams4);
        this.f2684d.addView(this.p);
        ImageView imageView3 = new ImageView(context);
        this.s = imageView3;
        imageView3.setId(2114387591);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.s.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.s.setBackground(r.ox(context, "tt_splash_arrow"));
        this.s.setLayoutParams(layoutParams5);
        this.f2684d.addView(this.s);
        View view = new View(context);
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics())));
        this.f2684d.addView(view);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.iw = frameLayout2;
        frameLayout2.setId(2114387590);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        this.iw.setClipChildren(false);
        this.iw.setLayoutParams(layoutParams6);
        frameLayout.addView(this.iw);
        ce.dq((View) this.iw, 8);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        this.kk = relativeLayout2;
        relativeLayout2.setId(2114387589);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -1);
        this.kk.setClipChildren(false);
        this.kk.setLayoutParams(layoutParams7);
        this.iw.addView(this.kk);
        ImageView imageView4 = new ImageView(context);
        this.mn = imageView4;
        imageView4.setId(2114387588);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 50.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 50.0f, resources.getDisplayMetrics()));
        Drawable ox = r.ox(context, "tt_splash_hand");
        if (ox != null) {
            this.mn.setImageDrawable(ox);
        } else {
            com.bytedance.sdk.openadsdk.ia.d.dq(com.bytedance.sdk.openadsdk.core.mn.ox.dq("splash_hand.png")).dq(this.mn);
        }
        this.mn.setLayoutParams(layoutParams8);
        this.kk.addView(this.mn);
        ce.dq((View) this.mn, 4);
        return frameLayout;
    }

    private void dq() {
        this.dq.setVisibility(8);
        this.f2684d.setVisibility(8);
        int i = this.no;
        if (i == 1) {
            this.f2684d.setVisibility(0);
            d();
            return;
        }
        if (i == 2) {
            this.iw.setVisibility(0);
            post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarArrow.1
                @Override // java.lang.Runnable
                public void run() {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SplashClickBarArrow.this.kk.getLayoutParams();
                    layoutParams.topMargin = (int) ((SplashClickBarArrow.this.ia.getMeasuredHeight() / 2.0f) - ce.ox(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.leftMargin = (int) ((SplashClickBarArrow.this.ia.getMeasuredWidth() / 2.0f) - ce.ox(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.bottomMargin = (int) (((-SplashClickBarArrow.this.ia.getMeasuredHeight()) / 2.0f) + ce.ox(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.rightMargin = (int) (((-SplashClickBarArrow.this.ia.getMeasuredWidth()) / 2.0f) + ce.ox(SplashClickBarArrow.this.getContext(), 5.0f));
                    SplashClickBarArrow.this.kk.setLayoutParams(layoutParams);
                }
            });
            ox();
        } else {
            if (i == 3 || i == 4 || i == 5 || i == 7) {
                return;
            }
            this.dq.setVisibility(0);
        }
    }

    private void ox() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mn, "scaleX", 1.0f, 0.9f);
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarArrow.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (SplashClickBarArrow.this.o) {
                    SplashClickBarArrow.this.ia.dq();
                }
                SplashClickBarArrow.this.o = !r2.o;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(SplashClickBarArrow.this.mn, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new LinearInterpolator());
                ofFloat2.start();
                SplashClickBarArrow.this.mn.setVisibility(0);
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mn, "scaleY", 1.0f, 0.9f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.ig.playTogether(ofFloat, ofFloat2);
        this.ig.setStartDelay(1000L);
    }

    public void dq(int i) {
        this.no = i;
        dq();
    }

    public Animator getAnimator() {
        return this.ig;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            AnimatorSet animatorSet = this.ig;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
        } catch (Exception e2) {
            ig.d(e2.getMessage());
        }
    }
}
