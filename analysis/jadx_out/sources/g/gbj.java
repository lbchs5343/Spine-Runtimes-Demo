package g;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class gbj extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public static final double f17862a = Math.cos(Math.toRadians(45.0d));

    public static float b(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        return (float) (((1.0d - f17862a) * f3) + f2);
    }

    public static float c(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        return (float) (((1.0d - f17862a) * f3) + (f2 * 1.5f));
    }
}
