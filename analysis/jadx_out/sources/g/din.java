package g;

import android.graphics.PointF;

/* loaded from: classes.dex */
public abstract class din {

    /* renamed from: a, reason: collision with root package name */
    public static final PointF f14231a = new PointF();

    public static PointF b(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float c(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f4, f2));
    }

    public static float d(float f2, float f3, float f4) {
        return awf.g(f3, f2, f4, f2);
    }

    public static int e(float f2, float f3) {
        int i = (int) f2;
        int i2 = (int) f3;
        int i3 = i / i2;
        int i4 = i % i2;
        if (!((i ^ i2) >= 0) && i4 != 0) {
            i3--;
        }
        return i - (i2 * i3);
    }
}
