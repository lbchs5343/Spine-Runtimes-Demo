package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes3.dex */
public final class gmj extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18402a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dpk f18403b;

    public /* synthetic */ gmj(dpk dpkVar, int i) {
        this.f18402a = i;
        this.f18403b = dpkVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f18402a) {
            case 1:
                super.onAnimationEnd(animator);
                dpk dpkVar = this.f18403b;
                dpkVar.y();
                gu guVar = dpkVar.q;
                if (guVar != null) {
                    guVar.b((fkr) dpkVar.aa);
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
        switch (this.f18402a) {
            case 0:
                super.onAnimationRepeat(animator);
                dpk dpkVar = this.f18403b;
                dpkVar.s = (dpkVar.s + dpk.j.length) % dpkVar.o.r.length;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }
}
