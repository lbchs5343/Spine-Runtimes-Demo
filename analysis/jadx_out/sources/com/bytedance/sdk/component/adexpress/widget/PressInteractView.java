package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class PressInteractView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f1817d;
    private Context dq;
    private TextView iw;
    private SplashDiffuseView ox;
    private AnimatorSet p;
    private boolean s;

    public PressInteractView(Context context) {
        super(context);
        this.s = true;
        this.dq = context;
        this.p = new AnimatorSet();
        ox();
        p();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.PressInteractView.1
            @Override // java.lang.Runnable
            public void run() {
                int dq = (int) mn.dq(PressInteractView.this.dq, 50.0f);
                int dq2 = (int) mn.dq(PressInteractView.this.dq, 50.0f);
                if (PressInteractView.this.ox.getMeasuredHeight() > 0) {
                    dq = PressInteractView.this.ox.getMeasuredHeight();
                }
                if (PressInteractView.this.ox.getMeasuredWidth() > 0) {
                    dq2 = PressInteractView.this.ox.getMeasuredWidth();
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PressInteractView.this.f1817d.getLayoutParams();
                layoutParams.topMargin = ((int) ((dq / 2.0f) - mn.dq(PressInteractView.this.getContext(), 5.0f))) + ((int) mn.dq(PressInteractView.this.dq, 40.0f));
                layoutParams.leftMargin = ((int) ((dq2 / 2.0f) - mn.dq(PressInteractView.this.getContext(), 5.0f))) + ((int) mn.dq(PressInteractView.this.dq, 20.0f));
                layoutParams.bottomMargin = (int) (mn.dq(PressInteractView.this.getContext(), 5.0f) + ((-dq) / 2.0f));
                layoutParams.rightMargin = (int) (mn.dq(PressInteractView.this.getContext(), 5.0f) + ((-dq2) / 2.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                PressInteractView.this.f1817d.setLayoutParams(layoutParams);
            }
        });
    }

    private void ox() {
        this.ox = new SplashDiffuseView(this.dq);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 50.0f), (int) mn.dq(this.dq, 50.0f));
        layoutParams.gravity = 8388659;
        layoutParams.topMargin = (int) mn.dq(this.dq, 40.0f);
        int dq = (int) mn.dq(this.dq, 20.0f);
        layoutParams.leftMargin = dq;
        layoutParams.setMarginStart(dq);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.ox, layoutParams);
        this.f1817d = new ImageView(this.dq);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 78.0f), (int) mn.dq(this.dq, 78.0f));
        this.f1817d.setImageResource(r.s(this.dq, "tt_splash_hand"));
        addView(this.f1817d, layoutParams2);
        TextView textView = new TextView(this.dq);
        this.iw = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) mn.dq(this.dq, 10.0f);
        addView(this.iw, layoutParams3);
        this.iw.setVisibility(8);
    }

    private void p() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f1817d, "scaleX", 1.0f, 1.0f, 1.0f, 0.9f);
        ofFloat.setDuration(600L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.PressInteractView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (PressInteractView.this.s) {
                    PressInteractView.this.ox.dq();
                }
                PressInteractView.this.s = !r2.s;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(PressInteractView.this.f1817d, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new LinearInterpolator());
                ofFloat2.start();
                PressInteractView.this.f1817d.setVisibility(0);
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f1817d, "scaleY", 1.0f, 1.0f, 1.0f, 0.9f);
        ofFloat2.setDuration(600L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.p.playTogether(ofFloat, ofFloat2);
    }

    public void d() {
        AnimatorSet animatorSet = this.p;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        SplashDiffuseView splashDiffuseView = this.ox;
        if (splashDiffuseView != null) {
            splashDiffuseView.d();
        }
        ImageView imageView = this.f1817d;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }

    public void dq() {
        this.p.start();
    }

    public void setGuideText(String str) {
        this.iw.setVisibility(0);
        this.iw.setText(str);
    }

    public void setGuideTextColor(int i) {
        this.iw.setTextColor(i);
    }
}
