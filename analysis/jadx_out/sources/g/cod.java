package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class cod extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13216a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13217b;

    public /* synthetic */ cod(int i, Object obj) {
        this.f13216a = i;
        this.f13217b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f13216a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f13217b;
                actionBarOverlayLayout.aa = null;
                actionBarOverlayLayout.k = false;
                break;
            case 7:
                czm czmVar = (czm) this.f13217b;
                czmVar.setEnabled(true);
                czmVar.f13813a.setEnabled(true);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f13216a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f13217b;
                actionBarOverlayLayout.aa = null;
                actionBarOverlayLayout.k = false;
                break;
            case 1:
                ahf ahfVar = (ahf) this.f13217b;
                ArrayList arrayList = new ArrayList(ahfVar.f10217d);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((gu) arrayList.get(i)).b(ahfVar);
                }
                break;
            case 2:
                chp chpVar = (chp) this.f13217b;
                chpVar.ah();
                chpVar.ak.start();
                break;
            case 3:
                ((HideBottomViewOnScrollBehavior) this.f13217b).f8998b = null;
                break;
            case 4:
                ((HideViewOnScrollBehavior) this.f13217b).f9000b = null;
                break;
            case 5:
            default:
                super.onAnimationEnd(animator);
                break;
            case 6:
                ((fqk) this.f13217b).bm();
                animator.removeListener(this);
                break;
            case 7:
                czm czmVar = (czm) this.f13217b;
                czmVar.setEnabled(true);
                czmVar.f13813a.setEnabled(true);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        switch (this.f13216a) {
            case 5:
                super.onAnimationRepeat(animator);
                cmj cmjVar = (cmj) this.f13217b;
                cmjVar.k = (cmjVar.k + 1) % cmjVar.j.r.length;
                cmjVar.m = true;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f13216a) {
            case 1:
                ahf ahfVar = (ahf) this.f13217b;
                ArrayList arrayList = new ArrayList(ahfVar.f10217d);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((gu) arrayList.get(i)).c(ahfVar);
                }
                break;
            case 7:
                czm czmVar = (czm) this.f13217b;
                czmVar.setEnabled(false);
                czmVar.f13813a.setEnabled(false);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
