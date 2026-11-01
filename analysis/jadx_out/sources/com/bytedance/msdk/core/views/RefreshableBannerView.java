package com.bytedance.msdk.core.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class RefreshableBannerView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private boolean f1029d;
    private boolean dq;
    private dq iw;
    private boolean ox;
    private final Rect p;
    private final ViewTreeObserver.OnScrollChangedListener s;

    public interface dq {
        void dq(boolean z);
    }

    public RefreshableBannerView(Context context) {
        super(context);
        this.dq = true;
        this.f1029d = true;
        this.ox = true;
        this.p = new Rect();
        this.s = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.msdk.core.views.RefreshableBannerView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                RefreshableBannerView refreshableBannerView = RefreshableBannerView.this;
                refreshableBannerView.f1029d = refreshableBannerView.getGlobalVisibleRect(refreshableBannerView.p);
                RefreshableBannerView refreshableBannerView2 = RefreshableBannerView.this;
                refreshableBannerView2.dq(refreshableBannerView2.f1029d);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(boolean z) {
        boolean z2 = this.dq && this.f1029d;
        if (z) {
            if (!z2 || this.ox) {
                return;
            }
            this.ox = true;
            dq dqVar = this.iw;
            if (dqVar != null) {
                dqVar.dq(true);
                return;
            }
            return;
        }
        if (z2 || !this.ox) {
            return;
        }
        this.ox = false;
        dq dqVar2 = this.iw;
        if (dqVar2 != null) {
            dqVar2.dq(false);
        }
    }

    public void dq(View view) {
        view.setTranslationX(getWidth());
        addView(view);
        ObjectAnimator.ofFloat(view, "translationX", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration(250L).start();
        if (getChildCount() > 1) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(getChildAt(0), "translationX", -getWidth()).setDuration(250L);
            duration.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.msdk.core.views.RefreshableBannerView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (RefreshableBannerView.this.getChildCount() > 1) {
                        RefreshableBannerView.this.removeViewAt(0);
                        ox.dq("TMe", "--==-- after remove, view count: " + RefreshableBannerView.this.getChildCount());
                    }
                }
            });
            duration.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.s);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.s);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        boolean z = i == 0;
        this.dq = z;
        dq(z);
    }

    public void setVisibilityChangeListener(dq dqVar) {
        this.iw = dqVar;
    }
}
