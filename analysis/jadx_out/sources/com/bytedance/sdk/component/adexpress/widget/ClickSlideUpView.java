package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class ClickSlideUpView extends SlideUpView {

    /* renamed from: d, reason: collision with root package name */
    private View f1795d;
    private TextView dq;
    private AnimatorSet ox;

    public ClickSlideUpView(Context context) {
        super(context);
        this.ox = new AnimatorSet();
        d(context);
    }

    private void d(Context context) {
        View dq = com.bytedance.sdk.component.adexpress.ox.dq.dq(context);
        this.f1795d = dq;
        addView(dq);
        setClipChildren(false);
        this.dq = (TextView) findViewById(2097610748);
    }

    private void p() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f1795d, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, mn.dq(getContext(), -3.0f));
        ofFloat.setInterpolator(new CycleInterpolator(1.0f));
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f1795d, "alpha", 1.0f, 0.8f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setInterpolator(new CycleInterpolator(1.0f));
        ofFloat2.setRepeatCount(-1);
        this.ox.playTogether(ofFloat, ofFloat2);
        this.ox.setDuration(1000L);
        this.ox.start();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void d() {
        this.ox.cancel();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void dq() {
        p();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void dq(Context context) {
    }

    public void setButtonText(String str) {
        if (this.dq == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.dq.setText(str);
    }
}
