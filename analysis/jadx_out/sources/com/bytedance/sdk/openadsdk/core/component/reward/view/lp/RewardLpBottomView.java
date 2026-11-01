package com.bytedance.sdk.openadsdk.core.component.reward.view.lp;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.view.SlideUpLoadMoreArrow;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class RewardLpBottomView extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    private SlideUpLoadMoreArrow f2673d;
    private boolean dq;
    private RewardLandingPageAppInfoView ox;

    public RewardLpBottomView(Context context) {
        super(context);
        this.dq = false;
    }

    private void d(j jVar, String str) {
        if (this.dq) {
            RewardLandingPageAppInfoView rewardLandingPageAppInfoView = new RewardLandingPageAppInfoView(getContext());
            this.ox = rewardLandingPageAppInfoView;
            rewardLandingPageAppInfoView.dq(jVar, str);
            addView(this.ox, new LinearLayout.LayoutParams(-2, -2));
        }
    }

    private boolean dq(j jVar) {
        return jVar.y() == 4;
    }

    private void ox() {
        this.f2673d = new SlideUpLoadMoreArrow(getContext(), this.dq ? 12 : 48, false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        addView(this.f2673d, layoutParams);
    }

    private void p() {
        if (this.ox == null) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardLpBottomView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                RewardLpBottomView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (RewardLpBottomView.this.ox == null) {
                    return;
                }
                int measuredHeight = RewardLpBottomView.this.ox.getMeasuredHeight();
                View findViewById = RewardLpBottomView.this.getRootView().findViewById(2114387661);
                if (findViewById == null) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    layoutParams2.leftMargin = 0;
                    layoutParams2.bottomMargin = measuredHeight;
                    findViewById.setLayoutParams(layoutParams2);
                }
            }
        });
    }

    public void d() {
        SlideUpLoadMoreArrow slideUpLoadMoreArrow;
        if (getVisibility() == 0 && (slideUpLoadMoreArrow = this.f2673d) != null) {
            slideUpLoadMoreArrow.d();
            this.f2673d.setVisibility(8);
        }
    }

    public void dq() {
        if (getVisibility() == 0) {
            return;
        }
        setVisibility(0);
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = this.f2673d;
        if (slideUpLoadMoreArrow != null) {
            slideUpLoadMoreArrow.dq();
        }
        p();
    }

    public void dq(j jVar, String str) {
        if (jVar == null) {
            return;
        }
        this.dq = dq(jVar);
        ox();
        if (!gh.ox(jVar)) {
            d(jVar, str);
        }
        setOrientation(1);
        setVisibility(8);
        setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -2013265920}));
    }

    public void setDownLoadClickListener(View.OnClickListener onClickListener) {
        RewardLandingPageAppInfoView rewardLandingPageAppInfoView = this.ox;
        if (rewardLandingPageAppInfoView == null || onClickListener == null) {
            return;
        }
        rewardLandingPageAppInfoView.setDownLoadClickListener(onClickListener);
    }
}
