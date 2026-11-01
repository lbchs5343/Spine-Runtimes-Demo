package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gry extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f18661a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ guh f18662b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18663c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ gbk f18664d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f18665e;

    public /* synthetic */ gry(guh guhVar, gbk gbkVar, ViewPropertyAnimator viewPropertyAnimator, View view, int i) {
        this.f18663c = i;
        this.f18662b = guhVar;
        this.f18664d = gbkVar;
        this.f18665e = viewPropertyAnimator;
        this.f18661a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f18663c) {
            case 0:
                this.f18665e.setListener(null);
                View view = this.f18661a;
                view.setAlpha(1.0f);
                view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                gbk gbkVar = this.f18664d;
                androidx.recyclerview.widget.p pVar = gbkVar.f17865c;
                guh guhVar = this.f18662b;
                guhVar.l(pVar);
                guhVar.y.remove(gbkVar.f17865c);
                guhVar.ac();
                break;
            default:
                this.f18665e.setListener(null);
                View view2 = this.f18661a;
                view2.setAlpha(1.0f);
                view2.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                view2.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                gbk gbkVar2 = this.f18664d;
                androidx.recyclerview.widget.p pVar2 = gbkVar2.f17867e;
                guh guhVar2 = this.f18662b;
                guhVar2.l(pVar2);
                guhVar2.y.remove(gbkVar2.f17867e);
                guhVar2.ac();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f18663c) {
            case 0:
                androidx.recyclerview.widget.p pVar = this.f18664d.f17865c;
                this.f18662b.getClass();
                break;
            default:
                androidx.recyclerview.widget.p pVar2 = this.f18664d.f17867e;
                this.f18662b.getClass();
                break;
        }
    }
}
