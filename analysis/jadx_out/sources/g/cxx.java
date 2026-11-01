package g;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class cxx implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gkb f13721a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13722b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13723c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f13724d;

    public cxx(gkb gkbVar, int i, int i2, int i3) {
        this.f13721a = gkbVar;
        this.f13722b = i;
        this.f13723c = i2;
        this.f13724d = i3;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        gkb gkbVar = this.f13721a;
        int frame = gkbVar.getFrame();
        int i = this.f13722b;
        if (frame < i - 1 || gkbVar.getFrame() >= i + 2) {
            return;
        }
        gkbVar.getFrame();
        gkbVar.d(this);
        if (this.f13723c >= 0 && this.f13724d >= 0) {
            gkb.jy(gkbVar);
        }
        gkbVar.mn();
    }
}
