package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.mn;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class AnimationImageView extends ImageView implements d {

    /* renamed from: d, reason: collision with root package name */
    private float f1688d;
    dq dq;
    private mn iw;
    private float ox;
    private float p;
    private float s;

    public AnimationImageView(Context context) {
        super(context);
        this.dq = new dq();
    }

    public mn getBrickNativeValue() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getMarqueeValue() {
        return this.p;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getRippleValue() {
        return this.f1688d;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.d
    public float getShineValue() {
        return this.ox;
    }

    public float getStretchValue() {
        return this.s;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        mn mnVar;
        super.onDraw(canvas);
        this.dq.dq(canvas, this, this);
        if (getRippleValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || (mnVar = this.iw) == null || mnVar.d() <= 0) {
            return;
        }
        ((ViewGroup) getParent()).setClipChildren(false);
        ((ViewGroup) getParent().getParent()).setClipChildren(false);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.dq.dq(this, i, i2);
    }

    public void setBrickNativeValue(mn mnVar) {
        this.iw = mnVar;
    }

    public void setMarqueeValue(float f2) {
        this.p = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.f1688d = f2;
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
