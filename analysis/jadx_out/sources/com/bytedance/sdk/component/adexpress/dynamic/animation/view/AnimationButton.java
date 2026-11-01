package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;

/* loaded from: classes.dex */
public class AnimationButton extends TextView implements d {

    /* renamed from: d, reason: collision with root package name */
    private float f1687d;
    dq dq;
    private float ox;
    private float p;
    private float s;

    public AnimationButton(Context context) {
        super(context);
        this.dq = new dq();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getMarqueeValue() {
        return this.p;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getRippleValue() {
        return this.f1687d;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getShineValue() {
        return this.ox;
    }

    public float getStretchValue() {
        return this.s;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.dq.dq(canvas, this, this);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.dq.dq(this, i, i2);
    }

    public void setMarqueeValue(float f2) {
        this.p = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.f1687d = f2;
        postInvalidate();
    }

    public void setShineValue(float f2) {
        this.ox = f2;
        postInvalidate();
    }

    public void setStretchValue(float f2) {
        this.s = f2;
        this.dq.dq(this, f2);
    }
}
