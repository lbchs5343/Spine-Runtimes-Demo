package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;

/* loaded from: classes.dex */
public final class ey implements gmo {

    /* renamed from: c, reason: collision with root package name */
    public final List f16351c;

    /* renamed from: a, reason: collision with root package name */
    public flj f16349a = null;

    /* renamed from: b, reason: collision with root package name */
    public float f16350b = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public flj f16352e = f(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    public ey(List list) {
        this.f16351c = list;
    }

    @Override // g.gmo
    public final float _bu() {
        return ((flj) awf.q(1, this.f16351c)).u();
    }

    @Override // g.gmo
    public final flj d() {
        return this.f16352e;
    }

    @Override // g.gmo
    public final boolean dq() {
        return false;
    }

    @Override // g.gmo
    public final boolean dq(float f2) {
        flj fljVar = this.f16352e;
        if (f2 >= fljVar.t() && f2 < fljVar.u()) {
            return !this.f16352e.v();
        }
        this.f16352e = f(f2);
        return true;
    }

    public final flj f(float f2) {
        List list = this.f16351c;
        flj fljVar = (flj) awf.q(1, list);
        if (f2 >= fljVar.t()) {
            return fljVar;
        }
        for (int size = list.size() - 2; size > 0; size--) {
            flj fljVar2 = (flj) list.get(size);
            if (this.f16352e != fljVar2 && f2 >= fljVar2.t() && f2 < fljVar2.u()) {
                return fljVar2;
            }
        }
        return (flj) list.get(0);
    }

    @Override // g.gmo
    public final boolean g(float f2) {
        flj fljVar = this.f16349a;
        flj fljVar2 = this.f16352e;
        if (fljVar == fljVar2 && this.f16350b == f2) {
            return true;
        }
        this.f16349a = fljVar2;
        this.f16350b = f2;
        return false;
    }

    @Override // g.gmo
    public final float ox() {
        return ((flj) this.f16351c.get(0)).t();
    }
}
