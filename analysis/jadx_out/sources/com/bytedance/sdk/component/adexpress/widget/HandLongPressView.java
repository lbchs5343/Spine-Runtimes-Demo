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
public class HandLongPressView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f1811d;
    private Context dq;
    private TextView iw;
    private CircleRippleView ox;
    private AnimatorSet p;
    private boolean s;

    public HandLongPressView(Context context) {
        super(context);
        this.s = true;
        this.dq = context;
        this.p = new AnimatorSet();
        ox();
        p();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.HandLongPressView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) HandLongPressView.this.f1811d.getLayoutParams();
                layoutParams.topMargin = ((int) ((HandLongPressView.this.ox.getMeasuredHeight() / 2.0f) - mn.dq(HandLongPressView.this.getContext(), 5.0f))) + ((int) mn.dq(HandLongPressView.this.dq, 20.0f));
                layoutParams.leftMargin = ((int) ((HandLongPressView.this.ox.getMeasuredWidth() / 2.0f) - mn.dq(HandLongPressView.this.getContext(), 5.0f))) + ((int) mn.dq(HandLongPressView.this.dq, 20.0f));
                layoutParams.bottomMargin = (int) (mn.dq(HandLongPressView.this.getContext(), 5.0f) + ((-HandLongPressView.this.ox.getMeasuredHeight()) / 2.0f));
                layoutParams.rightMargin = (int) (mn.dq(HandLongPressView.this.getContext(), 5.0f) + ((-HandLongPressView.this.ox.getMeasuredWidth()) / 2.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                HandLongPressView.this.f1811d.setLayoutParams(layoutParams);
            }
        });
    }

    private void ox() {
        this.ox = new CircleRippleView(this.dq);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 80.0f), (int) mn.dq(this.dq, 80.0f));
        layoutParams.gravity = 8388659;
        layoutParams.topMargin = (int) mn.dq(this.dq, 20.0f);
        int dq = (int) mn.dq(this.dq, 20.0f);
        layoutParams.leftMargin = dq;
        layoutParams.setMarginStart(dq);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.ox, layoutParams);
        this.ox.dq();
        this.f1811d = new ImageView(this.dq);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 80.0f), (int) mn.dq(this.dq, 80.0f));
        this.f1811d.setImageResource(r.s(this.dq, "tt_splash_hand"));
        addView(this.f1811d, layoutParams2);
        TextView textView = new TextView(this.dq);
        this.iw = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) mn.dq(this.dq, 10.0f);
        addView(this.iw, layoutParams3);
    }

    private void p() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f1811d, "scaleX", 1.0f, 0.8f);
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.HandLongPressView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (HandLongPressView.this.s) {
                    HandLongPressView.this.ox.dq();
                    HandLongPressView.this.ox.setAlpha(1.0f);
                } else {
                    HandLongPressView.this.ox.d();
                    HandLongPressView.this.ox.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
                HandLongPressView.this.s = !r2.s;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(HandLongPressView.this.f1811d, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new LinearInterpolator());
                ofFloat2.start();
                HandLongPressView.this.f1811d.setVisibility(0);
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f1811d, "scaleY", 1.0f, 0.8f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.p.playTogether(ofFloat, ofFloat2);
    }

    public void d() {
        AnimatorSet animatorSet = this.p;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        CircleRippleView circleRippleView = this.ox;
        if (circleRippleView != null) {
            circleRippleView.d();
        }
    }

    public void dq() {
        this.p.start();
    }

    public void setGuideText(String str) {
        this.iw.setText(str);
    }

    public void setGuideTextColor(int i) {
        this.iw.setTextColor(i);
    }
}
