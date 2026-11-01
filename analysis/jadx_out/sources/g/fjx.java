package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class fjx {

    /* renamed from: a, reason: collision with root package name */
    public static final fjx f16899a = new fjx(0, new int[0], new Object[0], false);

    /* renamed from: b, reason: collision with root package name */
    public int f16900b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16901c;

    /* renamed from: d, reason: collision with root package name */
    public int f16902d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f16903e;

    /* renamed from: f, reason: collision with root package name */
    public Object[] f16904f;

    public fjx(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f16902d = i;
        this.f16903e = iArr;
        this.f16904f = objArr;
        this.f16901c = z;
    }

    public static fjx g() {
        return new fjx(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof fjx)) {
            return false;
        }
        fjx fjxVar = (fjx) obj;
        int i = this.f16902d;
        if (i == fjxVar.f16902d) {
            int[] iArr = this.f16903e;
            int[] iArr2 = fjxVar.f16903e;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.f16904f;
                    Object[] objArr2 = fjxVar.f16904f;
                    int i3 = this.f16902d;
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

    public final void h(aoy aoyVar) {
        if (this.f16902d != 0) {
            for (int i = 0; i < this.f16902d; i++) {
                int i2 = this.f16903e[i];
                Object obj = this.f16904f[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    ((p) aoyVar.h).o(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    ((p) aoyVar.h).w(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    aoyVar.aa(i3, (cyb) obj);
                } else if (i4 == 3) {
                    ((p) aoyVar.h).n(i3, 3);
                    ((fjx) obj).h(aoyVar);
                    ((p) aoyVar.h).n(i3, 4);
                } else {
                    if (i4 != 5) {
                        int i5 = drq.f14681a;
                        throw new RuntimeException(new ass("Protocol message tag had invalid wire type."));
                    }
                    ((p) aoyVar.h).p(i3, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int hashCode() {
        int i = this.f16902d;
        int i2 = (i + 527) * 31;
        int[] iArr = this.f16903e;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f16904f;
        int i7 = this.f16902d;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int i() {
        int h;
        int i;
        int i2 = this.f16900b;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f16902d; i4++) {
            int i5 = this.f16903e[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 != 0) {
                if (i7 == 1) {
                    ((Long) this.f16904f[i4]).getClass();
                    i3 = dub.d(i6 << 3, 8, i3);
                } else if (i7 == 2) {
                    cyb cybVar = (cyb) this.f16904f[i4];
                    int h2 = p.h(i6 << 3);
                    int c2 = cybVar.c();
                    i3 = dub.j(c2, c2, h2, i3);
                } else if (i7 == 3) {
                    int l = p.l(i6);
                    h = l + l;
                    i = ((fjx) this.f16904f[i4]).i();
                } else {
                    if (i7 != 5) {
                        int i8 = drq.f14681a;
                        throw new IllegalStateException(new ass("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.f16904f[i4]).getClass();
                    i3 = dub.d(i6 << 3, 4, i3);
                }
            } else {
                long longValue = ((Long) this.f16904f[i4]).longValue();
                h = p.h(i6 << 3);
                i = p.i(longValue);
            }
            i3 = i + h + i3;
        }
        this.f16900b = i3;
        return i3;
    }

    public final void j(int i, Object obj) {
        if (!this.f16901c) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.f16902d;
        int[] iArr = this.f16903e;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.f16903e = Arrays.copyOf(iArr, i3);
            this.f16904f = Arrays.copyOf(this.f16904f, i3);
        }
        int[] iArr2 = this.f16903e;
        int i4 = this.f16902d;
        iArr2[i4] = i;
        this.f16904f[i4] = obj;
        this.f16902d = i4 + 1;
    }
}
