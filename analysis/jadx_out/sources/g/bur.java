package g;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class bur implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12240a;

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f2) {
        switch (this.f12240a) {
        }
        float f3 = f2 - 1.0f;
        return (f3 * f3 * f3 * f3 * f3) + 1.0f;
    }
}
