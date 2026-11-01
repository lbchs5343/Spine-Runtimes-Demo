package g;

import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class fhs extends gei {

    /* renamed from: a, reason: collision with root package name */
    public final transient byte[][] f16806a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int[] f16807b;

    public fhs(byte[][] bArr, int[] iArr) {
        super(gei.n.r());
        this.f16806a = bArr;
        this.f16807b = iArr;
    }

    private final Object writeReplace() {
        return new gei(i());
    }

    @Override // g.gei
    public final boolean c(int i, byte[] bArr, int i2, int i3) {
        bff.p(bArr, "other");
        if (i < 0 || i > d() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int f2 = bff.f(this, i);
        while (i < i4) {
            int[] iArr = this.f16807b;
            int i5 = f2 == 0 ? 0 : iArr[f2 - 1];
            int i6 = iArr[f2] - i5;
            byte[][] bArr2 = this.f16806a;
            int i7 = iArr[bArr2.length + f2];
            int min = Math.min(i4, i6 + i5) - i;
            if (!acw.ab(bArr2[f2], (i - i5) + i7, bArr, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            f2++;
        }
        return true;
    }

    @Override // g.gei
    public final int d() {
        return this.f16807b[this.f16806a.length - 1];
    }

    @Override // g.gei
    public final void e(clq clqVar, int i) {
        int f2 = bff.f(this, 0);
        int i2 = 0;
        while (i2 < i) {
            int[] iArr = this.f16807b;
            int i3 = f2 == 0 ? 0 : iArr[f2 - 1];
            int i4 = iArr[f2] - i3;
            byte[][] bArr = this.f16806a;
            int i5 = iArr[bArr.length + f2];
            int min = Math.min(i, i4 + i3) - i2;
            int i6 = (i2 - i3) + i5;
            ghg ghgVar = new ghg(bArr[f2], i6, i6 + min, true);
            ghg ghgVar2 = clqVar.f13079a;
            if (ghgVar2 == null) {
                ghgVar.f18160g = ghgVar;
                ghgVar.f18157d = ghgVar;
                clqVar.f13079a = ghgVar;
            } else {
                ghg ghgVar3 = ghgVar2.f18160g;
                bff.d(ghgVar3);
                ghgVar3.j(ghgVar);
            }
            i2 += min;
            f2++;
        }
        clqVar.f13080b += i;
    }

    @Override // g.gei
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gei)) {
            return false;
        }
        gei geiVar = (gei) obj;
        return geiVar.d() == d() && j(geiVar, d());
    }

    @Override // g.gei
    public final String f() {
        return new gei(i()).f();
    }

    @Override // g.gei
    public final String g() {
        throw null;
    }

    @Override // g.gei
    public final byte[] h() {
        return i();
    }

    @Override // g.gei
    public final int hashCode() {
        int i = this.o;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.f16806a;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            int[] iArr = this.f16807b;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.o = i4;
        return i4;
    }

    public final byte[] i() {
        byte[] bArr = new byte[d()];
        byte[][] bArr2 = this.f16806a;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.f16807b;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            fuv.m(bArr2[i], i3, bArr, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // g.gei
    public final boolean j(gei geiVar, int i) {
        bff.p(geiVar, "other");
        if (d() - i >= 0) {
            int f2 = bff.f(this, 0);
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int[] iArr = this.f16807b;
                int i4 = f2 == 0 ? 0 : iArr[f2 - 1];
                int i5 = iArr[f2] - i4;
                byte[][] bArr = this.f16806a;
                int i6 = iArr[bArr.length + f2];
                int min = Math.min(i, i5 + i4) - i2;
                if (geiVar.c(i3, bArr[f2], (i2 - i4) + i6, min)) {
                    i3 += min;
                    i2 += min;
                    f2++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // g.gei
    public final gei k(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.f16806a;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f16807b;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(bArr[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digest = messageDigest.digest();
        bff.d(digest);
        return new gei(digest);
    }

    @Override // g.gei
    public final gei l() {
        return new gei(i()).l();
    }

    @Override // g.gei
    public final byte m(int i) {
        byte[][] bArr = this.f16806a;
        int length = bArr.length - 1;
        int[] iArr = this.f16807b;
        acw.aw(iArr[length], i, 1L);
        int f2 = bff.f(this, i);
        return bArr[f2][(i - (f2 == 0 ? 0 : iArr[f2 - 1])) + iArr[bArr.length + f2]];
    }

    @Override // g.gei
    public final String toString() {
        return new gei(i()).toString();
    }
}
