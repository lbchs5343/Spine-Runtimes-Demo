package com.bytedance.sdk.openadsdk.res.layout.video;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.tn;

/* loaded from: classes3.dex */
public class LayoutVideoPlayLayoutForLive extends RelativeLayout {
    public LayoutVideoPlayLayoutForLive(Context context) {
        super(context);
        dq(context);
    }

    private void dq(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387717);
        b2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387905);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(0);
        relativeLayout.setGravity(17);
        ImageView aa = tn.aa(context, 2114387654);
        aa.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        aa.setScaleType(ImageView.ScaleType.FIT_CENTER);
        TTProgressBar tTProgressBar = new TTProgressBar(context);
        tTProgressBar.setId(2114387634);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ce.ox(context, 60.0f), ce.ox(context, 60.0f));
        layoutParams.addRule(13);
        tTProgressBar.setLayoutParams(layoutParams);
        tTProgressBar.setIndeterminateDrawable(r.ox(context, "tt_video_loading_progress_bar"));
        relativeLayout.addView(aa);
        relativeLayout.addView(tTProgressBar);
        b2.addView(relativeLayout);
        View dq = new ox().dq(context);
        dq.setId(2114387893);
        b2.addView(dq);
        View dq2 = new p().dq(context);
        dq2.setId(2114387691);
        b2.addView(dq2);
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387629);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageDrawable(r.ox(context, "tt_play_movebar_textpage"));
        imageView.setVisibility(8);
        b2.addView(imageView);
        TTProgressBar tTProgressBar2 = new TTProgressBar(context, null, r.mn(context, "tt_Widget_ProgressBar_Horizontal"));
        tTProgressBar2.setId(2114387656);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, ce.ox(context, 1.5f));
        layoutParams2.addRule(12);
        tTProgressBar2.setBackgroundColor(0);
        tTProgressBar2.setIndeterminateDrawable(null);
        tTProgressBar2.setMax(100);
        GradientDrawable gradientDrawable = new GradientDrawable();
        float v = tn.v("#A5FFFFFF", gradientDrawable, context, 1.0f);
        gradientDrawable.setCornerRadius(v);
        int ox = ce.ox(context, 2.0f);
        gradientDrawable.setSize(-1, ox);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#FFFFFFFF"));
        gradientDrawable2.setCornerRadius(v);
        gradientDrawable2.setSize(-1, ox);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 3, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#FFF85959"));
        gradientDrawable3.setCornerRadius(v);
        gradientDrawable3.setSize(-1, ox);
        tTProgressBar2.setProgressDrawable(new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        tTProgressBar2.setVisibility(8);
        b2.addView(tTProgressBar2, layoutParams2);
        View tTViewStub = new TTViewStub(context, new iw());
        tTViewStub.setId(2114387749);
        tTViewStub.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        b2.addView(tTViewStub);
        View tTViewStub2 = new TTViewStub(context, new d());
        tTViewStub2.setId(2114387669);
        tTViewStub2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        b2.addView(tTViewStub2);
        View tTViewStub3 = new TTViewStub(context, new mn());
        tTViewStub3.setId(2114387833);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(13);
        tTViewStub3.setLayoutParams(layoutParams3);
        b2.addView(tTViewStub3);
        addView(b2);
    }
}
