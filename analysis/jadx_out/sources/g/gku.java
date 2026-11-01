package g;

/* loaded from: classes3.dex */
public final class gku extends aul {
    @Override // g.aul
    public final void a(Object obj, long j, byte b2) {
        if (euh.f16178g) {
            euh.v(obj, j, b2);
        } else {
            euh.l(obj, j, b2);
        }
    }

    @Override // g.aul
    public final boolean b(long j, Object obj) {
        return euh.f16178g ? euh.r(j, obj) : euh.k(j, obj);
    }

    @Override // g.aul
    public final float c(long j, Object obj) {
        return Float.intBitsToFloat(this.h.getInt(obj, j));
    }

    @Override // g.aul
    public final void d(Object obj, long j, float f2) {
        this.h.putInt(obj, j, Float.floatToIntBits(f2));
    }

    @Override // g.aul
    public final void e(Object obj, long j, boolean z) {
        if (euh.f16178g) {
            euh.v(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            euh.l(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // g.aul
    public final void f(Object obj, long j, double d2) {
        this.h.putLong(obj, j, Double.doubleToLongBits(d2));
    }

    @Override // g.aul
    public final double g(long j, Object obj) {
        return Double.longBitsToDouble(this.h.getLong(obj, j));
    }
}
