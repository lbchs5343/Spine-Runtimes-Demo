package com.bytedance.sdk.component.ox.dq;

import java.util.Arrays;

/* loaded from: classes.dex */
final class fw extends iw {
    final transient byte[][] iw;
    final transient int[] mn;

    public fw(ox oxVar, int i) {
        super(null);
        i.dq(oxVar.f2161d, 0L, i);
        jy jyVar = oxVar.dq;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = jyVar.ox;
            int i6 = jyVar.f2157d;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            jyVar = jyVar.iw;
        }
        this.iw = new byte[i4][];
        this.mn = new int[i4 * 2];
        jy jyVar2 = oxVar.dq;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.iw;
            bArr[i7] = jyVar2.dq;
            int i8 = jyVar2.ox;
            int i9 = jyVar2.f2157d;
            int i10 = (i8 - i9) + i2;
            i2 = i10 > i ? i : i10;
            int[] iArr = this.mn;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            jyVar2.p = true;
            i7++;
            jyVar2 = jyVar2.iw;
        }
    }

    private int d(int i) {
        int binarySearch = Arrays.binarySearch(this.mn, 0, this.iw.length, i + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    private iw kk() {
        return new iw(ia());
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public String d() {
        return kk().d();
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public byte dq(int i) {
        i.dq(this.mn[this.iw.length - 1], i, 1L);
        int d2 = d(i);
        int i2 = d2 == 0 ? 0 : this.mn[d2 - 1];
        int[] iArr = this.mn;
        byte[][] bArr = this.iw;
        return bArr[d2][(i - i2) + iArr[bArr.length + d2]];
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public iw dq(int i, int i2) {
        return kk().dq(i, i2);
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public String dq() {
        return kk().dq();
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public void dq(ox oxVar) {
        int length = this.iw.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.mn;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            jy jyVar = new jy(this.iw[i], i3, (i3 + i4) - i2, true, false);
            jy jyVar2 = oxVar.dq;
            if (jyVar2 == null) {
                jyVar.mn = jyVar;
                jyVar.iw = jyVar;
                oxVar.dq = jyVar;
            } else {
                jyVar2.mn.dq(jyVar);
            }
            i++;
            i2 = i4;
        }
        oxVar.f2161d += i2;
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public boolean dq(int i, iw iwVar, int i2, int i3) {
        if (i < 0 || i > mn() - i3) {
            return false;
        }
        int d2 = d(i);
        while (i3 > 0) {
            int i4 = d2 == 0 ? 0 : this.mn[d2 - 1];
            int min = Math.min(i3, ((this.mn[d2] - i4) + i4) - i);
            int[] iArr = this.mn;
            byte[][] bArr = this.iw;
            if (!iwVar.dq(i2, bArr[d2], (i - i4) + iArr[bArr.length + d2], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            d2++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public boolean dq(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mn() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int d2 = d(i);
        while (i3 > 0) {
            int i4 = d2 == 0 ? 0 : this.mn[d2 - 1];
            int min = Math.min(i3, ((this.mn[d2] - i4) + i4) - i);
            int[] iArr = this.mn;
            byte[][] bArr2 = this.iw;
            if (!i.dq(bArr2[d2], (i - i4) + iArr[bArr2.length + d2], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            d2++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof iw) {
            iw iwVar = (iw) obj;
            if (iwVar.mn() == mn() && dq(0, iwVar, 0, mn())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public int hashCode() {
        int i = this.p;
        if (i != 0) {
            return i;
        }
        int length = this.iw.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.iw[i2];
            int[] iArr = this.mn;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.p = i4;
        return i4;
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public byte[] ia() {
        int[] iArr = this.mn;
        byte[][] bArr = this.iw;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.mn;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.iw[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public iw iw() {
        return kk().iw();
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public int mn() {
        return this.mn[this.iw.length - 1];
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public iw ox() {
        return kk().ox();
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public iw p() {
        return kk().p();
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public String s() {
        return kk().s();
    }

    @Override // com.bytedance.sdk.component.ox.dq.iw
    public String toString() {
        return kk().toString();
    }
}
