package g;

import android.animation.Animator;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class yz implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20374a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gkb f20375b;

    public /* synthetic */ yz(gkb gkbVar, int i) {
        this.f20374a = i;
        this.f20375b = gkbVar;
    }

    private final void c(Animator animator) {
    }

    private final void d(Animator animator) {
    }

    private final void e(Animator animator) {
    }

    private final void f(Animator animator) {
    }

    private final void g(Animator animator) {
    }

    private final void h(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i = this.f20374a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.f20374a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        int i = this.f20374a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        long j;
        String playDelayedELExpressTimeS;
        fts ftsVar;
        long j2;
        long j3;
        Handler handler;
        Handler handler2;
        Handler handler3;
        switch (this.f20374a) {
            case 0:
                long elapsedRealtime = SystemClock.elapsedRealtime();
                gkb gkbVar = this.f20375b;
                j = gkbVar.i;
                long j4 = elapsedRealtime - j;
                gkbVar.d(this);
                playDelayedELExpressTimeS = gkbVar.getPlayDelayedELExpressTimeS();
                if (!TextUtils.isEmpty(playDelayedELExpressTimeS)) {
                    ftsVar = gkbVar.mn;
                    dpc dpcVar = ftsVar.h;
                    if (dpcVar != null) {
                        try {
                            int parseInt = Integer.parseInt(dpcVar.b(playDelayedELExpressTimeS)) * 1000;
                            j2 = gkbVar.i;
                            if (j2 > 0) {
                                j3 = gkbVar.i;
                                long elapsedRealtime2 = (j3 + parseInt) - SystemClock.elapsedRealtime();
                                "--==-- lottie delayed time: ".concat(String.valueOf(elapsedRealtime2));
                                if (elapsedRealtime2 > 0) {
                                    gkbVar.mn();
                                    gkbVar.setVisibility(8);
                                    handler = gkbVar.r;
                                    if (handler == null) {
                                        gkbVar.r = new Handler(Looper.getMainLooper());
                                    }
                                    handler2 = gkbVar.r;
                                    handler2.removeCallbacksAndMessages(null);
                                    handler3 = gkbVar.r;
                                    handler3.postDelayed(new axi(this, j4, 0), elapsedRealtime2);
                                    break;
                                }
                            }
                        } catch (NumberFormatException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                gkb.dq(gkbVar, j4);
                break;
            default:
                gkb gkbVar2 = this.f20375b;
                gkbVar2.d(this);
                gkb.ox(gkbVar2);
                gkb.p(gkbVar2);
                break;
        }
    }
}
