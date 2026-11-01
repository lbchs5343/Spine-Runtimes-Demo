package g;

import android.animation.ValueAnimator;

/* loaded from: classes3.dex */
public final class eoq implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15911a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cle f15912b;

    public /* synthetic */ eoq(cle cleVar, int i) {
        this.f15911a = i;
        this.f15912b = cleVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f15911a) {
            case 0:
                this.f15912b.aa.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 1:
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                cle cleVar = this.f15912b;
                cleVar.aa.setScaleX(floatValue);
                cleVar.aa.setScaleY(floatValue);
                break;
            case 2:
                this.f15912b.aa.setTranslationY(((Integer) valueAnimator.getAnimatedValue()).intValue());
                break;
            default:
                this.f15912b.aa.setTranslationY(((Integer) valueAnimator.getAnimatedValue()).intValue());
                break;
        }
    }
}
