package g;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class bcp {

    /* renamed from: g, reason: collision with root package name */
    public int f11294g;
    public int[] h;
    public Object[] i;

    public bcp(int i) {
        this.h = i == 0 ? erl.r : new int[i];
        this.i = i == 0 ? erl.t : new Object[i << 1];
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public bcp(bcp bcpVar) {
        this(0);
        int i = bcpVar.f11294g;
        p(this.f11294g + i);
        if (this.f11294g != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(bcpVar.n(i2), bcpVar.o(i2));
            }
        } else if (i > 0) {
            fuv.c(0, 0, i, bcpVar.h, this.h);
            fuv.bd(0, 0, i << 1, bcpVar.i, this.i);
            this.f11294g = i;
        }
    }

    public final void clear() {
        if (this.f11294g > 0) {
            this.h = erl.r;
            this.i = erl.t;
            this.f11294g = 0;
        }
        if (this.f11294g > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return k(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m(obj) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof bcp) {
                int i = this.f11294g;
                if (i != ((bcp) obj).f11294g) {
                    return false;
                }
                bcp bcpVar = (bcp) obj;
                for (int i2 = 0; i2 < i; i2++) {
                    Object n = n(i2);
                    Object o = o(i2);
                    Object obj2 = bcpVar.get(n);
                    if (o == null) {
                        if (obj2 != null || !bcpVar.containsKey(n)) {
                            return false;
                        }
                    } else if (!o.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.f11294g != ((Map) obj).size()) {
                return false;
            }
            int i3 = this.f11294g;
            for (int i4 = 0; i4 < i3; i4++) {
                Object n2 = n(i4);
                Object o2 = o(i4);
                Object obj3 = ((Map) obj).get(n2);
                if (o2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(n2)) {
                        return false;
                    }
                } else if (!o2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public Object get(Object obj) {
        int k = k(obj);
        if (k >= 0) {
            return this.i[(k << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int k = k(obj);
        return k >= 0 ? this.i[(k << 1) + 1] : obj2;
    }

    public final int hashCode() {
        int[] iArr = this.h;
        Object[] objArr = this.i;
        int i = this.f11294g;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj != null ? obj.hashCode() : 0) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public final boolean isEmpty() {
        return this.f11294g <= 0;
    }

    public final Object j(int i, Object obj) {
        if (i < 0 || i >= this.f11294g) {
            throw new IllegalArgumentException(awf.ac(i, "Expected index to be within 0..size()-1, but was ").toString());
        }
        int i2 = (i << 1) + 1;
        Object[] objArr = this.i;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    public final int k(Object obj) {
        return obj == null ? l() : q(obj.hashCode(), obj);
    }

    public final int l() {
        int i = this.f11294g;
        if (i == 0) {
            return -1;
        }
        int w = erl.w(i, 0, this.h);
        if (w < 0 || this.i[w << 1] == null) {
            return w;
        }
        int i2 = w + 1;
        while (i2 < i && this.h[i2] == 0) {
            if (this.i[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = w - 1; i3 >= 0 && this.h[i3] == 0; i3--) {
            if (this.i[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public final int m(Object obj) {
        int i = this.f11294g * 2;
        Object[] objArr = this.i;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final Object n(int i) {
        if (i < 0 || i >= this.f11294g) {
            throw new IllegalArgumentException(awf.ac(i, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.i[i << 1];
    }

    public final Object o(int i) {
        if (i < 0 || i >= this.f11294g) {
            throw new IllegalArgumentException(awf.ac(i, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.i[(i << 1) + 1];
    }

    public final void p(int i) {
        int i2 = this.f11294g;
        int[] iArr = this.h;
        if (iArr.length < i) {
            int[] copyOf = Arrays.copyOf(iArr, i);
            bff.e(copyOf, "copyOf(this, newSize)");
            this.h = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.i, i * 2);
            bff.e(copyOf2, "copyOf(this, newSize)");
            this.i = copyOf2;
        }
        if (this.f11294g != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public final Object put(Object obj, Object obj2) {
        int i = this.f11294g;
        int hashCode = obj != null ? obj.hashCode() : 0;
        int q = obj != null ? q(hashCode, obj) : l();
        if (q >= 0) {
            int i2 = (q << 1) + 1;
            Object[] objArr = this.i;
            Object obj3 = objArr[i2];
            objArr[i2] = obj2;
            return obj3;
        }
        int i3 = ~q;
        int[] iArr = this.h;
        if (i >= iArr.length) {
            int i4 = 8;
            if (i >= 8) {
                i4 = (i >> 1) + i;
            } else if (i < 4) {
                i4 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i4);
            bff.e(copyOf, "copyOf(this, newSize)");
            this.h = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.i, i4 << 1);
            bff.e(copyOf2, "copyOf(this, newSize)");
            this.i = copyOf2;
            if (i != this.f11294g) {
                throw new ConcurrentModificationException();
            }
        }
        if (i3 < i) {
            int[] iArr2 = this.h;
            int i5 = i3 + 1;
            fuv.c(i5, i3, i, iArr2, iArr2);
            Object[] objArr2 = this.i;
            fuv.bd(i5 << 1, i3 << 1, this.f11294g << 1, objArr2, objArr2);
        }
        int i6 = this.f11294g;
        if (i == i6) {
            int[] iArr3 = this.h;
            if (i3 < iArr3.length) {
                iArr3[i3] = hashCode;
                Object[] objArr3 = this.i;
                int i7 = i3 << 1;
                objArr3[i7] = obj;
                objArr3[i7 + 1] = obj2;
                this.f11294g = i6 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public final int q(int i, Object obj) {
        int i2 = this.f11294g;
        if (i2 == 0) {
            return -1;
        }
        int w = erl.w(i2, i, this.h);
        if (w < 0 || bff.n(obj, this.i[w << 1])) {
            return w;
        }
        int i3 = w + 1;
        while (i3 < i2 && this.h[i3] == i) {
            if (bff.n(obj, this.i[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = w - 1; i4 >= 0 && this.h[i4] == i; i4--) {
            if (bff.n(obj, this.i[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    public final Object r(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f11294g)) {
            throw new IllegalArgumentException(awf.ac(i, "Expected index to be within 0..size()-1, but was ").toString());
        }
        Object[] objArr = this.i;
        int i3 = i << 1;
        Object obj = objArr[i3 + 1];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i4 = i2 - 1;
        int[] iArr = this.h;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            if (i < i4) {
                int i5 = i + 1;
                fuv.c(i, i5, i2, iArr, iArr);
                Object[] objArr2 = this.i;
                fuv.bd(i3, i5 << 1, i2 << 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.i;
            int i6 = i4 << 1;
            objArr3[i6] = null;
            objArr3[i6 + 1] = null;
        } else {
            int i7 = i2 > 8 ? i2 + (i2 >> 1) : 8;
            int[] copyOf = Arrays.copyOf(iArr, i7);
            bff.e(copyOf, "copyOf(this, newSize)");
            this.h = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.i, i7 << 1);
            bff.e(copyOf2, "copyOf(this, newSize)");
            this.i = copyOf2;
            if (i2 != this.f11294g) {
                throw new ConcurrentModificationException();
            }
            if (i > 0) {
                fuv.c(0, 0, i, iArr, this.h);
                fuv.bd(0, 0, i3, objArr, this.i);
            }
            if (i < i4) {
                int i8 = i + 1;
                fuv.c(i, i8, i2, iArr, this.h);
                fuv.bd(i3, i8 << 1, i2 << 1, objArr, this.i);
            }
        }
        if (i2 != this.f11294g) {
            throw new ConcurrentModificationException();
        }
        this.f11294g = i4;
        return obj;
    }

    public Object remove(Object obj) {
        int k = k(obj);
        if (k >= 0) {
            return r(k);
        }
        return null;
    }

    public final boolean remove(Object obj, Object obj2) {
        int k = k(obj);
        if (k < 0 || !bff.n(obj2, o(k))) {
            return false;
        }
        r(k);
        return true;
    }

    public final Object replace(Object obj, Object obj2) {
        int k = k(obj);
        if (k >= 0) {
            return j(k, obj2);
        }
        return null;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int k = k(obj);
        if (k < 0 || !bff.n(obj2, o(k))) {
            return false;
        }
        j(k, obj3);
        return true;
    }

    public final int size() {
        return this.f11294g;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f11294g * 28);
        sb.append('{');
        int i = this.f11294g;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object n = n(i2);
            if (n != sb) {
                sb.append(n);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object o = o(i2);
            if (o != sb) {
                sb.append(o);
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
