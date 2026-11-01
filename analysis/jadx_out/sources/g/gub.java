package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* loaded from: classes.dex */
public final class gub extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f18750a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ guh f18751b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18752c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.p f18753d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f18754e;

    public gub(guh guhVar, androidx.recyclerview.widget.p pVar, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f18751b = guhVar;
        this.f18753d = pVar;
        this.f18754e = view;
        this.f18750a = viewPropertyAnimator;
    }

    public gub(guh guhVar, androidx.recyclerview.widget.p pVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f18751b = guhVar;
        this.f18753d = pVar;
        this.f18750a = viewPropertyAnimator;
        this.f18754e = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f18752c) {
            case 1:
                this.f18754e.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f18752c) {
            case 0:
                this.f18750a.setListener(null);
                this.f18754e.setAlpha(1.0f);
                guh guhVar = this.f18751b;
                androidx.recyclerview.widget.p pVar = this.f18753d;
                guhVar.l(pVar);
                guhVar.w.remove(pVar);
                guhVar.ac();
                break;
            default:
                this.f18750a.setListener(null);
                guh guhVar2 = this.f18751b;
                androidx.recyclerview.widget.p pVar2 = this.f18753d;
                guhVar2.l(pVar2);
                guhVar2.p.remove(pVar2);
                guhVar2.ac();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f18752c) {
            case 0:
                this.f18751b.getClass();
                break;
            default:
                this.f18751b.getClass();
                break;
        }
    }
}
