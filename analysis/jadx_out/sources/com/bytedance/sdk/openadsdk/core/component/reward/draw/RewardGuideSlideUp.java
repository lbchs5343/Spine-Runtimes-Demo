package com.bytedance.sdk.openadsdk.core.component.reward.draw;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class RewardGuideSlideUp extends RelativeLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f2586d;
    private ImageView dq;
    private final AnimatorSet iw;
    private final AnimatorSet mn;
    private ImageView ox;
    private AnimatorSet p;
    private final AnimatorSet s;

    public RewardGuideSlideUp(Context context) {
        super(context);
        this.s = new AnimatorSet();
        this.iw = new AnimatorSet();
        this.mn = new AnimatorSet();
        dq(context);
    }

    private void dq(Context context) {
        if (context == null) {
            context = wp.getContext();
        }
        addView(com.bytedance.sdk.openadsdk.res.s.no(context));
        this.dq = (ImageView) findViewById(2114387647);
        this.f2586d = (ImageView) findViewById(2114387945);
        this.ox = (ImageView) findViewById(2114387642);
    }

    public void d() {
        try {
            AnimatorSet animatorSet = this.p;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.iw;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.s;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.mn;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable th) {
            ig.d(th.getMessage());
        }
    }

    public void dq() {
        this.p = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.dq, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.dq, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.dq, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(getContext(), -110.0f));
        ofFloat3.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, ce.ox(getContext(), 110.0f));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.RewardGuideSlideUp.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) RewardGuideSlideUp.this.f2586d.getLayoutParams();
                layoutParams.height = num.intValue();
                RewardGuideSlideUp.this.f2586d.setLayoutParams(layoutParams);
            }
        });
        ofInt.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f2586d, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f2586d, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.ox, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.ox, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.ox, "scaleX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.ox, "scaleY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat10 = ObjectAnimator.ofFloat(this.ox, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(getContext(), -110.0f));
        ofFloat10.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        this.s.setDuration(50L);
        this.mn.setDuration(3000L);
        this.iw.setDuration(50L);
        this.s.playTogether(ofFloat2, ofFloat7, ofFloat5);
        this.iw.playTogether(ofFloat, ofFloat6, ofFloat8, ofFloat9, ofFloat4);
        this.mn.playTogether(ofFloat3, ofInt, ofFloat10);
        this.p.playSequentially(this.iw, this.mn, this.s);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.p;
    }
}
