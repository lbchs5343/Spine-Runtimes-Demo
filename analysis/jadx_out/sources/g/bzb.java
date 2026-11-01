package g;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract class bzb {

    /* renamed from: a, reason: collision with root package name */
    public final long f12487a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12488b;

    /* renamed from: c, reason: collision with root package name */
    public float f12489c;

    /* renamed from: d, reason: collision with root package name */
    public final Interpolator f12490d;

    public bzb(int i, Interpolator interpolator, long j) {
        this.f12488b = i;
        this.f12490d = interpolator;
        this.f12487a = j;
    }

    public void e(float f2) {
        this.f12489c = f2;
    }

    public long f() {
        return this.f12487a;
    }

    public float g() {
        Interpolator interpolator = this.f12490d;
        return interpolator != null ? interpolator.getInterpolation(this.f12489c) : this.f12489c;
    }

    public int h() {
        return this.f12488b;
    }
}
