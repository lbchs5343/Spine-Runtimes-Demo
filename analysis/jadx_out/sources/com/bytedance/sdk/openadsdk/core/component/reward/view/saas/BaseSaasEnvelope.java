package com.bytedance.sdk.openadsdk.core.component.reward.view.saas;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.mn.ox;
import com.bytedance.sdk.openadsdk.ia.d;

/* loaded from: classes3.dex */
public abstract class BaseSaasEnvelope extends RelativeLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f2674d;
    private View dq;
    private AnimatorSet ox;

    public BaseSaasEnvelope(Context context) {
        super(context);
    }

    private View d(Context context) {
        String kk = c.kk(getContext());
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.bottomMargin = ce.ox(context, 80.0f);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(2, 10.0f);
        textView.setGravity(17);
        textView.setText("关联后" + kk + "将获取你的抖音头像和昵称");
        textView.setTextColor(Color.parseColor("#AAFFFFFF"));
        return textView;
    }

    private View dq(Context context, View view) {
        ImageView imageView = new ImageView(context);
        d.dq(ox.dq("saas_reward_title.webp")).dq(imageView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(2, view.getId());
        layoutParams.setMargins(0, 0, 0, ce.ox(context, 20.0f));
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private View dq(Context context, String str) {
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ce.ox(context, 166.0f), ce.ox(context, 40.0f));
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.bottomMargin = ce.ox(context, 26.0f);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(2, 16.0f);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(Color.parseColor("#9D301A"));
        textView.setTypeface(null, 1);
        int ox = ce.ox(context, 40.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        float f2 = ox;
        gradientDrawable.setCornerRadii(new float[]{f2, f2, f2, f2, f2, f2, f2, f2});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setColors(new int[]{Color.parseColor("#F2AC5F"), Color.parseColor("#FFEECC")});
        textView.setBackground(gradientDrawable);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, "scaleX", 1.0f, 1.05f, 1.0f);
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(2);
        ofFloat.setDuration(800L);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, "scaleY", 1.0f, 1.05f, 1.0f);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setDuration(800L);
        AnimatorSet animatorSet = new AnimatorSet();
        this.ox = animatorSet;
        animatorSet.play(ofFloat).with(ofFloat2);
        this.ox.start();
        return textView;
    }

    public void d() {
        AnimatorSet animatorSet = this.ox;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.ox = null;
        }
    }

    public RelativeLayout dq(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ce.ox(getContext(), 301.0f), ce.ox(getContext(), 344.0f));
        layoutParams.addRule(13);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setId(2114387461);
        return relativeLayout;
    }

    public abstract void dq();

    public void dq(Context context, String str, RelativeLayout relativeLayout) {
        View dq = dq(context, str);
        this.dq = dq;
        relativeLayout.addView(dq);
        relativeLayout.addView(d(context));
        this.dq.setTag(TTAdConstant.KEY_CLICK_AREA, 2917);
        addView(dq(context, relativeLayout));
        ImageView imageView = new ImageView(context);
        this.f2674d = imageView;
        imageView.setImageResource(r.s(context, "tt_saas_close"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(3, relativeLayout.getId());
        layoutParams.topMargin = ce.ox(context, 25.0f);
        addView(this.f2674d, layoutParams);
    }

    public void setOnButtonClickListener(final View.OnClickListener onClickListener) {
        View view = this.dq;
        if (view == null || onClickListener == null) {
            return;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.saas.BaseSaasEnvelope.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BaseSaasEnvelope.this.d();
                onClickListener.onClick(view2);
            }
        });
    }

    public void setOnCloseClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f2674d;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }
}
