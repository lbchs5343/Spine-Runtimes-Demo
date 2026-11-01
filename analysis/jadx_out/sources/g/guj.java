package g;

import android.app.ApplicationExitInfo;
import android.graphics.Insets;
import android.view.WindowInsetsAnimation;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract /* synthetic */ class guj {
    public static /* synthetic */ void ad() {
    }

    public static /* bridge */ /* synthetic */ WindowInsetsAnimation f(Object obj) {
        return (WindowInsetsAnimation) obj;
    }

    public static /* synthetic */ WindowInsetsAnimation.Bounds i(Insets insets, Insets insets2) {
        return new WindowInsetsAnimation.Bounds(insets, insets2);
    }

    public static /* synthetic */ WindowInsetsAnimation t(int i, Interpolator interpolator, long j) {
        return new WindowInsetsAnimation(i, interpolator, j);
    }

    public static /* bridge */ /* synthetic */ ApplicationExitInfo u(Object obj) {
        return (ApplicationExitInfo) obj;
    }
}
