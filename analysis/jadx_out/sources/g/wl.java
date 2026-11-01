package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class wl {

    /* renamed from: a, reason: collision with root package name */
    public static final wl f20221a = new wl(0, new int[0], new Object[0], false);

    /* renamed from: b, reason: collision with root package name */
    public int f20222b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20223c;

    /* renamed from: d, reason: collision with root package name */
    public int f20224d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f20225e;

    /* renamed from: f, reason: collision with root package name */
    public Object[] f20226f;

    public wl(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f20224d = i;
        this.f20225e = iArr;
        this.f20226f = objArr;
        this.f20223c = z;
    }

    public static wl g() {
        return new wl(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof wl)) {
            return false;
        }
        wl wlVar = (wl) obj;
        int i = this.f20224d;
        if (i == wlVar.f20224d) {
            int[] iArr = this.f20225e;
            int[] iArr2 = wlVar.f20225e;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.f20226f;
                    Object[] objArr2 = wlVar.f20226f;
                    int i3 = this.f20224d;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
                if (iArr[i2] != iArr2[i2]) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    public final void h(dnb dnbVar) {
        if (this.f20224d != 0) {
            for (int i = 0; i < this.f20224d; i++) {
                int i2 = this.f20225e[i];
                Object obj = this.f20226f[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    ((ctv) dnbVar.f14452a).l(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    ((ctv) dnbVar.f14452a).v(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    ((ctv) dnbVar.f14452a).t(i4, (aki) obj);
                } else if (i3 == 3) {
                    ((ctv) dnbVar.f14452a).m(i4, 3);
                    ((wl) obj).h(dnbVar);
                    ((ctv) dnbVar.f14452a).m(i4, 4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new all());
                    }
                    ((ctv) dnbVar.f14452a).n(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int hashCode() {
        int i = this.f20224d;
        int i2 = i + 527;
        int[] iArr = this.f20225e;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.f20226f;
        int i7 = this.f20224d;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final void i(int i) {
        int[] iArr = this.f20225e;
        if (i > iArr.length) {
            int i2 = this.f20224d;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.f20225e = Arrays.copyOf(iArr, i);
            this.f20226f = Arrays.copyOf(this.f20226f, i);
        }
    }

    public final int j() {
        int i;
        int h;
        int i2;
        int i3 = this.f20222b;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f20224d; i5++) {
            int i6 = this.f20225e[i5];
            int i7 = i6 >>> 3;
            int i8 = i6 & 7;
            if (i8 != 0) {
                if (i8 == 1) {
                    ((Long) this.f20226f[i5]).getClass();
                    i2 = ctv.i(i7 << 3) + 8;
                } else if (i8 == 2) {
                    int i9 = i7 << 3;
                    aki akiVar = (aki) this.f20226f[i5];
                    int i10 = ctv.i(i9);
                    int g2 = akiVar.g();
                    i4 = dub.l(g2, g2, i10, i4);
                } else if (i8 == 3) {
                    int i11 = ctv.i(i7 << 3);
                    i = i11 + i11;
                    h = ((wl) this.f20226f[i5]).j();
                } else {
                    if (i8 != 5) {
                        throw new IllegalStateException(new all());
                    }
                    ((Integer) this.f20226f[i5]).getClass();
                    i2 = ctv.i(i7 << 3) + 4;
                }
                i4 = i2 + i4;
            } else {
                int i12 = i7 << 3;
                long longValue = ((Long) this.f20226f[i5]).longValue();
                i = ctv.i(i12);
                h = ctv.h(longValue);
            }
            i4 = h + i + i4;
        }
        this.f20222b = i4;
        return i4;
    }

    public final void k(int i, Object obj) {
        if (!this.f20223c) {
            throw new UnsupportedOperationException();
        }
        i(this.f20224d + 1);
        int[] iArr = this.f20225e;
        int i2 = this.f20224d;
        iArr[i2] = i;
        this.f20226f[i2] = obj;
        this.f20224d = i2 + 1;
    }
}
