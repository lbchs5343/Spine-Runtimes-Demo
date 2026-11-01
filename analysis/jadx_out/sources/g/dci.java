package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes3.dex */
public final class dci extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13956a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bgo f13957b;

    public /* synthetic */ dci(bgo bgoVar, int i) {
        this.f13956a = i;
        this.f13957b = bgoVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f13956a) {
            case 1:
                super.onAnimationEnd(animator);
                bgo bgoVar = this.f13957b;
                bgoVar.y();
                gu guVar = bgoVar.q;
                if (guVar != null) {
                    guVar.b((fkr) bgoVar.aa);
                    break;
                }
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        switch (this.f13956a) {
            case 0:
                super.onAnimationRepeat(animator);
                bgo bgoVar = this.f13957b;
                bgoVar.s = (bgoVar.s + 4) % bgoVar.o.r.length;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }
}
