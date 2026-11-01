package com.bytedance.sdk.component.ox.dq;

/* loaded from: classes.dex */
final class jy {

    /* renamed from: d, reason: collision with root package name */
    int f2157d;
    final byte[] dq;
    jy iw;
    jy mn;
    int ox;
    boolean p;
    boolean s;

    public jy() {
        this.dq = new byte[8192];
        this.s = true;
        this.p = false;
    }

    public jy(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.dq = bArr;
        this.f2157d = i;
        this.ox = i2;
        this.p = z;
        this.s = z2;
    }

    public final jy d() {
        jy jyVar = this.iw;
        jy jyVar2 = jyVar != this ? jyVar : null;
        jy jyVar3 = this.mn;
        if (jyVar3 != null) {
            jyVar3.iw = jyVar;
        }
        jy jyVar4 = this.iw;
        if (jyVar4 != null) {
            jyVar4.mn = jyVar3;
        }
        this.iw = null;
        this.mn = null;
        return jyVar2;
    }

    public final jy dq() {
        this.p = true;
        return new jy(this.dq, this.f2157d, this.ox, true, false);
    }

    public final jy dq(int i) {
        jy dq;
        if (i <= 0 || i > this.ox - this.f2157d) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            dq = dq();
        } else {
            dq = f.dq();
            System.arraycopy(this.dq, this.f2157d, dq.dq, 0, i);
        }
        dq.ox = dq.f2157d + i;
        this.f2157d += i;
        this.mn.dq(dq);
        return dq;
    }

    public final jy dq(jy jyVar) {
        jyVar.mn = this;
        jyVar.iw = this.iw;
        this.iw.mn = jyVar;
        this.iw = jyVar;
        return jyVar;
    }

    public final void dq(jy jyVar, int i) {
        if (!jyVar.s) {
            throw new IllegalArgumentException();
        }
        int i2 = jyVar.ox;
        if (i2 + i > 8192) {
            if (jyVar.p) {
                throw new IllegalArgumentException();
            }
            int i3 = jyVar.f2157d;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = jyVar.dq;
            System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
            jyVar.ox -= jyVar.f2157d;
            jyVar.f2157d = 0;
        }
        System.arraycopy(this.dq, this.f2157d, jyVar.dq, jyVar.ox, i);
        jyVar.ox += i;
        this.f2157d += i;
    }

    public final void ox() {
        jy jyVar = this.mn;
        if (jyVar == this) {
            throw new IllegalStateException();
        }
        if (jyVar.s) {
            int i = this.ox - this.f2157d;
            if (i > (8192 - jyVar.ox) + (jyVar.p ? 0 : jyVar.f2157d)) {
                return;
            }
            dq(jyVar, i);
            d();
            f.dq(this);
        }
    }
}
