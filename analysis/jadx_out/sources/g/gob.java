package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class gob implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object[] f18482a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ int f18483b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ boolean f18484c;

    /* renamed from: d, reason: collision with root package name */
    public /* synthetic */ int[] f18485d;

    public gob() {
        int i;
        int i2 = 4;
        while (true) {
            i = 40;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (40 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 4;
        this.f18485d = new int[i4];
        this.f18482a = new Object[i4];
    }

    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final gob clone() {
        Object clone = super.clone();
        bff.ag(clone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        gob gobVar = (gob) clone;
        gobVar.f18485d = (int[]) this.f18485d.clone();
        gobVar.f18482a = (Object[]) this.f18482a.clone();
        return gobVar;
    }

    public final Object f(int i) {
        Object obj;
        int w = erl.w(this.f18483b, i, this.f18485d);
        if (w < 0 || (obj = this.f18482a[w]) == bfc.f11438c) {
            return null;
        }
        return obj;
    }

    public final void g(int i, Object obj) {
        int i2 = this.f18483b;
        if (i2 != 0 && i <= this.f18485d[i2 - 1]) {
            h(i, obj);
            return;
        }
        if (this.f18484c && i2 >= this.f18485d.length) {
            bfc.p(this);
        }
        int i3 = this.f18483b;
        if (i3 >= this.f18485d.length) {
            int i4 = (i3 + 1) * 4;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 4;
            int[] copyOf = Arrays.copyOf(this.f18485d, i7);
            bff.e(copyOf, "copyOf(this, newSize)");
            this.f18485d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f18482a, i7);
            bff.e(copyOf2, "copyOf(this, newSize)");
            this.f18482a = copyOf2;
        }
        this.f18485d[i3] = i;
        this.f18482a[i3] = obj;
        this.f18483b = i3 + 1;
    }

    public final void h(int i, Object obj) {
        int w = erl.w(this.f18483b, i, this.f18485d);
        if (w >= 0) {
            this.f18482a[w] = obj;
            return;
        }
        int i2 = ~w;
        int i3 = this.f18483b;
        if (i2 < i3) {
            Object[] objArr = this.f18482a;
            if (objArr[i2] == bfc.f11438c) {
                this.f18485d[i2] = i;
                objArr[i2] = obj;
                return;
            }
        }
        if (this.f18484c && i3 >= this.f18485d.length) {
            bfc.p(this);
            i2 = ~erl.w(this.f18483b, i, this.f18485d);
        }
        int i4 = this.f18483b;
        if (i4 >= this.f18485d.length) {
            int i5 = (i4 + 1) * 4;
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
            int i8 = i5 / 4;
            int[] copyOf = Arrays.copyOf(this.f18485d, i8);
            bff.e(copyOf, "copyOf(this, newSize)");
            this.f18485d = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f18482a, i8);
            bff.e(copyOf2, "copyOf(this, newSize)");
            this.f18482a = copyOf2;
        }
        int i9 = this.f18483b;
        if (i9 - i2 != 0) {
            int[] iArr = this.f18485d;
            int i10 = i2 + 1;
            fuv.c(i10, i2, i9, iArr, iArr);
            Object[] objArr2 = this.f18482a;
            fuv.bd(i10, i2, this.f18483b, objArr2, objArr2);
        }
        this.f18485d[i2] = i;
        this.f18482a[i2] = obj;
        this.f18483b++;
    }

    public final Object i(int i) {
        if (this.f18484c) {
            bfc.p(this);
        }
        return this.f18482a[i];
    }

    public final int j() {
        if (this.f18484c) {
            bfc.p(this);
        }
        return this.f18483b;
    }

    public final String toString() {
        if (j() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f18483b * 28);
        sb.append('{');
        int i = this.f18483b;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            if (this.f18484c) {
                bfc.p(this);
            }
            sb.append(this.f18485d[i2]);
            sb.append('=');
            Object i3 = i(i2);
            if (i3 != this) {
                sb.append(i3);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        bff.e(sb2, "buffer.toString()");
        return sb2;
    }
}
