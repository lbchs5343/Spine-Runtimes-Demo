package g;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class gwr implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18894a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gkb f18895b;

    public gwr(gkb gkbVar, int i) {
        this.f18895b = gkbVar;
        this.f18894a = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        gkb gkbVar = this.f18895b;
        int frame = gkbVar.getFrame();
        int i = this.f18894a;
        if (frame < i - 1 || gkbVar.getFrame() >= i + 2) {
            return;
        }
        gkbVar.getFrame();
        gkbVar.d(this);
        gkbVar.mn();
    }
}
