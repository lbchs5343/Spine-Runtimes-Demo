package g;

import android.animation.ObjectAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class bgo extends cgo {
    public float l;
    public ObjectAnimator m;
    public final fca n;
    public final alp o;
    public float p;
    public gu q;
    public ObjectAnimator r;
    public int s;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f11529d = {0, 1350, 2700, 4050};
    public static final int[] j = {667, 2017, 3367, 4717};
    public static final int[] k = {1000, 2350, 3700, 5050};
    public static final dfe i = new dfe(5, Float.class, "animationFraction");
    public static final dfe h = new dfe(6, Float.class, "completeEndFraction");

    public bgo(alp alpVar) {
        super(1);
        this.s = 0;
        this.q = null;
        this.o = alpVar;
        this.n = new fca(1);
    }

    @Override // g.cgo
    public final void t() {
        v();
        ObjectAnimator objectAnimator = this.r;
        alp alpVar = this.o;
        objectAnimator.setDuration((long) (alpVar.o * 5400.0f));
        this.m.setDuration((long) (alpVar.o * 333.0f));
        this.s = 0;
        ((agm) ((ArrayList) this.f12848ab).get(0)).f10189g = alpVar.r[0];
        this.p = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // g.cgo
    public final void u() {
        this.q = null;
    }

    public final void v() {
        ObjectAnimator objectAnimator = this.r;
        alp alpVar = this.o;
        if (objectAnimator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, i, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            this.r = ofFloat;
            ofFloat.setDuration((long) (alpVar.o * 5400.0f));
            this.r.setInterpolator(null);
            this.r.setRepeatCount(-1);
            this.r.addListener(new dci(this, 0));
        }
        if (this.m == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, h, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            this.m = ofFloat2;
            ofFloat2.setDuration((long) (alpVar.o * 333.0f));
            this.m.setInterpolator(this.n);
            this.m.addListener(new dci(this, 1));
        }
    }

    @Override // g.cgo
    public final void w(bbg bbgVar) {
        this.q = bbgVar;
    }

    @Override // g.cgo
    public final void x() {
        v();
        this.s = 0;
        ((agm) ((ArrayList) this.f12848ab).get(0)).f10189g = this.o.r[0];
        this.p = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.r.start();
    }

    @Override // g.cgo
    public final void y() {
        ObjectAnimator objectAnimator = this.r;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // g.cgo
    public final void z() {
        ObjectAnimator objectAnimator = this.m;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (((fkr) this.aa).isVisible()) {
            this.m.start();
        } else {
            y();
        }
    }
}
