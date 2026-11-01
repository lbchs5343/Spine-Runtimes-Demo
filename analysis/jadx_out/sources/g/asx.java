package g;

import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final class asx extends frx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10784a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ asx(Unsafe unsafe, int i) {
        super(unsafe);
        this.f10784a = i;
    }

    @Override // g.frx
    public final void b(Object obj, long j, byte b2) {
        switch (this.f10784a) {
            case 0:
                if (!diy.f14261g) {
                    diy.j(obj, j, b2);
                    break;
                } else {
                    diy.r(obj, j, b2);
                    break;
                }
            default:
                if (!diy.f14261g) {
                    diy.j(obj, j, b2);
                    break;
                } else {
                    diy.r(obj, j, b2);
                    break;
                }
        }
    }

    @Override // g.frx
    public final void c(Object obj, long j, double d2) {
        switch (this.f10784a) {
            case 0:
                l(obj, j, Double.doubleToLongBits(d2));
                break;
            default:
                l(obj, j, Double.doubleToLongBits(d2));
                break;
        }
    }

    @Override // g.frx
    public final double d(long j, Object obj) {
        switch (this.f10784a) {
        }
        return Double.longBitsToDouble(k(j, obj));
    }

    @Override // g.frx
    public final void e(Object obj, long j, float f2) {
        switch (this.f10784a) {
            case 0:
                m(obj, j, Float.floatToIntBits(f2));
                break;
            default:
                m(obj, j, Float.floatToIntBits(f2));
                break;
        }
    }

    @Override // g.frx
    public final float f(long j, Object obj) {
        switch (this.f10784a) {
        }
        return Float.intBitsToFloat(r(j, obj));
    }

    @Override // g.frx
    public final void g(Object obj, long j, boolean z) {
        switch (this.f10784a) {
            case 0:
                if (!diy.f14261g) {
                    diy.j(obj, j, z ? (byte) 1 : (byte) 0);
                    break;
                } else {
                    diy.r(obj, j, z ? (byte) 1 : (byte) 0);
                    break;
                }
            default:
                if (!diy.f14261g) {
                    diy.j(obj, j, z ? (byte) 1 : (byte) 0);
                    break;
                } else {
                    diy.r(obj, j, z ? (byte) 1 : (byte) 0);
                    break;
                }
        }
    }

    @Override // g.frx
    public final boolean h(long j, Object obj) {
        switch (this.f10784a) {
            case 0:
                if (!diy.f14261g) {
                    break;
                } else {
                    break;
                }
            default:
                if (!diy.f14261g) {
                    break;
                } else {
                    break;
                }
        }
        return diy.q(j, obj);
    }
}
