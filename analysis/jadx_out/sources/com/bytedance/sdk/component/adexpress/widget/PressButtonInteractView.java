package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class PressButtonInteractView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f1816d;
    private Context dq;
    private SplashDiffuseView ox;
    private AnimatorSet p;
    private boolean s;

    public PressButtonInteractView(Context context) {
        super(context);
        this.s = true;
        this.dq = context;
        this.p = new AnimatorSet();
        ox();
        p();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.PressButtonInteractView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PressButtonInteractView.this.f1816d.getLayoutParams();
                layoutParams.topMargin = (int) ((PressButtonInteractView.this.ox.getMeasuredHeight() / 2.0f) - mn.dq(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.leftMargin = (int) ((PressButtonInteractView.this.ox.getMeasuredWidth() / 2.0f) - mn.dq(PressButtonInteractView.this.getContext(), 5.0f));
                layoutParams.bottomMargin = (int) (mn.dq(PressButtonInteractView.this.getContext(), 5.0f) + ((-PressButtonInteractView.this.ox.getMeasuredHeight()) / 2.0f));
                layoutParams.rightMargin = (int) (mn.dq(PressButtonInteractView.this.getContext(), 5.0f) + ((-PressButtonInteractView.this.ox.getMeasuredWidth()) / 2.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                PressButtonInteractView.this.f1816d.setLayoutParams(layoutParams);
            }
        });
    }

    private void ox() {
        this.ox = new SplashDiffuseView(this.dq);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 40.0f), (int) mn.dq(this.dq, 40.0f));
        layoutParams.gravity = 8388627;
        addView(this.ox, layoutParams);
        this.f1816d = new ImageView(this.dq);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 62.0f), (int) mn.dq(this.dq, 62.0f));
        layoutParams2.gravity = 16;
        this.f1816d.setImageResource(r.s(this.dq, "tt_splash_hand"));
        addView(this.f1816d, layoutParams2);
    }

    private void p() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f1816d, "scaleX", 1.0f, 0.9f);
        ofFloat.setDuration(800L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.PressButtonInteractView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (PressButtonInteractView.this.s) {
                    PressButtonInteractView.this.ox.dq();
                }
                PressButtonInteractView.this.s = !r2.s;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(PressButtonInteractView.this.f1816d, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
                ofFloat2.start();
                PressButtonInteractView.this.f1816d.setVisibility(0);
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f1816d, "scaleY", 1.0f, 0.9f);
        ofFloat2.setDuration(800L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
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
        ImageView imageView = this.f1816d;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }

    public void dq() {
        this.p.start();
    }
}
