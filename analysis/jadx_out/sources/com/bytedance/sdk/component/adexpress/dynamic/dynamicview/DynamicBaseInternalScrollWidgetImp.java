package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class DynamicBaseInternalScrollWidgetImp extends DynamicBaseWidgetImp implements s {

    /* renamed from: d, reason: collision with root package name */
    ObjectAnimator f1695d;
    ObjectAnimator dq;
    private boolean i;
    private Runnable le;
    private int r;

    public DynamicBaseInternalScrollWidgetImp(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.r = 0;
        this.i = false;
        this.le = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseInternalScrollWidgetImp.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicBaseInternalScrollWidgetImp.this.kk();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kk() {
        final View childAt;
        final View childAt2 = getChildAt(this.r);
        int i = this.r;
        if (i == 0) {
            this.i = false;
        }
        if (i + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.r + 1)).getChildCount() <= 0) {
            this.i = true;
            childAt = getChildAt(this.r - 1);
            this.dq = ObjectAnimator.ofFloat(childAt2, "translationX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (getChildAt(this.r).getWidth() + this.mn) / 2);
        } else {
            childAt = getChildAt(this.r + 1);
            this.dq = ObjectAnimator.ofFloat(childAt2, "translationX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (-(getChildAt(this.r).getWidth() + this.mn)) / 2);
        }
        this.dq.setInterpolator(new LinearInterpolator());
        this.dq.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseInternalScrollWidgetImp.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt2.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        if (this.i) {
            this.f1695d = ObjectAnimator.ofFloat(childAt, "translationX", (-(childAt.getWidth() + this.mn)) / 2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            this.f1695d = ObjectAnimator.ofFloat(childAt, "translationX", (childAt.getWidth() + this.mn) / 2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        this.f1695d.setInterpolator(new LinearInterpolator());
        this.f1695d.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseInternalScrollWidgetImp.3
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
                childAt.setVisibility(0);
            }
        });
        this.dq.setDuration(500L);
        this.f1695d.setDuration(500L);
        this.dq.start();
        this.f1695d.start();
        if (this.i) {
            this.r--;
        } else {
            this.r++;
        }
        postDelayed(this.le, 2000L);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.s
    public void d() {
        removeCallbacks(this.le);
        ObjectAnimator objectAnimator = this.dq;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.dq.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f1695d;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.f1695d.cancel();
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
        postDelayed(this.le, 2500L);
    }
}
