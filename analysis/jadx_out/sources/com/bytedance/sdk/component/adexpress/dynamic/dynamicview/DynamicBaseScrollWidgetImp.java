package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class DynamicBaseScrollWidgetImp extends DynamicBaseWidgetImp implements s {

    /* renamed from: d, reason: collision with root package name */
    ObjectAnimator f1698d;
    ObjectAnimator dq;
    private Runnable i;
    private int r;

    public DynamicBaseScrollWidgetImp(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.r = 0;
        this.i = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseScrollWidgetImp.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicBaseScrollWidgetImp.this.kk();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kk() {
        final View childAt = getChildAt(this.r);
        final View childAt2 = getChildAt((this.r + 1) % getChildCount());
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (-(getChildAt(this.r).getHeight() + this.ia)) / 2);
        this.dq = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.dq.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseScrollWidgetImp.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(childAt2, "translationY", (childAt2.getHeight() + this.ia) / 2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f1698d = ofFloat2;
        ofFloat2.setInterpolator(new LinearInterpolator());
        this.f1698d.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseScrollWidgetImp.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                childAt2.setVisibility(0);
            }
        });
        this.dq.setDuration(500L);
        this.f1698d.setDuration(500L);
        this.dq.start();
        this.f1698d.start();
        int i = this.r + 1;
        this.r = i;
        this.r = i % getChildCount();
        postDelayed(this.i, 2000L);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.s
    public void d() {
        removeCallbacks(this.i);
        ObjectAnimator objectAnimator = this.dq;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.dq.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f1698d;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.f1698d.cancel();
        }
        super.d();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.topMargin = (this.ia - layoutParams.height) / 2;
            childAt.setLayoutParams(layoutParams);
            if (i != 0) {
                childAt.setVisibility(8);
            }
        }
        postDelayed(this.i, 2500L);
    }
}
