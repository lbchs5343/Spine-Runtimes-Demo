package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes3.dex */
public final class grw extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18658a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ azm f18659b;

    public /* synthetic */ grw(azm azmVar, int i) {
        this.f18658a = i;
        this.f18659b = azmVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f18658a) {
            case 1:
                this.f18659b.x.w(false);
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f18658a) {
            case 0:
                this.f18659b.x.w(true);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
