package g;

import libcore.io.Memory;

/* loaded from: classes3.dex */
public final class fku extends aul {
    @Override // g.aul
    public final void i(Object obj, long j, byte b2) {
        if (gbc.f17843a) {
            gbc.m(obj, j, b2);
        } else {
            gbc.o(obj, j, b2);
        }
    }

    @Override // g.aul
    public final void j(Object obj, long j, float f2) {
        this.h.putInt(obj, j, Float.floatToIntBits(f2));
    }

    @Override // g.aul
    public final float k(long j, Object obj) {
        return Float.intBitsToFloat(this.h.getInt(obj, j));
    }

    @Override // g.aul
    public final byte l(long j) {
        return Memory.peekByte(j);
    }

    @Override // g.aul
    public final boolean m(long j, Object obj) {
        return gbc.f17843a ? gbc.r(j, obj) : gbc.w(j, obj);
    }

    @Override // g.aul
    public final void n(Object obj, long j, double d2) {
        this.h.putLong(obj, j, Double.doubleToLongBits(d2));
    }

    @Override // g.aul
    public final void o(Object obj, long j, boolean z) {
        if (gbc.f17843a) {
            gbc.m(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            gbc.o(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // g.aul
    public final double p(long j, Object obj) {
        return Double.longBitsToDouble(this.h.getLong(obj, j));
    }

    @Override // g.aul
    public final void q(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray(j, bArr, (int) j2, (int) j3);
    }
}
