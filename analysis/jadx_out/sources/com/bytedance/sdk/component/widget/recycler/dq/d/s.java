package com.bytedance.sdk.component.widget.recycler.dq.d;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class s<K, V> {

    /* renamed from: d, reason: collision with root package name */
    static int f2269d;
    static Object[] dq;
    static Object[] ox;
    static int p;
    int[] s = d.dq;
    Object[] iw = d.ox;
    int mn = 0;

    private static int dq(int[] iArr, int i, int i2) {
        try {
            return d.dq(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void dq(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (dq.class) {
                try {
                    if (p < 10) {
                        objArr[0] = ox;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        ox = objArr;
                        p++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (dq.class) {
                try {
                    if (f2269d < 10) {
                        objArr[0] = dq;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        dq = objArr;
                        f2269d++;
                    }
                } finally {
                }
            }
        }
    }

    private void p(int i) {
        if (i == 8) {
            synchronized (dq.class) {
                try {
                    Object[] objArr = ox;
                    if (objArr != null) {
                        this.iw = objArr;
                        ox = (Object[]) objArr[0];
                        this.s = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        p--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (dq.class) {
                try {
                    Object[] objArr2 = dq;
                    if (objArr2 != null) {
                        this.iw = objArr2;
                        dq = (Object[]) objArr2[0];
                        this.s = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f2269d--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.s = new int[i];
        this.iw = new Object[i << 1];
    }

    public void clear() {
        int i = this.mn;
        if (i > 0) {
            int[] iArr = this.s;
            Object[] objArr = this.iw;
            this.s = d.dq;
            this.iw = d.ox;
            this.mn = 0;
            dq(iArr, objArr, i);
        }
        if (this.mn > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return dq(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return d(obj) >= 0;
    }

    public int d(Object obj) {
        int i = this.mn * 2;
        Object[] objArr = this.iw;
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

    public V d(int i) {
        return (V) this.iw[(i << 1) + 1];
    }

    public int dq() {
        int i = this.mn;
        if (i == 0) {
            return -1;
        }
        int dq2 = dq(this.s, i, 0);
        if (dq2 < 0 || this.iw[dq2 << 1] == null) {
            return dq2;
        }
        int i2 = dq2 + 1;
        while (i2 < i && this.s[i2] == 0) {
            if (this.iw[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = dq2 - 1; i3 >= 0 && this.s[i3] == 0; i3--) {
            if (this.iw[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public int dq(Object obj) {
        return obj == null ? dq() : dq(obj, obj.hashCode());
    }

    public int dq(Object obj, int i) {
        int i2 = this.mn;
        if (i2 == 0) {
            return -1;
        }
        int dq2 = dq(this.s, i2, i);
        if (dq2 < 0 || obj.equals(this.iw[dq2 << 1])) {
            return dq2;
        }
        int i3 = dq2 + 1;
        while (i3 < i2 && this.s[i3] == i) {
            if (obj.equals(this.iw[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = dq2 - 1; i4 >= 0 && this.s[i4] == i; i4--) {
            if (obj.equals(this.iw[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    public K dq(int i) {
        return (K) this.iw[i << 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof s) {
            s sVar = (s) obj;
            if (size() != sVar.size()) {
                return false;
            }
            for (int i = 0; i < this.mn; i++) {
                try {
                    K dq2 = dq(i);
                    V d2 = d(i);
                    Object obj2 = sVar.get(dq2);
                    if (d2 == null) {
                        if (obj2 != null || !sVar.containsKey(dq2)) {
                            return false;
                        }
                    } else if (!d2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.mn; i2++) {
            try {
                K dq3 = dq(i2);
                V d3 = d(i2);
                Object obj3 = map.get(dq3);
                if (d3 == null) {
                    if (obj3 != null || !map.containsKey(dq3)) {
                        return false;
                    }
                } else if (!d3.equals(obj3)) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused2) {
                return false;
            }
        }
        return true;
    }

    public V get(Object obj) {
        int dq2 = dq(obj);
        if (dq2 >= 0) {
            return (V) this.iw[(dq2 << 1) + 1];
        }
        return null;
    }

    public int hashCode() {
        int[] iArr = this.s;
        Object[] objArr = this.iw;
        int i = this.mn;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.mn <= 0;
    }

    public V ox(int i) {
        Object[] objArr = this.iw;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.mn;
        int i4 = 0;
        if (i3 <= 1) {
            dq(this.s, objArr, i3);
            this.s = d.dq;
            this.iw = d.ox;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.s;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr, i6, iArr, i, i7);
                    Object[] objArr2 = this.iw;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                Object[] objArr3 = this.iw;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                p(i3 > 8 ? i3 + (i3 >> 1) : 8);
                if (i3 != this.mn) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.s, 0, i);
                    System.arraycopy(objArr, 0, this.iw, 0, i2);
                }
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr, i9, this.s, i, i10);
                    System.arraycopy(objArr, i9 << 1, this.iw, i2, i10 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 != this.mn) {
            throw new ConcurrentModificationException();
        }
        this.mn = i4;
        return v;
    }

    public V put(K k, V v) {
        int i;
        int dq2;
        int i2 = this.mn;
        if (k == null) {
            dq2 = dq();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            dq2 = dq(k, hashCode);
        }
        if (dq2 >= 0) {
            int i3 = (dq2 << 1) + 1;
            Object[] objArr = this.iw;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = ~dq2;
        int[] iArr = this.s;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            Object[] objArr2 = this.iw;
            p(i5);
            if (i2 != this.mn) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.s;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.iw, 0, objArr2.length);
            }
            dq(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.s;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.iw;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.mn - i4) << 1);
        }
        int i7 = this.mn;
        if (i2 == i7) {
            int[] iArr4 = this.s;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.iw;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.mn = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V remove(Object obj) {
        int dq2 = dq(obj);
        if (dq2 >= 0) {
            return ox(dq2);
        }
        return null;
    }

    public int size() {
        return this.mn;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mn * 28);
        sb.append('{');
        for (int i = 0; i < this.mn; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K dq2 = dq(i);
            if (dq2 != this) {
                sb.append(dq2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V d2 = d(i);
            if (d2 != this) {
                sb.append(d2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
