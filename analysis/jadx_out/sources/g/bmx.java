package g;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* loaded from: classes.dex */
public final class bmx extends AnimationSet implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11843a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11844b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11845c;

    /* renamed from: d, reason: collision with root package name */
    public final ViewGroup f11846d;

    /* renamed from: e, reason: collision with root package name */
    public final View f11847e;

    public bmx(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f11845c = true;
        this.f11846d = viewGroup;
        this.f11847e = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j, Transformation transformation) {
        this.f11845c = true;
        if (this.f11843a) {
            return !this.f11844b;
        }
        if (!super.getTransformation(j, transformation)) {
            this.f11843a = true;
            azx.d(this.f11846d, this);
        }
        return true;
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j, Transformation transformation, float f2) {
        this.f11845c = true;
        if (this.f11843a) {
            return !this.f11844b;
        }
        if (!super.getTransformation(j, transformation, f2)) {
            this.f11843a = true;
            azx.d(this.f11846d, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.f11843a;
        ViewGroup viewGroup = this.f11846d;
        if (z || !this.f11845c) {
            viewGroup.endViewTransition(this.f11847e);
            this.f11844b = true;
        } else {
            this.f11845c = false;
            viewGroup.post(this);
        }
    }
}
