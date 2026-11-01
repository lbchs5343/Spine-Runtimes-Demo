package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
public final class gno extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18464a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18465b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f18466c;

    public gno(fqk fqkVar, tl tlVar) {
        this.f18464a = 0;
        this.f18466c = fqkVar;
        this.f18465b = tlVar;
    }

    public /* synthetic */ gno(Object obj, View view, int i) {
        this.f18464a = i;
        this.f18465b = obj;
        this.f18466c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f18464a) {
            case 1:
                ((gig) this.f18465b).bh();
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f18464a) {
            case 0:
                ((tl) this.f18465b).remove(animator);
                ((fqk) this.f18466c).ax.remove(animator);
                break;
            case 1:
                ((gig) this.f18465b).bp();
                break;
            default:
                ((cer) this.f18465b).f12757a.e(1.0f);
                cuo.n((View) this.f18466c);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f18464a) {
            case 0:
                ((fqk) this.f18466c).ax.add(animator);
                break;
            case 1:
                ((gig) this.f18465b).bk();
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
