package g;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class dpk extends cgo {
    public float l;
    public ObjectAnimator m;
    public final TimeInterpolator n;
    public final alp o;
    public float p;
    public gu q;
    public ObjectAnimator r;
    public int s;

    /* renamed from: d, reason: collision with root package name */
    public static final fca f14591d = gtk.f18728c;
    public static final int[] j = {0, 1500, 3000, 4500};
    public static final float[] k = {0.1f, 0.87f};
    public static final dfe i = new dfe(7, Float.class, "animationFraction");
    public static final dfe h = new dfe(8, Float.class, "completeEndFraction");

    public dpk(Context context, alp alpVar) {
        super(1);
        this.s = 0;
        this.q = null;
        this.o = alpVar;
        this.n = egh.r(context, R.attr.motionEasingStandardInterpolator, f14591d);
    }

    @Override // g.cgo
    public final void t() {
        v();
        ObjectAnimator objectAnimator = this.r;
        alp alpVar = this.o;
        objectAnimator.setDuration((long) (alpVar.o * 6000.0f));
        this.m.setDuration((long) (alpVar.o * 500.0f));
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
            ofFloat.setDuration((long) (alpVar.o * 6000.0f));
            this.r.setInterpolator(null);
            this.r.setRepeatCount(-1);
            this.r.addListener(new gmj(this, 0));
        }
        if (this.m == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, h, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            this.m = ofFloat2;
            ofFloat2.setDuration((long) (alpVar.o * 500.0f));
            this.m.addListener(new gmj(this, 1));
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
