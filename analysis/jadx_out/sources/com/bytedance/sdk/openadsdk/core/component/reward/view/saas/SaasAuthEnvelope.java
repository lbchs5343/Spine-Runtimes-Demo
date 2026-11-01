package com.bytedance.sdk.openadsdk.core.component.reward.view.saas;

import android.content.Context;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.mn.ox;
import com.bytedance.sdk.openadsdk.ia.d;

/* loaded from: classes3.dex */
public class SaasAuthEnvelope extends RelativeLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f2676d;
    private AnimationSet dq;
    private ImageView ox;

    public SaasAuthEnvelope(Context context) {
        super(context);
        dq(context);
        setVisibility(8);
    }

    private void dq(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        linearLayout.setId(2114387467);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        addView(linearLayout);
        this.ox = new ImageView(context);
        try {
            d.dq(ox.dq("saas_red_envelope.webp")).dq(this.ox);
        } catch (Error unused) {
        }
        linearLayout.addView(this.ox, new LinearLayout.LayoutParams(-2, -2));
        ImageView imageView = new ImageView(context);
        this.f2676d = imageView;
        try {
            imageView.setImageResource(r.s(context, "tt_saas_close"));
        } catch (Error unused2) {
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = ce.ox(context, 25.0f);
        linearLayout.addView(this.f2676d, layoutParams2);
    }

    public void d() {
        AnimationSet animationSet = this.dq;
        if (animationSet != null) {
            animationSet.cancel();
            this.dq = null;
        }
        setVisibility(8);
    }

    public void dq() {
        setVisibility(0);
        ScaleAnimation scaleAnimation = new ScaleAnimation(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setDuration(800L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(800L);
        AnimationSet animationSet = new AnimationSet(true);
        this.dq = animationSet;
        animationSet.addAnimation(alphaAnimation);
        this.dq.addAnimation(scaleAnimation);
        startAnimation(this.dq);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    public void setOnCloseClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f2676d;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }
}
