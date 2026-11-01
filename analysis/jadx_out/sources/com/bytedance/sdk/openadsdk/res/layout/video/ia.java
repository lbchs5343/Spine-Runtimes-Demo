package com.bytedance.sdk.openadsdk.res.layout.video;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import g.tn;

/* loaded from: classes3.dex */
public class ia implements com.bytedance.sdk.openadsdk.res.layout.dq {
    @Override // com.bytedance.sdk.openadsdk.res.layout.dq
    public View dq(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387875);
        b2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        b2.setBackgroundColor(Color.parseColor("#00000000"));
        b2.setGravity(16);
        b2.setVisibility(8);
        TextView textView = new TextView(context);
        textView.setId(2114387822);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14, -1);
        textView.setLayoutParams(layoutParams);
        textView.setIncludeFontPadding(false);
        textView.setText(r.dq(context, "tt_video_without_wifi_tips"));
        textView.setTextColor(r.kk(context, "tt_ssxinzi9"));
        textView.setTextSize(2, 14.0f);
        textView.setVisibility(8);
        b2.addView(textView);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387885);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, 2114387822);
        layoutParams2.addRule(13, -1);
        relativeLayout.setLayoutParams(layoutParams2);
        ImageView aa = tn.aa(context, 2114387805);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ce.ox(context, 44.0f), ce.ox(context, 44.0f));
        layoutParams3.addRule(15, -1);
        layoutParams3.addRule(14, -1);
        aa.setLayoutParams(layoutParams3);
        aa.setScaleType(ImageView.ScaleType.FIT_XY);
        aa.setImageDrawable(r.ox(context, "tt_new_play_video"));
        relativeLayout.addView(aa);
        b2.addView(relativeLayout);
        return b2;
    }
}
