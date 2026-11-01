package com.bytedance.sdk.openadsdk.res.layout.video;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.tn;

/* loaded from: classes3.dex */
public class LayoutVideoDetail extends RelativeLayout {
    public LayoutVideoDetail(Context context) {
        super(context);
        dq(context);
    }

    private View d(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387905);
        b2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        b2.setBackgroundColor(0);
        b2.setGravity(17);
        ImageView aa = tn.aa(context, 2114387654);
        aa.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        aa.setScaleType(ImageView.ScaleType.FIT_CENTER);
        TTProgressBar tTProgressBar = new TTProgressBar(context);
        tTProgressBar.setId(2114387634);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ce.ox(context, 60.0f), ce.ox(context, 60.0f));
        layoutParams.addRule(13);
        tTProgressBar.setLayoutParams(layoutParams);
        tTProgressBar.setIndeterminateDrawable(r.ox(context, "tt_video_loading_progress_bar"));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387828);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        linearLayout.setLayoutParams(layoutParams2);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        linearLayout.setVisibility(8);
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387621);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageDrawable(r.ox(context, "tt_refreshing_video_textpage"));
        TextView textView = new TextView(context);
        textView.setId(2114387865);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText(r.dq(context, "tt_video_retry_des_txt"));
        textView.setTextColor(r.kk(context, "tt_heise3"));
        linearLayout.addView(imageView);
        linearLayout.addView(textView);
        b2.addView(aa);
        b2.addView(tTProgressBar);
        b2.addView(linearLayout);
        return b2;
    }

    private void dq(Context context) {
        setId(2114387717);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        setBackgroundColor(-1);
        addView(d(context));
        addView(new p().dq(context));
        addView(ox(context));
        addView(p(context));
        addView(s(context));
        addView(iw(context));
        addView(mn(context));
        addView(ia(context));
        TTViewStub tTViewStub = new TTViewStub(context, new iw());
        tTViewStub.setId(2114387749);
        tTViewStub.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(tTViewStub);
        TTViewStub tTViewStub2 = new TTViewStub(context, new d());
        tTViewStub2.setId(2114387669);
        tTViewStub2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(tTViewStub2);
        addView(kk(context));
    }

    private View ia(Context context) {
        LinearLayout j = tn.j(context, 2114387631);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ce.ox(context, 40.0f));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        j.setLayoutParams(layoutParams);
        j.setGravity(16);
        j.setOrientation(0);
        j.setVisibility(8);
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams g2 = tn.g(textView, 2114387816, -2, -2);
        g2.setMargins(ce.ox(context, 16.0f), 0, ce.ox(context, 12.0f), 0);
        textView.setLayoutParams(g2);
        textView.setText("00:00");
        textView.setTextColor(-1);
        textView.setTextSize(2, 10.0f);
        j.addView(textView);
        SeekBar seekBar = new SeekBar(context);
        seekBar.setId(2114387877);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams2.gravity = 16;
        seekBar.setLayoutParams(layoutParams2);
        seekBar.setBackground(null);
        seekBar.setMax(100);
        if (Build.VERSION.SDK_INT >= 29) {
            seekBar.setMaxHeight(ce.ox(context, 4.0f));
            seekBar.setMinHeight(ce.ox(context, 4.0f));
        } else {
            layoutParams2.height = ce.ox(context, 4.0f);
        }
        seekBar.setPadding(0, 0, 0, 0);
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
        seekBar.setProgressDrawable(new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(Color.parseColor("#FFFFFFFF"));
        int ox2 = ce.ox(context, 15.0f);
        shapeDrawable.setIntrinsicWidth(ox2);
        shapeDrawable.setIntrinsicHeight(ox2);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(ce.ox(context, 1.0f));
        paint.setColor(Color.parseColor("#1E000000"));
        seekBar.setThumb(shapeDrawable);
        seekBar.setThumbOffset(0);
        j.addView(seekBar);
        TextView textView2 = new TextView(context);
        LinearLayout.LayoutParams g3 = tn.g(textView2, 2114387671, -2, -2);
        g3.setMargins(ce.ox(context, 12.0f), 0, ce.ox(context, 16.0f), 0);
        textView2.setLayoutParams(g3);
        textView2.setText("00:00");
        textView2.setTextColor(-1);
        textView2.setTextSize(2, 10.0f);
        j.addView(textView2);
        ImageView aa = tn.aa(context, 2114387664);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams3.setMargins(ce.ox(context, 16.0f), 0, ce.ox(context, 16.0f), 0);
        aa.setLayoutParams(layoutParams3);
        aa.setScaleType(ImageView.ScaleType.CENTER);
        aa.setVisibility(8);
        aa.setImageDrawable(r.ox(context, "tt_enlarge_video"));
        j.addView(aa);
        return j;
    }

    private View iw(Context context) {
        RelativeLayout b2 = tn.b(context, 2114387608);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        b2.setLayoutParams(layoutParams);
        b2.setVisibility(8);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setColors(new int[]{Color.parseColor("#FF1A1A1A"), Color.parseColor("#00000000")});
        b2.setBackground(gradientDrawable);
        b2.setGravity(16);
        ImageView aa = tn.aa(context, 2114387902);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams2.leftMargin = ce.ox(context, 12.0f);
        aa.setLayoutParams(layoutParams2);
        aa.setScaleType(ImageView.ScaleType.CENTER);
        int parseColor = Color.parseColor("#959595");
        com.bytedance.sdk.openadsdk.res.dq dqVar = new com.bytedance.sdk.openadsdk.res.dq(48);
        dqVar.dq(parseColor);
        float ox = ce.ox(context, 2.0f);
        dqVar.dq(ox);
        int parseColor2 = Color.parseColor("#FFFFFF");
        com.bytedance.sdk.openadsdk.res.dq dqVar2 = new com.bytedance.sdk.openadsdk.res.dq(48);
        dqVar2.dq(parseColor2);
        dqVar2.dq(ox);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, dqVar);
        stateListDrawable.addState(new int[0], dqVar2);
        aa.setImageDrawable(stateListDrawable);
        b2.addView(aa);
        TextView textView = new TextView(context);
        textView.setId(2114387709);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
        textView.setGravity(16);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine(true);
        textView.setTextSize(2, 17.0f);
        textView.setTextColor(-1);
        int ox2 = ce.ox(context, 15.0f);
        textView.setPadding(ox2, 0, ox2, 0);
        b2.addView(textView);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387802);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        linearLayout.setGravity(16);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(ox2, 0, ox2, 0);
        TextView u = tn.u(context, 2114387851);
        u.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        u.setGravity(17);
        u.setMaxLines(1);
        u.setSingleLine(true);
        u.setTextSize(2, 12.0f);
        u.setTextColor(-1);
        linearLayout.addView(u);
        b2.addView(linearLayout);
        return b2;
    }

    private View kk(Context context) {
        TextView textView = new TextView(context);
        textView.setId(2114387764);
        textView.setBackgroundColor(0);
        textView.setMinHeight(ce.ox(context, 44.0f));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = ce.ox(context, 12.0f);
        textView.setLayoutParams(layoutParams);
        textView.setCompoundDrawablesWithIntrinsicBounds(o(context), (Drawable) null, (Drawable) null, (Drawable) null);
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(o(context), (Drawable) null, (Drawable) null, (Drawable) null);
        textView.setText("关闭");
        return textView;
    }

    private View mn(Context context) {
        TTProgressBar tTProgressBar = new TTProgressBar(context, null, r.mn(context, "tt_Widget_ProgressBar_Horizontal"));
        tTProgressBar.setId(2114387656);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ce.ox(context, 1.5f));
        layoutParams.addRule(12);
        tTProgressBar.setLayoutParams(layoutParams);
        tTProgressBar.setBackground(null);
        tTProgressBar.setMax(100);
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
        com.bytedance.sdk.openadsdk.res.iw.dq(tTProgressBar, new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        tTProgressBar.setVisibility(8);
        return tTProgressBar;
    }

    private StateListDrawable o(Context context) {
        int parseColor = Color.parseColor("#959595");
        com.bytedance.sdk.openadsdk.res.dq dqVar = new com.bytedance.sdk.openadsdk.res.dq(48);
        dqVar.dq(parseColor);
        float ox = ce.ox(context, 2.0f);
        dqVar.dq(ox);
        int parseColor2 = Color.parseColor("#FFFFFF");
        com.bytedance.sdk.openadsdk.res.dq dqVar2 = new com.bytedance.sdk.openadsdk.res.dq(48);
        dqVar2.dq(parseColor2);
        dqVar2.dq(ox);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, dqVar);
        stateListDrawable.addState(new int[0], dqVar2);
        return stateListDrawable;
    }

    private View ox(Context context) {
        ImageView aa = tn.aa(context, 2114387629);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        aa.setLayoutParams(layoutParams);
        aa.setScaleType(ImageView.ScaleType.CENTER);
        aa.setImageDrawable(r.ox(context, "tt_play_movebar_textpage"));
        aa.setVisibility(8);
        return aa;
    }

    private View p(Context context) {
        ImageView aa = tn.aa(context, 2114387681);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(tn.v("#26000000", gradientDrawable, context, 4.0f));
        aa.setBackground(gradientDrawable);
        aa.setScaleType(ImageView.ScaleType.CENTER);
        int parseColor = Color.parseColor("#959595");
        com.bytedance.sdk.openadsdk.res.dq dqVar = new com.bytedance.sdk.openadsdk.res.dq(48);
        dqVar.dq(parseColor);
        float ox = ce.ox(context, 2.0f);
        dqVar.dq(ox);
        int parseColor2 = Color.parseColor("#FFFFFF");
        com.bytedance.sdk.openadsdk.res.dq dqVar2 = new com.bytedance.sdk.openadsdk.res.dq(48);
        dqVar2.dq(parseColor2);
        dqVar2.dq(ox);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, dqVar);
        stateListDrawable.addState(new int[0], dqVar2);
        aa.setImageDrawable(stateListDrawable);
        int ox2 = ce.ox(context, 30.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ox2, ox2);
        layoutParams.addRule(21);
        layoutParams.addRule(11);
        int ox3 = ce.ox(context, 7.0f);
        layoutParams.setMargins(0, ox3, ox3, 0);
        aa.setLayoutParams(layoutParams);
        return aa;
    }

    private View s(Context context) {
        TextView textView = new TextView(context);
        textView.setId(2114387735);
        textView.setGravity(8388659);
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine(false);
        textView.setTextSize(2, 17.0f);
        textView.setTextColor(-1);
        textView.setVisibility(8);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setColors(new int[]{Color.parseColor("#FF1A1A1A"), Color.parseColor("#00000000")});
        textView.setBackground(gradientDrawable);
        int ox = ce.ox(context, 15.0f);
        textView.setPadding(ox, ce.ox(context, 14.0f), ox, 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(20);
        layoutParams.addRule(10);
        textView.setLayoutParams(layoutParams);
        return textView;
    }
}
