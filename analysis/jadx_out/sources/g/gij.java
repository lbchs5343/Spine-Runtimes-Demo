package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gij extends AnimatorListenerAdapter implements to {
    public final View h;
    public boolean i = false;

    public gij(View view) {
        this.h = view;
    }

    @Override // g.to
    public final void a(fqk fqkVar) {
    }

    @Override // g.to
    public final void b() {
        View view = this.h;
        view.setTag(R.id.transition_pause_alpha, Float.valueOf(view.getVisibility() == 0 ? ebi.f15235a.aa(view) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
    }

    @Override // g.to
    public final void c() {
        this.h.setTag(R.id.transition_pause_alpha, null);
    }

    @Override // g.to
    public final void d(fqk fqkVar) {
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
        throw null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ebi.f15235a.z(this.h, 1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        boolean z2 = this.i;
        View view = this.h;
        if (z2) {
            view.setLayerType(0, null);
        }
        if (z) {
            return;
        }
        bli bliVar = ebi.f15235a;
        bliVar.z(view, 1.0f);
        bliVar.getClass();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        View view = this.h;
        if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
            this.i = true;
            view.setLayerType(2, null);
        }
    }
}
