package g;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.PathInterpolator;
import java.util.Collections;

/* loaded from: classes.dex */
public final class bam implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11177a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f11178b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cer f11179c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ anp f11180d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ anp f11181e;

    public bam(cer cerVar, anp anpVar, anp anpVar2, int i, View view) {
        this.f11179c = cerVar;
        this.f11180d = anpVar;
        this.f11181e = anpVar2;
        this.f11177a = i;
        this.f11178b = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        cer cerVar = this.f11179c;
        cerVar.f12757a.e(animatedFraction);
        anp anpVar = this.f11180d;
        dif difVar = anpVar.f10526b;
        float g2 = cerVar.f12757a.g();
        PathInterpolator pathInterpolator = cuo.j;
        int i = Build.VERSION.SDK_INT;
        ecs bruVar = i >= 34 ? new bru(anpVar) : i >= 31 ? new ghh(anpVar) : i >= 30 ? new yd(anpVar) : i >= 29 ? new bbb(anpVar) : new gjd(anpVar);
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((this.f11177a & i2) == 0) {
                bruVar.a(i2, difVar.i(i2));
            } else {
                oi i3 = difVar.i(i2);
                oi i4 = this.f11181e.f10526b.i(i2);
                float f2 = 1.0f - g2;
                bruVar.a(i2, anp.d(i3, (int) (((i3.f19759c - i4.f19759c) * f2) + 0.5d), (int) (((i3.f19760d - i4.f19760d) * f2) + 0.5d), (int) (((i3.f19761e - i4.f19761e) * f2) + 0.5d), (int) (((i3.f19758b - i4.f19758b) * f2) + 0.5d)));
            }
        }
        cuo.r(this.f11178b, bruVar.g(), Collections.singletonList(cerVar));
    }
}
