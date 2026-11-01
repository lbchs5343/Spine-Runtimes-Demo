package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class dnq extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14486a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ eiu f14487b;

    public dnq(eiu eiuVar) {
        this.f14487b = eiuVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f14486a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f14486a) {
            this.f14486a = false;
            return;
        }
        eiu eiuVar = this.f14487b;
        if (((Float) eiuVar.f15612d.getAnimatedValue()).floatValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            eiuVar.aa = 0;
            eiuVar.al(0);
        } else {
            eiuVar.aa = 2;
            eiuVar.t.invalidate();
        }
    }
}
