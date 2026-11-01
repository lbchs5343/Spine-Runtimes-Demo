package g;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes3.dex */
public final /* synthetic */ class gml implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18405a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18406b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f18407c;

    public /* synthetic */ gml(Object obj, int i, Object obj2) {
        this.f18405a = i;
        this.f18406b = obj;
        this.f18407c = obj2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f18405a) {
            case 0:
                glg glgVar = (glg) this.f18406b;
                dzw dzwVar = (dzw) this.f18407c;
                glgVar.getClass();
                if (dzwVar.ab(true) && dzwVar.u != 0 && glgVar.isVisible()) {
                    glgVar.invalidateSelf();
                    break;
                }
                break;
            default:
                ((View) ((hp) ((emr) this.f18406b).n).f19387g.getParent()).invalidate();
                break;
        }
    }
}
