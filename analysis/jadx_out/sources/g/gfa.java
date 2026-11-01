package g;

import android.view.WindowInsetsAnimation;

/* loaded from: classes.dex */
public final class gfa extends bzb {
    public final WindowInsetsAnimation i;

    public gfa(WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.i = windowInsetsAnimation;
    }

    @Override // g.bzb
    public final void e(float f2) {
        this.i.setFraction(f2);
    }

    @Override // g.bzb
    public final long f() {
        long durationMillis;
        durationMillis = this.i.getDurationMillis();
        return durationMillis;
    }

    @Override // g.bzb
    public final float g() {
        float interpolatedFraction;
        interpolatedFraction = this.i.getInterpolatedFraction();
        return interpolatedFraction;
    }

    @Override // g.bzb
    public final int h() {
        int typeMask;
        typeMask = this.i.getTypeMask();
        return typeMask;
    }
}
