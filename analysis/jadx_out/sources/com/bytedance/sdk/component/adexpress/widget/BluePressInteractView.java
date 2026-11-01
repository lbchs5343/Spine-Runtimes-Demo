package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class BluePressInteractView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private ObjectAnimator f1789d;
    private AnimatorSet dq;
    private int ia;
    private View iw;
    private int kk;
    private ImageView mn;
    private Context o;
    private boolean ox;
    private View p;
    private View s;

    public BluePressInteractView(Context context, int i, int i2) {
        super(context);
        this.ox = false;
        this.dq = new AnimatorSet();
        this.ia = i;
        this.kk = i2;
        this.o = context;
        ox();
        p();
    }

    private GradientDrawable dq(String str, String str2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(1, Color.parseColor(str2));
        return gradientDrawable;
    }

    private void ox() {
        View view = new View(this.o);
        this.p = view;
        view.setBackground(dq("#1A7BBEFF", "#337BBEFF"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (this.ia * 0.45d), (int) (this.kk * 0.45d));
        layoutParams.gravity = 17;
        this.p.setLayoutParams(layoutParams);
        addView(this.p);
        View view2 = new View(this.o);
        this.s = view2;
        view2.setBackground(dq("#337BBEFF", "#807BBEFF"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (this.ia * 0.25d), (int) (this.kk * 0.25d));
        layoutParams2.gravity = 17;
        this.s.setLayoutParams(layoutParams2);
        addView(this.s);
        View view3 = new View(this.o);
        this.iw = view3;
        view3.setBackground(dq("#807BBEFF", "#FF7BBEFF"));
        int i = this.ia;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) (i * 0.25d), (int) (i * 0.25d));
        layoutParams3.gravity = 17;
        this.iw.setLayoutParams(layoutParams3);
        addView(this.iw);
        ImageView imageView = new ImageView(this.o);
        this.mn = imageView;
        imageView.setImageResource(r.s(getContext(), "tt_blue_hand"));
        this.mn.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((int) (this.ia * 0.62d), (int) (this.kk * 0.53d));
        layoutParams4.gravity = 17;
        layoutParams4.topMargin = (layoutParams4.width / 2) - 5;
        layoutParams4.leftMargin = (layoutParams4.height / 2) - 5;
        this.mn.setLayoutParams(layoutParams4);
        addView(this.mn);
    }

    private void p() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.p, "scaleX", 1.0f, 2.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.p, "scaleY", 1.0f, 2.0f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.s, "scaleX", 1.0f, 2.5f, 1.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.s, "scaleY", 1.0f, 2.5f, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.iw, "scaleX", 1.0f, 1.5f, 1.0f);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.iw, "scaleY", 1.0f, 1.5f, 1.0f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.mn, "rotation", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -20.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f1789d = ofFloat7;
        ofFloat7.setDuration(1000L);
        this.dq.setDuration(1500L);
        this.dq.setInterpolator(new AccelerateDecelerateInterpolator());
        this.dq.play(ofFloat).with(ofFloat2).with(ofFloat3).with(ofFloat4).with(ofFloat5).with(ofFloat6);
        this.dq.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.BluePressInteractView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                BluePressInteractView.this.ox = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (BluePressInteractView.this.ox) {
                    return;
                }
                BluePressInteractView.this.f1789d.start();
                BluePressInteractView.this.dq.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    public void d() {
        this.ox = true;
        ObjectAnimator objectAnimator = this.f1789d;
        if (objectAnimator == null || this.dq == null) {
            return;
        }
        objectAnimator.cancel();
        this.dq.cancel();
    }

    public void dq() {
        this.ox = false;
        ObjectAnimator objectAnimator = this.f1789d;
        if (objectAnimator == null || this.dq == null) {
            return;
        }
        objectAnimator.start();
        this.dq.start();
    }
}
