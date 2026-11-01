package com.bytedance.sdk.component.adexpress.widget;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class dq implements Interpolator {

    /* renamed from: d, reason: collision with root package name */
    protected PointF f1830d;
    protected PointF dq;
    protected PointF ox;
    protected PointF p;
    protected PointF s;

    public dq(float f2, float f3, float f4, float f5) {
        this(new PointF(f2, f3), new PointF(f4, f5));
    }

    public dq(PointF pointF, PointF pointF2) throws IllegalArgumentException {
        this.ox = new PointF();
        this.p = new PointF();
        this.s = new PointF();
        float f2 = pointF.x;
        if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f2 > 1.0f) {
            throw new IllegalArgumentException("startX value must be in the range [0, 1]");
        }
        float f3 = pointF2.x;
        if (f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f3 > 1.0f) {
            throw new IllegalArgumentException("endX value must be in the range [0, 1]");
        }
        this.dq = pointF;
        this.f1830d = pointF2;
    }

    private float ox(float f2) {
        return (((this.ox.x * 3.0f * f2) + (this.p.x * 2.0f)) * f2) + this.s.x;
    }

    private float p(float f2) {
        PointF pointF = this.s;
        PointF pointF2 = this.dq;
        float f3 = pointF2.x * 3.0f;
        pointF.x = f3;
        PointF pointF3 = this.p;
        float f4 = ((this.f1830d.x - pointF2.x) * 3.0f) - f3;
        pointF3.x = f4;
        PointF pointF4 = this.ox;
        float f5 = (1.0f - pointF.x) - f4;
        pointF4.x = f5;
        return ((((f5 * f2) + pointF3.x) * f2) + pointF.x) * f2;
    }

    public float d(float f2) {
        float f3 = f2;
        for (int i = 1; i < 14; i++) {
            float p = p(f3) - f2;
            if (Math.abs(p) < 0.001d) {
                break;
            }
            f3 -= p / ox(f3);
        }
        return f3;
    }

    public float dq(float f2) {
        PointF pointF = this.s;
        PointF pointF2 = this.dq;
        float f3 = pointF2.y * 3.0f;
        pointF.y = f3;
        PointF pointF3 = this.p;
        float f4 = ((this.f1830d.y - pointF2.y) * 3.0f) - f3;
        pointF3.y = f4;
        PointF pointF4 = this.ox;
        float f5 = (1.0f - pointF.y) - f4;
        pointF4.y = f5;
        return ((((f5 * f2) + pointF3.y) * f2) + pointF.y) * f2;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return dq(d(f2));
    }
}
