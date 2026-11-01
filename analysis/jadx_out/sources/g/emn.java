package g;

import android.animation.ValueAnimator;

/* loaded from: classes3.dex */
public final /* synthetic */ class emn implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15802a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15803b;

    public /* synthetic */ emn(int i, Object obj) {
        this.f15802a = i;
        this.f15803b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f15802a) {
            case 0:
                glg glgVar = (glg) this.f15803b;
                glgVar.ae.f10185c = glgVar.w.getInterpolation(glgVar.y.getAnimatedFraction());
                break;
            case 1:
                chp chpVar = (chp) this.f15803b;
                chpVar.getClass();
                chpVar.v.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                bqf bqfVar = (bqf) this.f15803b;
                bqfVar.getClass();
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                bqfVar.t.setAlpha((int) (255.0f * floatValue));
                bqfVar.x = floatValue;
                break;
        }
    }
}
