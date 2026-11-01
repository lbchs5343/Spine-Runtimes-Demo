package com.bytedance.sdk.openadsdk.core.component.reward.view.saas;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.mn.ox;
import com.bytedance.sdk.openadsdk.core.r.er;
import com.bytedance.sdk.openadsdk.ia.d;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;
import g.tn;

/* loaded from: classes3.dex */
public class SaasAuthProductEnvelope extends BaseSaasEnvelope {
    public SaasAuthProductEnvelope(Context context, er.dq dqVar) {
        super(context);
        dq(context, dqVar);
    }

    private void dq(Context context, er.dq dqVar) {
        if (dqVar == null) {
            setVisibility(8);
            return;
        }
        RelativeLayout dq = dq(context);
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        try {
            d.dq(ox.dq("saas_reward_goods_bg.webp")).dq(imageView);
        } catch (Error unused) {
        }
        dq.addView(imageView);
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        textView.setId(2114387807);
        layoutParams.topMargin = ce.ox(context, 20.0f);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(2, 16.0f);
        textView.setGravity(17);
        textView.setText("超值好物");
        textView.setTextColor(Color.parseColor("#A9512C"));
        textView.setTypeface(null, 1);
        dq.addView(textView);
        TextView textView2 = new TextView(context);
        RelativeLayout.LayoutParams q = tn.q(-2, -2, 14);
        q.addRule(3, textView.getId());
        q.topMargin = ce.ox(context, 20.0f);
        textView2.setId(2114387465);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setMaxLines(1);
        textView2.setMaxWidth(ce.ox(context, 200.0f));
        textView2.setLayoutParams(q);
        textView2.setTextSize(2, 12.0f);
        textView2.setGravity(17);
        textView2.setText(dqVar.dq());
        textView2.setTextColor(Color.parseColor("#161823"));
        dq.addView(textView2);
        int ox = ce.ox(context, 80.0f);
        int ox2 = ce.ox(context, 10.0f);
        ImageView tTRoundRectImageView = new TTRoundRectImageView(context, ox2, ox2);
        tTRoundRectImageView.setId(2114387459);
        RelativeLayout.LayoutParams q2 = tn.q(ox, ox, 14);
        q2.addRule(3, textView2.getId());
        q2.topMargin = ce.ox(context, 12.0f);
        d.dq(dqVar.d()).dq(ox).d(ox).dq(tTRoundRectImageView);
        tTRoundRectImageView.setLayoutParams(q2);
        dq.addView(tTRoundRectImageView);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387460);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams q3 = tn.q(-2, -2, 14);
        q3.addRule(3, tTRoundRectImageView.getId());
        q3.topMargin = ce.ox(context, 12.0f);
        linearLayout.setLayoutParams(q3);
        TextView textView3 = new TextView(context);
        textView3.setTextSize(2, 11.0f);
        textView3.setTypeface(null, 1);
        textView3.setTextColor(Color.parseColor("#F93F3F"));
        textView3.setText("¥");
        linearLayout.addView(textView3);
        double p = dqVar.p();
        int floor = (int) Math.floor(p);
        int i = (int) ((p - floor) * 100.0d);
        TextView textView4 = new TextView(context);
        textView4.setTextSize(2, 16.0f);
        textView4.setTypeface(null, 1);
        textView4.setTextColor(Color.parseColor("#F93F3F"));
        textView4.setText(String.valueOf(floor));
        linearLayout.addView(textView4);
        TextView textView5 = new TextView(context);
        textView5.setTextSize(2, 11.0f);
        textView5.setTypeface(null, 1);
        textView5.setTextColor(Color.parseColor("#F93F3F"));
        StringBuilder sb = new StringBuilder(".");
        sb.append(i);
        sb.append(i >= 10 ? "" : "0");
        textView5.setText(sb.toString());
        linearLayout.addView(textView5);
        TextView textView6 = new TextView(context);
        textView6.getPaint().setFlags(16);
        textView6.setTextSize(2, 11.0f);
        textView6.setTextColor(Color.parseColor("#161823"));
        textView6.setText("￥" + dqVar.ox());
        linearLayout.addView(textView6);
        dq.addView(linearLayout);
        dq(context, "一键关联抖音购买", dq);
        addView(dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.saas.BaseSaasEnvelope
    public void d() {
        super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.saas.BaseSaasEnvelope
    public void dq() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }
}
