package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes3.dex */
public final class adn extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10049a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fxk f10050b;

    public /* synthetic */ adn(fxk fxkVar, int i) {
        this.f10049a = i;
        this.f10050b = fxkVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f10049a) {
            case 1:
                super.onAnimationEnd(animator);
                fxk fxkVar = this.f10050b;
                fxkVar.y();
                gu guVar = fxkVar.o;
                if (guVar != null) {
                    guVar.b((fkr) fxkVar.aa);
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
        switch (this.f10049a) {
            case 0:
                super.onAnimationRepeat(animator);
                fxk fxkVar = this.f10050b;
                fxkVar.q = (fxkVar.q + 1) % fxkVar.m.r.length;
                fxkVar.j = true;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }
}
