package com.bytedance.sdk.openadsdk.res.layout.video;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.widget.RoundImageView;
import g.tn;

/* loaded from: classes3.dex */
public class iw implements com.bytedance.sdk.openadsdk.res.layout.dq {
    private View d(Context context) {
        ImageView aa = tn.aa(context, 2114387809);
        aa.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        aa.setScaleType(ImageView.ScaleType.FIT_CENTER);
        int parseColor = Color.parseColor("#7f000000");
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_OVER;
        aa.setColorFilter(parseColor, mode);
        aa.setImageTintMode(mode);
        return aa;
    }

    private View ox(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387961);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        b2.setLayoutParams(layoutParams);
        RoundImageView roundImageView = new RoundImageView(context);
        roundImageView.setId(2114387667);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ce.ox(context, 44.0f), ce.ox(context, 44.0f));
        layoutParams2.addRule(14);
        roundImageView.setLayoutParams(layoutParams2);
        roundImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        b2.addView(roundImageView);
        TextView textView = new TextView(context);
        textView.setId(2114387957);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ce.ox(context, 44.0f), ce.ox(context, 44.0f));
        layoutParams3.addRule(8, 2114387667);
        layoutParams3.addRule(19, 2114387667);
        layoutParams3.addRule(5, 2114387667);
        layoutParams3.addRule(7, 2114387667);
        layoutParams3.addRule(18, 2114387667);
        layoutParams3.addRule(14);
        textView.setLayoutParams(layoutParams3);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(Color.parseColor("#E0E0E0"));
        textView.setBackground(shapeDrawable);
        textView.setGravity(17);
        textView.setTextColor(-1);
        textView.setTextSize(2, 19.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setVisibility(8);
        b2.addView(textView);
        TextView u = tn.u(context, 2114387769);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(3, 2114387667);
        layoutParams4.addRule(14);
        layoutParams4.setMargins(0, ce.ox(context, 6.0f), 0, ce.ox(context, 20.0f));
        u.setLayoutParams(layoutParams4);
        u.setEllipsize(TextUtils.TruncateAt.END);
        u.setMaxLines(1);
        u.setTextColor(-1);
        u.setTextSize(2, 12.0f);
        b2.addView(u);
        TextView u2 = tn.u(context, 2114387689);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, ce.ox(context, 28.0f));
        layoutParams5.addRule(3, 2114387769);
        layoutParams5.addRule(14);
        layoutParams5.addRule(15);
        layoutParams5.setMargins(0, 0, 0, 0);
        u2.setLayoutParams(layoutParams5);
        u2.setMinWidth(ce.ox(context, 72.0f));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(tn.v("#2A90D7", gradientDrawable, context, 6.0f));
        u2.setBackground(gradientDrawable);
        u2.setGravity(17);
        u2.setPadding(ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f));
        u2.setTextColor(-1);
        u2.setTextSize(2, 14.0f);
        u2.setVisibility(8);
        b2.addView(u2);
        return b2;
    }

    private View p(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387677);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        b2.setLayoutParams(layoutParams);
        b2.setVisibility(8);
        TextView u = tn.u(context, 2114387873);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(580, 98);
        layoutParams2.addRule(14);
        layoutParams2.addRule(15);
        layoutParams2.setMargins(0, ce.ox(context, 20.0f), 0, 0);
        u.setLayoutParams(layoutParams2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#D33F57"));
        gradientDrawable.setCornerRadius(4.0f);
        u.setBackground(gradientDrawable);
        u.setGravity(17);
        u.setPadding(ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f));
        u.setTextColor(-1);
        u.setTextSize(0, 34.0f);
        u.setText(r.dq(context, "tt_download"));
        u.setVisibility(8);
        b2.addView(u);
        TextView textView = new TextView(context);
        textView.setId(2114387847);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(3, 2114387873);
        layoutParams3.addRule(14);
        layoutParams3.setMargins(0, 60, 0, 0);
        textView.setLayoutParams(layoutParams3);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setMaxLines(1);
        textView.setText(r.dq(context, "tt_click_replay"));
        textView.setTextColor(-1);
        textView.setTextSize(0, 34.0f);
        b2.addView(textView);
        return b2;
    }

    @Override // com.bytedance.sdk.openadsdk.res.layout.dq
    public View dq(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387749);
        b2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        b2.setBackgroundColor(r.kk(context, "tt_trans_half_black"));
        b2.addView(d(context));
        b2.addView(ox(context));
        b2.addView(p(context));
        return b2;
    }
}
