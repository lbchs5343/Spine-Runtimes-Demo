package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class dkv extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14339a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dzo f14340b;

    public /* synthetic */ dkv(dzo dzoVar, int i) {
        this.f14339a = i;
        this.f14340b = dzoVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f14339a) {
            case 1:
                super.onAnimationEnd(animator);
                dzo dzoVar = this.f14340b;
                super/*android.graphics.drawable.Drawable*/.setVisible(false, false);
                ArrayList arrayList = dzoVar.f15139c;
                if (arrayList != null && !dzoVar.f15138b) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((gu) it.next()).b(dzoVar);
                    }
                    break;
                }
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f14339a) {
            case 0:
                super.onAnimationStart(animator);
                dzo dzoVar = this.f14340b;
                ArrayList arrayList = dzoVar.f15139c;
                if (arrayList != null && !dzoVar.f15138b) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((gu) it.next()).c(dzoVar);
                    }
                    break;
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
