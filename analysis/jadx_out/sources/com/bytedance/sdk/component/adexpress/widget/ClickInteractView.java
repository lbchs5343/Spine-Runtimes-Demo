package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class ClickInteractView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private AnimatorSet f1794d;
    private ImageView dq;

    public ClickInteractView(Context context) {
        super(context);
        ox();
        p();
    }

    private void ox() {
        ImageView imageView = new ImageView(getContext());
        this.dq = imageView;
        imageView.setImageResource(r.s(getContext(), "tt_white_hand"));
        int dq = (int) mn.dq(getContext(), 20.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dq, dq);
        layoutParams.gravity = 17;
        addView(this.dq, layoutParams);
    }

    private void p() {
        this.f1794d = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.dq, "scaleX", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        ofFloat.setDuration(2000L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.dq, "scaleY", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        ofFloat2.setDuration(2000L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.f1794d.playTogether(ofFloat, ofFloat2);
    }

    public void d() {
        AnimatorSet animatorSet = this.f1794d;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void dq() {
        AnimatorSet animatorSet = this.f1794d;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }
}
