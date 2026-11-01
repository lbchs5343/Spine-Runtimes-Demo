package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.p.ia;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.kx;

/* loaded from: classes.dex */
public class CircleLongPressView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f1792d;
    private Context dq;
    private AnimatorSet iw;
    private ImageView ox;
    private TextView p;
    private RingProgressView s;

    public CircleLongPressView(Context context) {
        super(context);
        this.iw = new AnimatorSet();
        this.dq = context;
        s();
        iw();
    }

    private void iw() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.ox, "scaleX", 1.0f, 0.9f);
        ofFloat.setRepeatCount(-1);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.setRepeatMode(2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ox, "scaleY", 1.0f, 0.9f);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.iw.setDuration(800L);
        this.iw.playTogether(ofFloat, ofFloat2);
    }

    private void s() {
        FrameLayout frameLayout = new FrameLayout(this.dq);
        this.s = new RingProgressView(this.dq);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 95.0f), (int) mn.dq(this.dq, 95.0f));
        layoutParams.gravity = 17;
        frameLayout.addView(this.s, layoutParams);
        this.f1792d = new ImageView(this.dq);
        int dq = kx.dq(this.dq, 60.0f);
        this.f1792d.setImageDrawable(ia.dq(1, null, null, new int[]{dq, dq}, Integer.valueOf(kx.dq(this.dq, 1.0f)), Integer.valueOf(Color.parseColor("#80FFFFFF"))));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 75.0f), (int) mn.dq(this.dq, 75.0f));
        layoutParams2.gravity = 17;
        frameLayout.addView(this.f1792d, layoutParams2);
        this.ox = new ImageView(this.dq);
        int dq2 = kx.dq(this.dq, 50.0f);
        this.ox.setImageDrawable(ia.dq(1, Integer.valueOf(Color.parseColor("#80FFFFFF")), null, new int[]{dq2, dq2}, null, null));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) mn.dq(this.dq, 63.0f), (int) mn.dq(this.dq, 63.0f));
        layoutParams3.gravity = 17;
        frameLayout.addView(this.ox, layoutParams3);
        addView(frameLayout);
        TextView textView = new TextView(this.dq);
        this.p = textView;
        textView.setTextColor(-1);
        this.p.setMaxLines(1);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 81;
        addView(this.p, layoutParams4);
    }

    public void d() {
        this.iw.cancel();
    }

    public void dq() {
        this.iw.start();
    }

    public void ox() {
        this.s.dq();
    }

    public void p() {
        this.s.d();
        this.s.ox();
    }

    public void setGuideText(String str) {
        this.p.setText(str);
    }
}
