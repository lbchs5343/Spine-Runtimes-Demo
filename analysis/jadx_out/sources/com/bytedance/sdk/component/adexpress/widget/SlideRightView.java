package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class SlideRightView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f1823d;
    private Context dq;
    private AnimatorSet ia;
    private AnimatorSet iw;
    private AnimatorSet kk;
    private AnimatorSet mn;
    private ImageView ox;
    private ImageView p;
    private TextView s;

    public SlideRightView(Context context) {
        super(context);
        this.iw = new AnimatorSet();
        this.mn = new AnimatorSet();
        this.ia = new AnimatorSet();
        this.kk = new AnimatorSet();
        this.dq = context;
        ox();
    }

    private void ox() {
        ImageView imageView = new ImageView(this.dq);
        this.p = imageView;
        imageView.setBackgroundResource(r.s(this.dq, "tt_splash_slide_right_bg"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, -2);
        layoutParams.gravity = 48;
        layoutParams.leftMargin = (int) mn.dq(this.dq, 30.0f);
        addView(this.p, layoutParams);
        setClipChildren(false);
        setClipToPadding(false);
        ImageView imageView2 = new ImageView(this.dq);
        this.ox = imageView2;
        imageView2.setImageResource(r.s(this.dq, "tt_splash_slide_right_circle"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 50.0f), (int) mn.dq(this.dq, 50.0f));
        layoutParams2.gravity = 48;
        layoutParams2.leftMargin = (int) mn.dq(this.dq, 30.0f);
        addView(this.ox, layoutParams2);
        ImageView imageView3 = new ImageView(this.dq);
        this.f1823d = imageView3;
        imageView3.setImageResource(r.s(this.dq, "tt_splash_hand2"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 80.0f), (int) mn.dq(this.dq, 80.0f));
        layoutParams3.gravity = 48;
        layoutParams3.leftMargin = (int) mn.dq(this.dq, 30.0f);
        addView(this.f1823d, layoutParams3);
        TextView textView = new TextView(this.dq);
        this.s = textView;
        textView.setTextColor(-1);
        this.s.setSingleLine();
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 80;
        addView(this.s, layoutParams4);
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) SlideRightView.this.f1823d.getLayoutParams();
                layoutParams5.topMargin = (int) ((SlideRightView.this.ox.getMeasuredHeight() / 2.0f) - mn.dq(SlideRightView.this.getContext(), 7.0f));
                int dq = (-SlideRightView.this.ox.getMeasuredWidth()) + ((int) mn.dq(SlideRightView.this.dq, 30.0f));
                layoutParams5.leftMargin = dq;
                layoutParams5.setMarginStart(dq);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                SlideRightView.this.f1823d.setLayoutParams(layoutParams5);
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) SlideRightView.this.p.getLayoutParams();
                layoutParams6.topMargin = (int) ((SlideRightView.this.ox.getMeasuredHeight() / 2.0f) - mn.dq(SlideRightView.this.getContext(), 5.0f));
                layoutParams6.leftMargin = (int) ((SlideRightView.this.ox.getMeasuredWidth() / 2.0f) + ((int) mn.dq(SlideRightView.this.dq, 30.0f)));
                layoutParams5.setMarginStart(layoutParams5.leftMargin);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                SlideRightView.this.p.setLayoutParams(layoutParams6);
            }
        });
    }

    private void p() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f1823d, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ox, "scaleX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.ox, "scaleY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.p, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        this.ia.setDuration(300L);
        this.ia.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f1823d, "translationX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, mn.dq(getContext(), 90.0f));
        ofFloat5.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, (int) mn.dq(getContext(), 90.0f));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SlideRightView.this.p.getLayoutParams();
                layoutParams.width = num.intValue();
                SlideRightView.this.p.setLayoutParams(layoutParams);
            }
        });
        ofInt.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.ox, "translationX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, mn.dq(getContext(), 90.0f));
        ofFloat6.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        this.kk.setDuration(1500L);
        this.kk.playTogether(ofFloat5, ofInt, ofFloat6);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.f1823d, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.p, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.ox, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.mn.setDuration(50L);
        this.mn.playTogether(ofFloat7, ofFloat8, ofFloat9);
        this.iw.playSequentially(this.ia, this.kk, this.mn);
    }

    public void d() {
        try {
            AnimatorSet animatorSet = this.iw;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.ia;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.kk;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.mn;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable unused) {
        }
    }

    public void dq() {
        p();
        this.iw.start();
        this.iw.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SlideRightView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlideRightView.this.iw.start();
                    }
                }, 200L);
            }
        });
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setGuideText(String str) {
        this.s.setText(str);
    }
}
