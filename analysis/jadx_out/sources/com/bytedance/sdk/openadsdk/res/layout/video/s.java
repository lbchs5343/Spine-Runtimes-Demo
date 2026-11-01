package com.bytedance.sdk.openadsdk.res.layout.video;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.r;
import g.tn;

/* loaded from: classes3.dex */
public class s implements com.bytedance.sdk.openadsdk.res.layout.dq {
    @Override // com.bytedance.sdk.openadsdk.res.layout.dq
    public View dq(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387815);
        b2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        b2.setVisibility(8);
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387954);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        b2.addView(imageView);
        ImageView imageView2 = new ImageView(context);
        imageView2.setId(2114387852);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13, -1);
        imageView2.setLayoutParams(layoutParams2);
        imageView2.setVisibility(8);
        imageView2.setBackground(r.ox(context, "tt_new_play_video"));
        b2.addView(imageView2);
        return b2;
    }
}
