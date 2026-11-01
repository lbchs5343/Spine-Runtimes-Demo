package com.bytedance.sdk.openadsdk.res.layout.video;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import g.tn;

/* loaded from: classes3.dex */
public class mn implements com.bytedance.sdk.openadsdk.res.layout.dq {
    @Override // com.bytedance.sdk.openadsdk.res.layout.dq
    public View dq(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387677);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        b2.setLayoutParams(layoutParams);
        b2.setVisibility(8);
        TextView textView = new TextView(context);
        textView.setId(2114387873);
        RelativeLayout.LayoutParams ac = tn.ac(580, 98, 14, -1);
        ac.addRule(15, -1);
        ac.setMargins(0, ce.ox(context, 20.0f), 0, 0);
        textView.setLayoutParams(ac);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#D33F57"));
        gradientDrawable.setCornerRadius(4.0f);
        textView.setBackground(gradientDrawable);
        textView.setGravity(17);
        textView.setPadding(ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f));
        textView.setTextColor(-1);
        textView.setTextSize(0, 34.0f);
        textView.setText(r.dq(context, "tt_download"));
        textView.setVisibility(8);
        b2.addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setId(2114387847);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, 2114387873);
        layoutParams2.addRule(14, -1);
        layoutParams2.setMargins(0, 60, 0, 0);
        textView2.setLayoutParams(layoutParams2);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setMaxLines(1);
        textView2.setText(r.dq(context, "tt_click_replay"));
        textView2.setTextColor(-1);
        textView2.setTextSize(0, 34.0f);
        b2.addView(textView2);
        return b2;
    }
}
