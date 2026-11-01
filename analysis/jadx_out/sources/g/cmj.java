package g;

import android.animation.ObjectAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class cmj extends cgo {

    /* renamed from: d, reason: collision with root package name */
    public static final dfe f13120d = new dfe(10, Float.class, "animationFraction");
    public float h;
    public final fca i;
    public final cvs j;
    public int k;
    public ObjectAnimator l;
    public boolean m;

    public cmj(cvs cvsVar) {
        super(3);
        this.k = 1;
        this.j = cvsVar;
        this.i = new fca(1);
    }

    public final void n() {
        if (this.l == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f13120d, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            this.l = ofFloat;
            ofFloat.setDuration((long) (this.j.o * 333.0f));
            this.l.setInterpolator(null);
            this.l.setRepeatCount(-1);
            this.l.addListener(new cod(5, this));
        }
    }

    public final void o() {
        this.m = true;
        this.k = 1;
        Iterator it = ((ArrayList) this.f12848ab).iterator();
        while (it.hasNext()) {
            agm agmVar = (agm) it.next();
            cvs cvsVar = this.j;
            agmVar.f10189g = cvsVar.r[0];
            agmVar.f10184b = cvsVar.v / 2;
        }
    }

    @Override // g.cgo
    public final void t() {
        n();
        this.l.setDuration((long) (this.j.o * 333.0f));
        o();
    }

    @Override // g.cgo
    public final void u() {
    }

    @Override // g.cgo
    public final void w(bbg bbgVar) {
    }

    @Override // g.cgo
    public final void x() {
        n();
        o();
        this.l.start();
    }

    @Override // g.cgo
    public final void y() {
        ObjectAnimator objectAnimator = this.l;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // g.cgo
    public final void z() {
    }
}
