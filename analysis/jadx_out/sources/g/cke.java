package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class cke extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13021a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f13022b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.p f13023c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ guh f13024d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f13025e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ View f13026f;

    public cke(guh guhVar, androidx.recyclerview.widget.p pVar, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f13024d = guhVar;
        this.f13023c = pVar;
        this.f13025e = i;
        this.f13026f = view;
        this.f13021a = i2;
        this.f13022b = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i = this.f13025e;
        View view = this.f13026f;
        if (i != 0) {
            view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        if (this.f13021a != 0) {
            view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f13022b.setListener(null);
        guh guhVar = this.f13024d;
        androidx.recyclerview.widget.p pVar = this.f13023c;
        guhVar.l(pVar);
        guhVar.s.remove(pVar);
        guhVar.ac();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f13024d.getClass();
    }
}
