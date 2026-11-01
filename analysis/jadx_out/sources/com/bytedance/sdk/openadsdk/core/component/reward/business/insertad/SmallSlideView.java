package com.bytedance.sdk.openadsdk.core.component.reward.business.insertad;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class SmallSlideView extends RelativeLayout {

    /* renamed from: d, reason: collision with root package name */
    private final d f2543d;
    private final View dq;

    public static class d extends FrameLayout {
        public d(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            imageView.setBackground(r.ox(context, "tt_splash_slide_up_bg"));
            addView(imageView);
        }
    }

    public static class dq extends FrameLayout {
        public dq(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            imageView.setImageDrawable(r.ox(context, "tt_splash_slide_up_finger"));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.leftMargin = ce.ox(context, 38.0f);
            layoutParams.bottomMargin = ce.ox(context, 10.0f);
            ImageView imageView2 = new ImageView(context);
            imageView2.setImageDrawable(r.ox(context, "tt_splash_slide_up_circle"));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            int ox = ce.ox(context, 30.0f);
            layoutParams2.setMargins(ox, ox, ox, ox);
            addView(imageView2, layoutParams2);
            addView(imageView, layoutParams);
        }
    }

    public SmallSlideView(Context context) {
        super(context);
        View dqVar = new dq(context);
        this.dq = dqVar;
        d dVar = new d(context);
        this.f2543d = dVar;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ce.ox(context, 10.0f), 0);
        layoutParams.setMargins(0, ce.ox(context, 8.0f), 0, ce.ox(context, 8.0f));
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        addView(dVar, layoutParams);
        addView(dqVar);
        setLayoutParams(new LinearLayout.LayoutParams(ce.ox(context, 80.0f), ce.ox(context, 80.0f)));
    }

    public void dq() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.dq, "translationY", ce.ox(getContext(), 30.0f), ce.ox(getContext(), -20.0f));
        ofFloat.setDuration(800L);
        ofFloat.setRepeatCount(1);
        ofFloat.setRepeatMode(1);
        ofFloat.start();
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.f2543d, "newHeight", ce.ox(getContext(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT), ce.ox(getContext(), 48.0f));
        ofInt.setDuration(800L);
        ofInt.setRepeatCount(1);
        ofInt.setRepeatMode(1);
        ofInt.start();
    }
}
