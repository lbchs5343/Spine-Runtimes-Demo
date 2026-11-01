package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.live.view.DoubleColorBallAnimationView;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;

/* loaded from: classes3.dex */
public class kk extends d {
    private DoubleColorBallAnimationView jy;
    LinearLayout mp;
    private ImageView q;

    public kk(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        super(tTBaseVideoActivity, jVar, z);
    }

    public void d() {
        DoubleColorBallAnimationView doubleColorBallAnimationView = this.jy;
        if (doubleColorBallAnimationView != null) {
            doubleColorBallAnimationView.d();
            this.mp.setVisibility(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        super.dq();
        this.q = new ImageView(this.f2610d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.q.setAdjustViewBounds(true);
        this.q.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.q.setLayoutParams(layoutParams);
        this.mn.addView(this.q);
        View view = new View(this.f2610d);
        view.setBackgroundColor(Color.parseColor("#A6000000"));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.mn.addView(view);
        LinearLayout linearLayout = new LinearLayout(this.f2610d);
        this.mp = linearLayout;
        linearLayout.setOrientation(1);
        TextView textView = new TextView(this.f2610d);
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setText(r.dq(this.f2610d, "tt_reward_live_grant"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = 24;
        textView.setLayoutParams(layoutParams2);
        this.jy = new DoubleColorBallAnimationView(this.f2610d);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(ce.ox(this.f2610d, 60.0f), ce.ox(this.f2610d, 60.0f));
        layoutParams3.gravity = 17;
        this.jy.setLayoutParams(layoutParams3);
        this.mp.addView(this.jy);
        this.mp.addView(textView);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 17;
        this.mp.setLayoutParams(layoutParams4);
        this.mn.addView(this.mp);
        this.mp.setVisibility(8);
        String d2 = pa.d(this.ox);
        if (TextUtils.isEmpty(d2)) {
            return;
        }
        com.bytedance.sdk.openadsdk.ia.d.dq(d2).dq(this.mn.getWidth()).d(this.mn.getHeight()).dq(this.q);
    }

    public void ox() {
        DoubleColorBallAnimationView doubleColorBallAnimationView = this.jy;
        if (doubleColorBallAnimationView != null) {
            doubleColorBallAnimationView.ox();
            this.mp.setVisibility(8);
        }
    }
}
