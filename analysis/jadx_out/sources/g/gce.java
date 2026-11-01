package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class gce extends AnimatorListenerAdapter implements to {
    public boolean h = true;
    public final /* synthetic */ ud i;
    public final ViewGroup j;
    public final View k;
    public final View l;

    public gce(ud udVar, ViewGroup viewGroup, View view, View view2) {
        this.i = udVar;
        this.j = viewGroup;
        this.k = view;
        this.l = view2;
    }

    @Override // g.to
    public final void a(fqk fqkVar) {
        if (this.h) {
            m();
        }
    }

    @Override // g.to
    public final void b() {
    }

    @Override // g.to
    public final void c() {
    }

    @Override // g.to
    public final void d(fqk fqkVar) {
        fqkVar.k(this);
    }

    @Override // g.to
    public final void e(fqk fqkVar) {
    }

    @Override // g.to
    public final void f(fqk fqkVar) {
        throw null;
    }

    @Override // g.to
    public final void g(fqk fqkVar) {
        fqkVar.k(this);
    }

    public final void m() {
        this.l.setTag(R.id.save_overlay_view, null);
        this.j.getOverlay().remove(this.k);
        this.h = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        m();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        if (z) {
            return;
        }
        m();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        this.j.getOverlay().remove(this.k);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        View view = this.k;
        if (view.getParent() == null) {
            this.j.getOverlay().add(view);
        } else {
            this.i.cancel();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z) {
        if (z) {
            View view = this.l;
            View view2 = this.k;
            view.setTag(R.id.save_overlay_view, view2);
            this.j.getOverlay().add(view2);
            this.h = true;
        }
    }
}
