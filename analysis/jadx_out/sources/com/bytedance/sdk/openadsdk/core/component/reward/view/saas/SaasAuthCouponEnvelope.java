package com.bytedance.sdk.openadsdk.core.component.reward.view.saas;

import android.content.Context;
import android.graphics.Color;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.mn.ox;
import com.bytedance.sdk.openadsdk.core.r.er;
import com.bytedance.sdk.openadsdk.ia.d;
import g.tn;

/* loaded from: classes3.dex */
public class SaasAuthCouponEnvelope extends BaseSaasEnvelope {
    private TextView dq;

    public SaasAuthCouponEnvelope(Context context, er.d dVar) {
        super(context);
        dq(context, dVar);
    }

    private void dq(Context context, er.d dVar) {
        if (dVar == null) {
            setVisibility(8);
            return;
        }
        RelativeLayout dq = dq(context);
        ImageView imageView = new ImageView(context);
        try {
            d.dq(ox.dq("saas_reward_coupon_bg.webp")).dq(imageView);
        } catch (Error unused) {
        }
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        dq.addView(imageView, new RelativeLayout.LayoutParams(-1, -1));
        TextView textView = new TextView(context);
        textView.setId(2114387807);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        textView.setLayoutParams(layoutParams);
        layoutParams.topMargin = ce.ox(context, 20.0f);
        textView.setText("优惠券");
        textView.setTextColor(Color.parseColor("#A9512C"));
        textView.setTextSize(2, 16.0f);
        dq.addView(textView);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387464);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams q = tn.q(-2, -2, 14);
        q.addRule(3, textView.getId());
        linearLayout.setLayoutParams(q);
        TextView textView2 = new TextView(context);
        this.dq = textView2;
        textView2.setId(2114387463);
        this.dq.setText(String.valueOf(dVar.dq()));
        this.dq.setTextColor(Color.parseColor("#F93F3F"));
        this.dq.setTextSize(2, 60.0f);
        linearLayout.addView(this.dq, new RelativeLayout.LayoutParams(-2, -2));
        TextView textView3 = new TextView(context);
        textView3.setText("元");
        textView3.setTextColor(Color.parseColor("#F93F3F"));
        textView3.setTextSize(2, 20.0f);
        linearLayout.addView(textView3, new RelativeLayout.LayoutParams(-2, -2));
        dq.addView(linearLayout);
        TextView textView4 = new TextView(context);
        textView4.setId(2114387462);
        textView4.setText("满" + dVar.d() + "元可用");
        textView4.setTextColor(Color.parseColor("#F93F3F"));
        textView4.setTextSize(2, 16.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(3, linearLayout.getId());
        layoutParams2.topMargin = ce.ox(context, -4.0f);
        dq.addView(textView4, layoutParams2);
        TextView textView5 = new TextView(context);
        textView5.setText("领取后30分钟内有效");
        textView5.setTextColor(Color.parseColor("#894200"));
        textView5.setTextSize(2, 14.0f);
        RelativeLayout.LayoutParams q2 = tn.q(-2, -2, 14);
        q2.addRule(3, textView4.getId());
        q2.topMargin = ce.ox(context, 8.0f);
        dq.addView(textView5, q2);
        dq(context, "一键关联抖音领取", dq);
        addView(dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.saas.BaseSaasEnvelope
    public void d() {
        setVisibility(8);
        super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.saas.BaseSaasEnvelope
    public void dq() {
        setVisibility(0);
    }
}
