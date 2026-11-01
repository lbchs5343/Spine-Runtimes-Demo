package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class bcw extends AnimatorListenerAdapter implements to {
    public boolean i;
    public final View j;
    public final int l;
    public final ViewGroup m;
    public boolean k = false;
    public final boolean h = true;

    public bcw(int i, View view) {
        this.j = view;
        this.l = i;
        this.m = (ViewGroup) view.getParent();
        n(true);
    }

    @Override // g.to
    public final void a(fqk fqkVar) {
    }

    @Override // g.to
    public final void b() {
        n(false);
        if (this.k) {
            return;
        }
        ebi.d(this.j, this.l);
    }

    @Override // g.to
    public final void c() {
        n(true);
        if (this.k) {
            return;
        }
        ebi.d(this.j, 0);
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

    public final void n(boolean z) {
        ViewGroup viewGroup;
        if (!this.h || this.i == z || (viewGroup = this.m) == null) {
            return;
        }
        this.i = z;
        egh.m(viewGroup, z);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.k = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.k) {
            ebi.d(this.j, this.l);
            ViewGroup viewGroup = this.m;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        n(false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        if (z) {
            return;
        }
        if (!this.k) {
            ebi.d(this.j, this.l);
            ViewGroup viewGroup = this.m;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        n(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z) {
        if (z) {
            ebi.d(this.j, 0);
            ViewGroup viewGroup = this.m;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
    }
}
