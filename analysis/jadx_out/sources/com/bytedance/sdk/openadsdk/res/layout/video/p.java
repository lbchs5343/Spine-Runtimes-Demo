package com.bytedance.sdk.openadsdk.res.layout.video;

import android.R;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import g.tn;

/* loaded from: classes3.dex */
public class p extends dq {
    private View d(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387696);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, ce.ox(context, 32.0f));
        layoutParams.addRule(3, 2114387812);
        layoutParams.addRule(14);
        layoutParams.topMargin = ce.ox(context, 17.0f);
        b2.setLayoutParams(layoutParams);
        b2.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(tn.v("#F93F3F", gradientDrawable, context, 5.0f));
        b2.setBackground(gradientDrawable);
        b2.setMinimumWidth(ce.ox(context, 110.0f));
        View imageView = new ImageView(context);
        imageView.setId(2114387881);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ce.ox(context, 12.0f), ce.ox(context, 14.0f));
        layoutParams2.addRule(15);
        layoutParams2.rightMargin = ce.ox(context, 6.0f);
        imageView.setLayoutParams(layoutParams2);
        imageView.setBackground(r.ox(context, "tt_live_ad_loading_btn_status"));
        TextView textView = new TextView(context);
        textView.setId(2114387757);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(1, 2114387881);
        layoutParams3.addRule(17, 2114387881);
        textView.setGravity(16);
        textView.setSingleLine(true);
        textView.setText(r.dq(context, "tt_live_loading_btn"));
        textView.setTextColor(-1);
        textView.setTextSize(2, 11.0f);
        textView.setLayoutParams(layoutParams3);
        View imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(ce.ox(context, 12.0f), ce.ox(context, 14.0f));
        layoutParams4.addRule(13);
        layoutParams4.addRule(1, 2114387757);
        layoutParams4.addRule(17, 2114387757);
        imageView2.setLayoutParams(layoutParams4);
        imageView2.setBackground(r.ox(context, "tt_splash_click_bar_go"));
        b2.addView(imageView);
        b2.addView(textView);
        b2.addView(imageView2);
        return b2;
    }

    @Override // com.bytedance.sdk.openadsdk.res.layout.dq
    public View dq(Context context) {
        RelativeLayout dq = dq(context, 2114387619);
        dq.setVisibility(8);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        dq.addView(relativeLayout, layoutParams);
        relativeLayout.addView(d(context, 0));
        TextView textView = new TextView(context);
        textView.setId(2114387747);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, 2114387916);
        layoutParams2.addRule(14);
        layoutParams2.setMargins(0, ce.ox(context, 13.0f), 0, 0);
        textView.setLayoutParams(layoutParams2);
        textView.setTextColor(context.getResources().getColor(R.color.white));
        textView.setTextSize(2, 16.0f);
        relativeLayout.addView(textView);
        TextView u = tn.u(context, 2114387812);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(3, 2114387747);
        layoutParams3.addRule(14);
        layoutParams3.setMargins(0, ce.ox(context, 8.0f), 0, 0);
        u.setLayoutParams(layoutParams3);
        u.setTextColor(context.getResources().getColor(R.color.white));
        u.setTextSize(2, 12.0f);
        u.setText(r.dq(context, "tt_live_loading_text"));
        relativeLayout.addView(u);
        relativeLayout.addView(d(context));
        return dq;
    }
}
