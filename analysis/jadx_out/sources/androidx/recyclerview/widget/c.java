package androidx.recyclerview.widget;

import android.util.Log;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public int f260a;

    /* renamed from: b, reason: collision with root package name */
    public Interpolator f261b;

    /* renamed from: c, reason: collision with root package name */
    public int f262c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f263d;

    /* renamed from: e, reason: collision with root package name */
    public int f264e;

    /* renamed from: f, reason: collision with root package name */
    public int f265f;

    /* renamed from: g, reason: collision with root package name */
    public int f266g;

    public final void h(RecyclerView recyclerView) {
        int i = this.f260a;
        if (i >= 0) {
            this.f260a = -1;
            recyclerView.jumpToPositionForSmoothScroller(i);
            this.f263d = false;
            return;
        }
        if (!this.f263d) {
            this.f266g = 0;
            return;
        }
        Interpolator interpolator = this.f261b;
        if (interpolator != null && this.f265f < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i2 = this.f265f;
        if (i2 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.mViewFlinger.j(this.f262c, this.f264e, i2, interpolator);
        int i3 = this.f266g + 1;
        this.f266g = i3;
        if (i3 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f263d = false;
    }
}
