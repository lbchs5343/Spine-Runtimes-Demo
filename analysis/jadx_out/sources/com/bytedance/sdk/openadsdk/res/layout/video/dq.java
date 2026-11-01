package com.bytedance.sdk.openadsdk.res.layout.video;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.widget.RoundImageView;
import g.tn;

/* loaded from: classes3.dex */
public abstract class dq implements com.bytedance.sdk.openadsdk.res.layout.dq {
    public View d(Context context, int i) {
        RelativeLayout b2 = tn.b(context, 2114387916);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ce.ox(context, 66.0f), ce.ox(context, 66.0f));
        layoutParams.addRule(14);
        if (i != 0) {
            layoutParams.setMargins(0, ce.ox(context, i), 0, 0);
        }
        b2.setLayoutParams(layoutParams);
        b2.setBackground(r.ox(context, "tt_live_avatar_bg"));
        View roundImageView = new RoundImageView(context);
        roundImageView.setId(2114387836);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ce.ox(context, 65.0f), ce.ox(context, 65.0f));
        layoutParams2.addRule(14);
        layoutParams2.addRule(10);
        roundImageView.setLayoutParams(layoutParams2);
        b2.addView(roundImageView);
        View imageView = new ImageView(context);
        imageView.setId(2114387611);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ce.ox(context, 42.0f), ce.ox(context, 18.0f));
        layoutParams3.addRule(13);
        layoutParams3.addRule(12);
        imageView.setLayoutParams(layoutParams3);
        imageView.setBackground(r.ox(context, "tt_live_ad_status_icon"));
        b2.addView(imageView);
        return b2;
    }

    public View dq(Context context, int i, int i2) {
        RelativeLayout b2 = tn.b(context, 2114387696);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ce.ox(context, 44.0f));
        layoutParams.addRule(12);
        layoutParams.setMargins(ce.ox(context, 40.0f), 0, ce.ox(context, 40.0f), ce.ox(context, i));
        b2.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(tn.v("#F93F3F", gradientDrawable, context, 5.0f));
        b2.setBackground(gradientDrawable);
        b2.setGravity(17);
        View aa = tn.aa(context, 2114387881);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ce.ox(context, 14.0f), ce.ox(context, 16.0f));
        layoutParams2.addRule(15);
        layoutParams2.setMargins(0, 0, ce.ox(context, i2), 0);
        aa.setLayoutParams(layoutParams2);
        aa.setBackground(r.ox(context, "tt_live_ad_loading_btn_status"));
        b2.addView(aa);
        TextView textView = new TextView(context);
        textView.setId(2114387757);
        RelativeLayout.LayoutParams ac = tn.ac(-2, -1, 1, 2114387881);
        ac.addRule(17, 2114387881);
        ac.addRule(15);
        textView.setLayoutParams(ac);
        textView.setGravity(16);
        textView.setSingleLine(true);
        textView.setText(r.dq(context, "tt_live_loading_btn"));
        textView.setTextColor(-1);
        b2.addView(textView);
        View imageView = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ce.ox(context, 14.0f), ce.ox(context, 16.0f));
        layoutParams3.addRule(1, 2114387757);
        layoutParams3.addRule(13);
        layoutParams3.setMargins(0, 0, ce.ox(context, 6.0f), 0);
        imageView.setLayoutParams(layoutParams3);
        imageView.setBackground(r.ox(context, "tt_splash_click_bar_go"));
        b2.addView(imageView);
        return b2;
    }

    public RelativeLayout dq(Context context, int i) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(Color.parseColor("#99000000"));
        if (i != 0) {
            relativeLayout.setId(i);
        }
        return relativeLayout;
    }
}
