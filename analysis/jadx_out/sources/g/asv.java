package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class asv implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object[] f10773a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ int f10774b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ boolean f10775c;

    /* renamed from: d, reason: collision with root package name */
    public /* synthetic */ long[] f10776d;

    public asv() {
        int i;
        int i2 = 4;
        while (true) {
            i = 80;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (80 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 8;
        this.f10776d = new long[i4];
        this.f10773a = new Object[i4];
    }

    public final void e() {
        int i = this.f10774b;
        Object[] objArr = this.f10773a;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f10774b = 0;
        this.f10775c = false;
    }

    public final int f() {
        if (this.f10775c) {
            int i = this.f10774b;
            long[] jArr = this.f10776d;
            Object[] objArr = this.f10773a;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != dyd.r) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.f10775c = false;
            this.f10774b = i2;
        }
        return this.f10774b;
    }

    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final asv clone() {
        Object clone = super.clone();
        bff.ag(clone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        asv asvVar = (asv) clone;
        asvVar.f10776d = (long[]) this.f10776d.clone();
        asvVar.f10773a = (Object[]) this.f10773a.clone();
        return asvVar;
    }

    public final void h(long j, Long l) {
        int i = this.f10774b;
        if (i != 0 && j <= this.f10776d[i - 1]) {
            l(j, l);
            return;
        }
        if (this.f10775c) {
            long[] jArr = this.f10776d;
            if (i >= jArr.length) {
                Object[] objArr = this.f10773a;
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    Object obj = objArr[i3];
                    if (obj != dyd.r) {
                        if (i3 != i2) {
                            jArr[i2] = jArr[i3];
                            objArr[i2] = obj;
                            objArr[i3] = null;
                        }
                        i2++;
                    }
                }
                this.f10775c = false;
                this.f10774b = i2;
            }
        }
        int i4 = this.f10774b;
        if (i4 >= this.f10776d.length) {
            int i5 = (i4 + 1) * 8;
            int i6 = 4;
            while (true) {
                if (i6 >= 32) {
                    break;
                }
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
                i6++;
            }
            int i8 = i5 / 8;
            long[] copyOf = Arrays.copyOf(this.f10776d, i8);
            bff.e(copyOf, "copyOf(this, newSize)");
            this.f10776d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f10773a, i8);
            bff.e(copyOf2, "copyOf(this, newSize)");
            this.f10773a = copyOf2;
        }
        this.f10776d[i4] = j;
        this.f10773a[i4] = l;
        this.f10774b = i4 + 1;
    }

    public final Object i(long j) {
        Object obj;
        int as = erl.as(this.f10776d, this.f10774b, j);
        if (as < 0 || (obj = this.f10773a[as]) == dyd.r) {
            return null;
        }
        return obj;
    }

    public final Object j(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f10774b)) {
            throw new IllegalArgumentException(awf.ac(i, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.f10775c) {
            long[] jArr = this.f10776d;
            Object[] objArr = this.f10773a;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != dyd.r) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.f10775c = false;
            this.f10774b = i3;
        }
        return this.f10773a[i];
    }

    public final long k(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f10774b)) {
            throw new IllegalArgumentException(awf.ac(i, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.f10775c) {
            long[] jArr = this.f10776d;
            Object[] objArr = this.f10773a;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != dyd.r) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.f10775c = false;
            this.f10774b = i3;
        }
        return this.f10776d[i];
    }

    public final void l(long j, Object obj) {
        Object obj2 = dyd.r;
        int as = erl.as(this.f10776d, this.f10774b, j);
        if (as >= 0) {
            this.f10773a[as] = obj;
            return;
        }
        int i = ~as;
        int i2 = this.f10774b;
        if (i < i2) {
            Object[] objArr = this.f10773a;
            if (objArr[i] == obj2) {
                this.f10776d[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.f10775c) {
            long[] jArr = this.f10776d;
            if (i2 >= jArr.length) {
                Object[] objArr2 = this.f10773a;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj3 = objArr2[i4];
                    if (obj3 != obj2) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr2[i3] = obj3;
                            objArr2[i4] = null;
                        }
                        i3++;
                    }
                }
                this.f10775c = false;
                this.f10774b = i3;
                i = ~erl.as(this.f10776d, i3, j);
            }
        }
        int i5 = this.f10774b;
        if (i5 >= this.f10776d.length) {
            int i6 = (i5 + 1) * 8;
            int i7 = 4;
            while (true) {
                if (i7 >= 32) {
                    break;
                }
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
                i7++;
            }
            int i9 = i6 / 8;
            long[] copyOf = Arrays.copyOf(this.f10776d, i9);
            bff.e(copyOf, "copyOf(this, newSize)");
            this.f10776d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f10773a, i9);
            bff.e(copyOf2, "copyOf(this, newSize)");
            this.f10773a = copyOf2;
        }
        int i10 = this.f10774b - i;
        if (i10 != 0) {
            long[] jArr2 = this.f10776d;
            int i11 = i + 1;
            bff.p(jArr2, "<this>");
            System.arraycopy(jArr2, i, jArr2, i11, i10);
            Object[] objArr3 = this.f10773a;
            fuv.bd(i11, i, this.f10774b, objArr3, objArr3);
        }
        this.f10776d[i] = j;
        this.f10773a[i] = obj;
        this.f10774b++;
    }

    public final Object m(long j) {
        Object obj;
        int as = erl.as(this.f10776d, this.f10774b, j);
        if (as < 0 || (obj = this.f10773a[as]) == dyd.r) {
            return -1L;
        }
        return obj;
    }

    public final String toString() {
        if (f() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f10774b * 28);
        sb.append('{');
        int i = this.f10774b;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(k(i2));
            sb.append('=');
            Object j = j(i2);
            if (j != sb) {
                sb.append(j);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        bff.e(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }
}
