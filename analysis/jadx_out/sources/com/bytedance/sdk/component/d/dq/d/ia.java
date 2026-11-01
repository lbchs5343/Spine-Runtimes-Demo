package com.bytedance.sdk.component.d.dq.d;

import java.util.Arrays;

/* loaded from: classes.dex */
final class ia extends p {
    final transient int[] ia;
    final transient byte[][] mn;

    public ia(dq dqVar, int i) {
        super(null);
        o.dq(dqVar.f1831d, 0L, i);
        iw iwVar = dqVar.dq;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = iwVar.ox;
            int i6 = iwVar.f1832d;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            iwVar = iwVar.iw;
        }
        this.mn = new byte[i4][];
        this.ia = new int[i4 * 2];
        iw iwVar2 = dqVar.dq;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.mn;
            bArr[i7] = iwVar2.dq;
            int i8 = iwVar2.ox;
            int i9 = iwVar2.f1832d;
            int i10 = (i8 - i9) + i2;
            i2 = i10 > i ? i : i10;
            int[] iArr = this.ia;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            iwVar2.p = true;
            i7++;
            iwVar2 = iwVar2.iw;
        }
    }

    private int d(int i) {
        int binarySearch = Arrays.binarySearch(this.ia, 0, this.mn.length, i + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    private p s() {
        return new p(p());
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public String d() {
        return s().d();
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public byte dq(int i) {
        o.dq(this.ia[this.mn.length - 1], i, 1L);
        int d2 = d(i);
        int i2 = d2 == 0 ? 0 : this.ia[d2 - 1];
        int[] iArr = this.ia;
        byte[][] bArr = this.mn;
        return bArr[d2][(i - i2) + iArr[bArr.length + d2]];
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public p dq(int i, int i2) {
        return s().dq(i, i2);
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public String dq() {
        return s().dq();
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public boolean dq(int i, p pVar, int i2, int i3) {
        if (i < 0 || i > ox() - i3) {
            return false;
        }
        int d2 = d(i);
        while (i3 > 0) {
            int i4 = d2 == 0 ? 0 : this.ia[d2 - 1];
            int min = Math.min(i3, ((this.ia[d2] - i4) + i4) - i);
            int[] iArr = this.ia;
            byte[][] bArr = this.mn;
            if (!pVar.dq(i2, bArr[d2], (i - i4) + iArr[bArr.length + d2], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            d2++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public boolean dq(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > ox() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int d2 = d(i);
        while (i3 > 0) {
            int i4 = d2 == 0 ? 0 : this.ia[d2 - 1];
            int min = Math.min(i3, ((this.ia[d2] - i4) + i4) - i);
            int[] iArr = this.ia;
            byte[][] bArr2 = this.mn;
            if (!o.dq(bArr2[d2], (i - i4) + iArr[bArr2.length + d2], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            d2++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p) {
            p pVar = (p) obj;
            if (pVar.ox() == ox() && dq(0, pVar, 0, ox())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public int hashCode() {
        int i = this.s;
        if (i != 0) {
            return i;
        }
        int length = this.mn.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.mn[i2];
            int[] iArr = this.ia;
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
        this.s = i4;
        return i4;
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public int ox() {
        return this.ia[this.mn.length - 1];
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public byte[] p() {
        int[] iArr = this.ia;
        byte[][] bArr = this.mn;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.ia;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.mn[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // com.bytedance.sdk.component.d.dq.d.p
    public String toString() {
        return s().toString();
    }
}
