package com.bytedance.sdk.openadsdk.core.component.splash;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class SlideUpView extends RelativeLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f2682d;
    private ImageView dq;
    private AnimatorSet ia;
    private AnimatorSet iw;
    private AnimatorSet mn;
    private ImageView ox;
    private ImageView p;
    private AnimatorSet s;

    public SlideUpView(Context context) {
        super(context);
        this.iw = new AnimatorSet();
        this.mn = new AnimatorSet();
        this.ia = new AnimatorSet();
        d(context);
    }

    private void d(Context context) {
        if (context == null) {
            context = wp.getContext();
        }
        View dq = dq(context);
        if (dq == null) {
            return;
        }
        addView(dq);
    }

    private View dq(Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout.setGravity(16);
        relativeLayout.setClipChildren(false);
        relativeLayout.setLayoutParams(layoutParams);
        ImageView imageView = new ImageView(context);
        this.ox = imageView;
        imageView.setId(2114387642);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        layoutParams2.addRule(14);
        layoutParams2.addRule(8, 2114387766);
        layoutParams2.bottomMargin = ce.ox(context, -24.0f);
        this.ox.setBackground(r.ox(context, "tt_splash_slide_up_circle"));
        this.ox.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.ox.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.ox);
        ImageView imageView2 = new ImageView(context);
        this.f2682d = imageView2;
        imageView2.setId(2114387945);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, resources.getDisplayMetrics()));
        layoutParams3.addRule(14);
        layoutParams3.addRule(1, 2114387766);
        layoutParams3.addRule(8, 2114387766);
        this.f2682d.setBackground(r.ox(context, "tt_splash_slide_up_bg"));
        layoutParams3.leftMargin = ce.ox(context, -7.0f);
        this.f2682d.setLayoutParams(layoutParams3);
        relativeLayout.addView(this.f2682d);
        ImageView imageView3 = new ImageView(context);
        this.dq = imageView3;
        imageView3.setId(2114387647);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 91.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 68.0f, resources.getDisplayMetrics()));
        layoutParams4.addRule(14);
        layoutParams4.addRule(1, 2114387766);
        layoutParams4.addRule(8, 2114387766);
        this.dq.setBackground(r.ox(context, "tt_splash_slide_up_finger"));
        layoutParams4.leftMargin = ce.ox(context, -7.0f);
        layoutParams4.bottomMargin = ce.ox(context, -20.0f);
        this.dq.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.dq.setLayoutParams(layoutParams4);
        relativeLayout.addView(this.dq);
        ImageView imageView4 = new ImageView(context);
        this.p = imageView4;
        imageView4.setId(2114387766);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 14.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 124.0f, resources.getDisplayMetrics()));
        layoutParams5.addRule(14);
        this.p.setBackground(r.ox(context, "tt_splash_slide_up_arrow"));
        this.p.setLayoutParams(layoutParams5);
        relativeLayout.addView(this.p);
        return relativeLayout;
    }

    public void d() {
        AnimatorSet animatorSet = this.s;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.mn;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        AnimatorSet animatorSet3 = this.iw;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        AnimatorSet animatorSet4 = this.ia;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
        }
    }

    public void dq() {
        this.s = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.dq, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.dq, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.dq, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(getContext(), -110.0f));
        ofFloat3.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, ce.ox(getContext(), 110.0f));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SlideUpView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) SlideUpView.this.f2682d.getLayoutParams();
                layoutParams.height = num.intValue();
                SlideUpView.this.f2682d.setLayoutParams(layoutParams);
            }
        });
        ofInt.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f2682d, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f2682d, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.ox, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.ox, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.ox, "scaleX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.ox, "scaleY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat10 = ObjectAnimator.ofFloat(this.ox, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(getContext(), -110.0f));
        ofFloat10.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        this.iw.setDuration(50L);
        this.ia.setDuration(1500L);
        this.mn.setDuration(50L);
        this.iw.playTogether(ofFloat2, ofFloat7, ofFloat5);
        this.mn.playTogether(ofFloat, ofFloat6, ofFloat8, ofFloat9, ofFloat4);
        this.ia.playTogether(ofFloat3, ofInt, ofFloat10);
        this.s.playSequentially(this.mn, this.ia, this.iw);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.s;
    }
}
