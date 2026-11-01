package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.view.ViewPropertyAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* loaded from: classes3.dex */
public final class don extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14535a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cle f14536b;

    public /* synthetic */ don(cle cleVar, int i) {
        this.f14535a = i;
        this.f14536b = cleVar;
    }

    public /* synthetic */ don(cle cleVar, int i, int i2) {
        this.f14535a = i2;
        this.f14536b = cleVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f14535a) {
            case 0:
                this.f14536b.an();
                break;
            case 1:
                this.f14536b.ai();
                break;
            case 2:
                this.f14536b.an();
                break;
            default:
                this.f14536b.ai();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f14535a) {
            case 1:
                cle cleVar = this.f14536b;
                biq biqVar = cleVar.ac;
                int i = cleVar.af;
                int i2 = cleVar.t;
                int i3 = i - i2;
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) biqVar;
                snackbarContentLayout.f9072c.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                long j = i2;
                ViewPropertyAnimator duration = snackbarContentLayout.f9072c.animate().alpha(1.0f).setDuration(j);
                TimeInterpolator timeInterpolator = snackbarContentLayout.f9070a;
                long j2 = i3;
                duration.setInterpolator(timeInterpolator).setStartDelay(j2).start();
                if (snackbarContentLayout.f9073d.getVisibility() == 0) {
                    snackbarContentLayout.f9073d.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    snackbarContentLayout.f9073d.animate().alpha(1.0f).setDuration(j).setInterpolator(timeInterpolator).setStartDelay(j2).start();
                    break;
                }
                break;
            case 2:
                cle cleVar2 = this.f14536b;
                biq biqVar2 = cleVar2.ac;
                int i4 = cleVar2.f13057ab;
                SnackbarContentLayout snackbarContentLayout2 = (SnackbarContentLayout) biqVar2;
                snackbarContentLayout2.f9072c.setAlpha(1.0f);
                long j3 = i4;
                ViewPropertyAnimator duration2 = snackbarContentLayout2.f9072c.animate().alpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration(j3);
                TimeInterpolator timeInterpolator2 = snackbarContentLayout2.f9070a;
                long j4 = 0;
                duration2.setInterpolator(timeInterpolator2).setStartDelay(j4).start();
                if (snackbarContentLayout2.f9073d.getVisibility() == 0) {
                    snackbarContentLayout2.f9073d.setAlpha(1.0f);
                    snackbarContentLayout2.f9073d.animate().alpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration(j3).setInterpolator(timeInterpolator2).setStartDelay(j4).start();
                    break;
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
