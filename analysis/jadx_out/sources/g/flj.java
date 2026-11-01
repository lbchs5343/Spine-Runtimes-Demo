package g;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class flj {

    /* renamed from: d, reason: collision with root package name */
    public Float f16975d;

    /* renamed from: e, reason: collision with root package name */
    public int f16976e;

    /* renamed from: f, reason: collision with root package name */
    public PointF f16977f;

    /* renamed from: g, reason: collision with root package name */
    public float f16978g;
    public final Interpolator h;
    public int i;
    public final Interpolator j;
    public final cgf k;
    public final Interpolator l;
    public PointF m;
    public float n;
    public float o;
    public final Object p;
    public float q;
    public Object r;
    public final float s;

    public flj(cgf cgfVar, Object obj, Object obj2, Interpolator interpolator, float f2, Float f3) {
        this.o = -3987645.8f;
        this.q = -3987645.8f;
        this.f16976e = 784923401;
        this.i = 784923401;
        this.n = Float.MIN_VALUE;
        this.f16978g = Float.MIN_VALUE;
        this.f16977f = null;
        this.m = null;
        this.k = cgfVar;
        this.p = obj;
        this.r = obj2;
        this.h = interpolator;
        this.j = null;
        this.l = null;
        this.s = f2;
        this.f16975d = f3;
    }

    public flj(cgf cgfVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, float f2) {
        this.o = -3987645.8f;
        this.q = -3987645.8f;
        this.f16976e = 784923401;
        this.i = 784923401;
        this.n = Float.MIN_VALUE;
        this.f16978g = Float.MIN_VALUE;
        this.f16977f = null;
        this.m = null;
        this.k = cgfVar;
        this.p = obj;
        this.r = obj2;
        this.h = null;
        this.j = interpolator;
        this.l = interpolator2;
        this.s = f2;
        this.f16975d = null;
    }

    public flj(cgf cgfVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f2, Float f3) {
        this.o = -3987645.8f;
        this.q = -3987645.8f;
        this.f16976e = 784923401;
        this.i = 784923401;
        this.n = Float.MIN_VALUE;
        this.f16978g = Float.MIN_VALUE;
        this.f16977f = null;
        this.m = null;
        this.k = cgfVar;
        this.p = obj;
        this.r = obj2;
        this.h = interpolator;
        this.j = interpolator2;
        this.l = interpolator3;
        this.s = f2;
        this.f16975d = f3;
    }

    public flj(fns fnsVar, fns fnsVar2) {
        this.o = -3987645.8f;
        this.q = -3987645.8f;
        this.f16976e = 784923401;
        this.i = 784923401;
        this.n = Float.MIN_VALUE;
        this.f16978g = Float.MIN_VALUE;
        this.f16977f = null;
        this.m = null;
        this.k = null;
        this.p = fnsVar;
        this.r = fnsVar2;
        this.h = null;
        this.j = null;
        this.l = null;
        this.s = Float.MIN_VALUE;
        this.f16975d = Float.valueOf(Float.MAX_VALUE);
    }

    public flj(Object obj) {
        this.o = -3987645.8f;
        this.q = -3987645.8f;
        this.f16976e = 784923401;
        this.i = 784923401;
        this.n = Float.MIN_VALUE;
        this.f16978g = Float.MIN_VALUE;
        this.f16977f = null;
        this.m = null;
        this.k = null;
        this.p = obj;
        this.r = obj;
        this.h = null;
        this.j = null;
        this.l = null;
        this.s = Float.MIN_VALUE;
        this.f16975d = Float.valueOf(Float.MAX_VALUE);
    }

    public final float t() {
        cgf cgfVar = this.k;
        if (cgfVar == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        if (this.n == Float.MIN_VALUE) {
            float f2 = cgfVar.f12824b;
            this.n = (this.s - f2) / (cgfVar.f12828f - f2);
        }
        return this.n;
    }

    public final String toString() {
        return "Keyframe{startValue=" + this.p + ", endValue=" + this.r + ", startFrame=" + this.s + ", endFrame=" + this.f16975d + ", interpolator=" + this.h + '}';
    }

    public final float u() {
        cgf cgfVar = this.k;
        if (cgfVar == null) {
            return 1.0f;
        }
        if (this.f16978g == Float.MIN_VALUE) {
            if (this.f16975d == null) {
                this.f16978g = 1.0f;
            } else {
                this.f16978g = ((this.f16975d.floatValue() - this.s) / (cgfVar.f12828f - cgfVar.f12824b)) + t();
            }
        }
        return this.f16978g;
    }

    public final boolean v() {
        return this.h == null && this.j == null && this.l == null;
    }
}
