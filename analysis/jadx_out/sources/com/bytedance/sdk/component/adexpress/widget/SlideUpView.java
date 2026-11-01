package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.p;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class SlideUpView extends RelativeLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f1824d;
    private ImageView dq;
    private AnimatorSet ia;
    private AnimatorSet iw;
    private AnimatorSet kk;
    private AnimatorSet mn;
    private int no;
    private String o;
    private ImageView ox;
    private TextView p;
    private TextView s;

    public SlideUpView(Context context) {
        super(context);
        this.iw = new AnimatorSet();
        this.mn = new AnimatorSet();
        this.ia = new AnimatorSet();
        this.kk = new AnimatorSet();
        this.no = 100;
        dq(context);
    }

    public SlideUpView(Context context, String str) {
        super(context);
        this.iw = new AnimatorSet();
        this.mn = new AnimatorSet();
        this.ia = new AnimatorSet();
        this.kk = new AnimatorSet();
        this.no = 100;
        setClipChildren(false);
        this.o = str;
        dq(context);
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
            AnimatorSet animatorSet3 = this.mn;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.kk;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Exception e2) {
            ig.d(e2.getMessage());
        }
    }

    public void dq() {
        ox();
        this.iw.start();
        this.iw.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideUpView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SlideUpView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideUpView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlideUpView.this.iw.start();
                    }
                }, 200L);
            }
        });
    }

    public void dq(Context context) {
        if (context == null) {
            context = p.getContext();
        }
        if ("5".equals(this.o)) {
            addView(com.bytedance.sdk.component.adexpress.ox.dq.iw(context));
            this.no = (int) (this.no * 1.25d);
        } else {
            addView(com.bytedance.sdk.component.adexpress.ox.dq.s(context));
        }
        this.dq = (ImageView) findViewById(2097610734);
        this.f1824d = (ImageView) findViewById(2097610735);
        this.p = (TextView) findViewById(2097610730);
        this.ox = (ImageView) findViewById(2097610733);
        this.s = (TextView) findViewById(2097610731);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.iw;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    public void ox() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.dq, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.dq, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.dq, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, mn.dq(getContext(), -this.no));
        ofFloat3.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, (int) mn.dq(getContext(), this.no));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideUpView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (SlideUpView.this.ox != null) {
                    Integer num = (Integer) valueAnimator.getAnimatedValue();
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) SlideUpView.this.ox.getLayoutParams();
                    layoutParams.height = num.intValue();
                    SlideUpView.this.ox.setLayoutParams(layoutParams);
                }
            }
        });
        ofInt.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.ox, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.ox, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.f1824d, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.f1824d, "alpha", 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.f1824d, "scaleX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.f1824d, "scaleY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ObjectAnimator ofFloat10 = ObjectAnimator.ofFloat(this.f1824d, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, mn.dq(getContext(), -this.no));
        ofFloat10.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.3f, 1.0f));
        this.mn.setDuration(50L);
        this.kk.setDuration(1500L);
        this.ia.setDuration(50L);
        this.mn.playTogether(ofFloat2, ofFloat7, ofFloat5);
        this.ia.playTogether(ofFloat, ofFloat6, ofFloat8, ofFloat9, ofFloat4);
        this.kk.playTogether(ofFloat3, ofInt, ofFloat10);
        this.iw.playSequentially(this.ia, this.kk, this.mn);
    }

    public void setGuideText(String str) {
        TextView textView = this.p;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setSlideText(String str) {
        if (this.s != null) {
            if (TextUtils.isEmpty(str)) {
                this.s.setText("");
            } else {
                this.s.setText(str);
            }
        }
    }
}
