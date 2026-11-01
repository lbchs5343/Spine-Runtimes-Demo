package g;

import android.view.animation.Interpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class cej {
    public final gmo i;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f12742f = new ArrayList(1);
    public boolean h = false;

    /* renamed from: d, reason: collision with root package name */
    public float f12740d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    /* renamed from: e, reason: collision with root package name */
    public Object f12741e = null;

    /* renamed from: g, reason: collision with root package name */
    public float f12743g = -1.0f;
    public float j = -1.0f;

    public cej(List list) {
        gmo frVar;
        if (list.isEmpty()) {
            frVar = new fbc(15);
        } else {
            frVar = list.size() == 1 ? new fr(list) : new ey(list);
        }
        this.i = frVar;
    }

    public abstract Object b(flj fljVar, float f2);

    public final float k() {
        flj n = n();
        return (n == null || n.v()) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : n.h.getInterpolation(q());
    }

    public final void l(fyj fyjVar) {
        this.f12742f.add(fyjVar);
    }

    public Object m() {
        float q = q();
        if (this.i.g(q)) {
            return this.f12741e;
        }
        flj n = n();
        Interpolator interpolator = n.j;
        Interpolator interpolator2 = n.l;
        Object b2 = (interpolator == null || interpolator2 == null) ? b(n, k()) : o(n, q, interpolator.getInterpolation(q), interpolator2.getInterpolation(q));
        this.f12741e = b2;
        return b2;
    }

    public final flj n() {
        flj d2 = this.i.d();
        buj.bd();
        return d2;
    }

    public Object o(flj fljVar, float f2, float f3, float f4) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void p(float f2) {
        gmo gmoVar = this.i;
        if (gmoVar.dq()) {
            return;
        }
        if (this.f12743g == -1.0f) {
            this.f12743g = gmoVar.ox();
        }
        float f3 = this.f12743g;
        if (f2 < f3) {
            if (f3 == -1.0f) {
                this.f12743g = gmoVar.ox();
            }
            f2 = this.f12743g;
        } else {
            if (this.j == -1.0f) {
                this.j = gmoVar._bu();
            }
            float f4 = this.j;
            if (f2 > f4) {
                if (f4 == -1.0f) {
                    this.j = gmoVar._bu();
                }
                f2 = this.j;
            }
        }
        if (f2 == this.f12740d) {
            return;
        }
        this.f12740d = f2;
        if (!gmoVar.dq(f2)) {
            return;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f12742f;
            if (i >= arrayList.size()) {
                return;
            }
            ((fyj) arrayList.get(i)).dq();
            i++;
        }
    }

    public final float q() {
        if (this.h) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        flj n = n();
        return n.v() ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : (this.f12740d - n.t()) / (n.u() - n.t());
    }
}
