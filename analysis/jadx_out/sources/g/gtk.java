package g;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes3.dex */
public abstract class gtk {

    /* renamed from: b, reason: collision with root package name */
    public static final LinearInterpolator f18727b = new LinearInterpolator();

    /* renamed from: c, reason: collision with root package name */
    public static final fca f18728c = new fca(1);

    /* renamed from: d, reason: collision with root package name */
    public static final fca f18729d = new fca(0);

    /* renamed from: a, reason: collision with root package name */
    public static final fca f18726a = new fca(fca.f16550d);

    static {
        new DecelerateInterpolator();
    }

    public static float e(float f2, float f3, float f4) {
        return awf.g(f3, f2, f4, f2);
    }

    public static float f(float f2, float f3, float f4, float f5, float f6) {
        return f6 <= f4 ? f2 : f6 >= f5 ? f3 : e(f2, f3, (f6 - f4) / (f5 - f4));
    }

    public static int g(int i, float f2, int i2) {
        return Math.round(f2 * (i2 - i)) + i;
    }
}
