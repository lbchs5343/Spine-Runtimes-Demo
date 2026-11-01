package g;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class bpc implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f11946a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dac f11947b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ gkb f11948c;

    public bpc(gkb gkbVar, float f2, dac dacVar) {
        this.f11948c = gkbVar;
        this.f11946a = f2;
        this.f11947b = dacVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        bdg bdgVar;
        bdg bdgVar2;
        Object animatedValue = valueAnimator.getAnimatedValue();
        if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < this.f11946a) {
            return;
        }
        gkb gkbVar = this.f11948c;
        gkbVar.d(this);
        bdgVar = gkbVar.n;
        if (bdgVar != null) {
            bdgVar2 = gkbVar.n;
            dac dacVar = this.f11947b;
            ((eie) bdgVar2).n(dacVar.f13842d, dacVar.f13845g);
        }
    }
}
