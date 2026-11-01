package com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.view.PlayableEndcardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardLpBottomView;
import com.bytedance.sdk.openadsdk.core.d.d;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.res.s;
import com.bytedance.sdk.openadsdk.widget.PlayableLoadingView;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class CommonEndCardFrameLayout extends AbstractEndCardFrameLayout {
    private RewardLpBottomView iw;
    private SSWebView ox;
    private SSWebView p;
    private FrameLayout s;

    public CommonEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public void d() {
        super.d();
        RewardLpBottomView rewardLpBottomView = this.iw;
        if (rewardLpBottomView != null) {
            rewardLpBottomView.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public void dq() {
        setId(2114387545);
        SSWebView sSWebView = new SSWebView(this.dq);
        sSWebView.setId(2114387700);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        this.ox = sSWebView;
        addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this.dq);
        linearLayout.setId(2114387544);
        linearLayout.setOrientation(1);
        PlayableEndcardFrameLayout playableEndcardFrameLayout = new PlayableEndcardFrameLayout(this.dq);
        playableEndcardFrameLayout.setId(2114387678);
        SSWebView sSWebView2 = new SSWebView(this.dq);
        sSWebView2.setId(2114387864);
        sSWebView2.setLayerType(2, null);
        sSWebView2.setVisibility(4);
        this.p = sSWebView2;
        playableEndcardFrameLayout.addView(sSWebView2, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(this.dq);
        frameLayout.setId(2114387924);
        frameLayout.setVisibility(8);
        playableEndcardFrameLayout.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        LinearLayout d2 = s.d(this.dq);
        d2.setBackgroundColor(-1);
        playableEndcardFrameLayout.addView(d2, new FrameLayout.LayoutParams(-1, -1));
        PlayableLoadingView playableLoadingView = new PlayableLoadingView(this.dq);
        playableLoadingView.setId(2114387927);
        playableLoadingView.setClickable(true);
        playableLoadingView.setFocusable(true);
        playableEndcardFrameLayout.addView(playableLoadingView, new FrameLayout.LayoutParams(-1, -1));
        RewardLpBottomView rewardLpBottomView = new RewardLpBottomView(this.dq);
        rewardLpBottomView.setId(2114387829);
        rewardLpBottomView.setVisibility(8);
        this.iw = rewardLpBottomView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        playableEndcardFrameLayout.addView(rewardLpBottomView, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        linearLayout.addView(playableEndcardFrameLayout, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.dq);
        linearLayout2.setId(2114387725);
        linearLayout2.setBackgroundColor(Color.parseColor("#161823"));
        linearLayout2.setGravity(1);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(ce.ox(this.dq, 16.0f), ce.ox(this.dq, 8.0f), ce.ox(this.dq, 16.0f), ce.ox(this.dq, 8.0f));
        linearLayout2.setVisibility(8);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 80;
        linearLayout.addView(linearLayout2, layoutParams3);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(this.dq);
        frameLayout2.setId(2114387803);
        frameLayout2.setBackgroundColor(0);
        frameLayout2.setVisibility(8);
        addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        this.s = frameLayout2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public SSWebView getEndCardWebView() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public SSWebView getPlayableWebView() {
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public FrameLayout getVideoArea() {
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public void setClickListener(d dVar) {
    }
}
