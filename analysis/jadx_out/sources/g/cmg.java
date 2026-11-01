package g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class cmg implements Collection, Set {

    /* renamed from: a, reason: collision with root package name */
    public static int f13110a;

    /* renamed from: b, reason: collision with root package name */
    public static Object[] f13111b;

    /* renamed from: c, reason: collision with root package name */
    public static int f13112c;

    /* renamed from: e, reason: collision with root package name */
    public static Object[] f13114e;

    /* renamed from: g, reason: collision with root package name */
    public int f13116g;
    public akj h;
    public int[] i;
    public Object[] j;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f13113d = new int[0];

    /* renamed from: f, reason: collision with root package name */
    public static final Object[] f13115f = new Object[0];

    public static void k(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (cmg.class) {
                try {
                    if (f13112c < 10) {
                        objArr[0] = f13114e;
                        objArr[1] = iArr;
                        for (int i2 = i - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f13114e = objArr;
                        f13112c++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (cmg.class) {
                try {
                    if (f13110a < 10) {
                        objArr[0] = f13111b;
                        objArr[1] = iArr;
                        for (int i3 = i - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f13111b = objArr;
                        f13110a++;
                    }
                } finally {
                }
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int o;
        if (obj == null) {
            o = l();
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            o = o(obj, hashCode);
        }
        if (o >= 0) {
            return false;
        }
        int i2 = ~o;
        int i3 = this.f13116g;
        int[] iArr = this.i;
        if (i3 >= iArr.length) {
            int i4 = 8;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.j;
            p(i4);
            int[] iArr2 = this.i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.j, 0, objArr.length);
            }
            k(iArr, objArr, this.f13116g);
        }
        int i5 = this.f13116g;
        if (i2 < i5) {
            int[] iArr3 = this.i;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.j;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f13116g - i2);
        }
        this.i[i2] = i;
        this.j[i2] = obj;
        this.f13116g++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        int size = collection.size() + this.f13116g;
        int[] iArr = this.i;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.j;
            p(size);
            int i = this.f13116g;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.i, 0, i);
                System.arraycopy(objArr, 0, this.j, 0, this.f13116g);
            }
            k(iArr, objArr, this.f13116g);
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.f13116g;
        if (i != 0) {
            k(this.i, this.j, i);
            this.i = f13113d;
            this.j = f13115f;
            this.f13116g = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return n(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.f13116g != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f13116g; i++) {
                try {
                    if (!set.contains(this.j[i])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.i;
        int i = this.f13116g;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f13116g <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        if (this.h == null) {
            this.h = new akj(this);
        }
        akj akjVar = this.h;
        if (((bxl) akjVar.h) == null) {
            akjVar.h = new bxl(1, akjVar);
        }
        return ((bxl) akjVar.h).iterator();
    }

    public final int l() {
        int i;
        int i2 = this.f13116g;
        if (i2 == 0) {
            return -1;
        }
        int[] iArr = this.i;
        int i3 = i2 - 1;
        int i4 = 0;
        while (true) {
            if (i4 > i3) {
                i = ~i4;
                break;
            }
            i = (i4 + i3) >>> 1;
            int i5 = iArr[i];
            if (i5 >= 0) {
                if (i5 <= 0) {
                    break;
                }
                i3 = i - 1;
            } else {
                i4 = i + 1;
            }
        }
        if (i < 0 || this.j[i] == null) {
            return i;
        }
        int i6 = i + 1;
        while (i6 < i2 && this.i[i6] == 0) {
            if (this.j[i6] == null) {
                return i6;
            }
            i6++;
        }
        for (int i7 = i - 1; i7 >= 0 && this.i[i7] == 0; i7--) {
            if (this.j[i7] == null) {
                return i7;
            }
        }
        return ~i6;
    }

    public final void m(int i) {
        Object[] objArr = this.j;
        Object obj = objArr[i];
        int i2 = this.f13116g;
        if (i2 <= 1) {
            k(this.i, objArr, i2);
            this.i = f13113d;
            this.j = f13115f;
            this.f13116g = 0;
            return;
        }
        int[] iArr = this.i;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            int i3 = i2 - 1;
            this.f13116g = i3;
            if (i < i3) {
                int i4 = i + 1;
                System.arraycopy(iArr, i4, iArr, i, i3 - i);
                Object[] objArr2 = this.j;
                System.arraycopy(objArr2, i4, objArr2, i, this.f13116g - i);
            }
            this.j[this.f13116g] = null;
            return;
        }
        p(i2 > 8 ? i2 + (i2 >> 1) : 8);
        this.f13116g--;
        if (i > 0) {
            System.arraycopy(iArr, 0, this.i, 0, i);
            System.arraycopy(objArr, 0, this.j, 0, i);
        }
        int i5 = this.f13116g;
        if (i < i5) {
            int i6 = i + 1;
            System.arraycopy(iArr, i6, this.i, i, i5 - i);
            System.arraycopy(objArr, i6, this.j, i, this.f13116g - i);
        }
    }

    public final int n(Object obj) {
        return obj == null ? l() : o(obj, obj.hashCode());
    }

    public final int o(Object obj, int i) {
        int i2;
        int i3 = this.f13116g;
        if (i3 == 0) {
            return -1;
        }
        int[] iArr = this.i;
        int i4 = i3 - 1;
        int i5 = 0;
        while (true) {
            if (i5 > i4) {
                i2 = ~i5;
                break;
            }
            i2 = (i5 + i4) >>> 1;
            int i6 = iArr[i2];
            if (i6 >= i) {
                if (i6 <= i) {
                    break;
                }
                i4 = i2 - 1;
            } else {
                i5 = i2 + 1;
            }
        }
        if (i2 < 0 || obj.equals(this.j[i2])) {
            return i2;
        }
        int i7 = i2 + 1;
        while (i7 < i3 && this.i[i7] == i) {
            if (obj.equals(this.j[i7])) {
                return i7;
            }
            i7++;
        }
        for (int i8 = i2 - 1; i8 >= 0 && this.i[i8] == i; i8--) {
            if (obj.equals(this.j[i8])) {
                return i8;
            }
        }
        return ~i7;
    }

    public final void p(int i) {
        if (i == 8) {
            synchronized (cmg.class) {
                try {
                    Object[] objArr = f13114e;
                    if (objArr != null) {
                        this.j = objArr;
                        f13114e = (Object[]) objArr[0];
                        this.i = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f13112c--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (cmg.class) {
                try {
                    Object[] objArr2 = f13111b;
                    if (objArr2 != null) {
                        this.j = objArr2;
                        f13111b = (Object[]) objArr2[0];
                        this.i = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f13110a--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.i = new int[i];
        this.j = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int n = n(obj);
        if (n < 0) {
            return false;
        }
        m(n);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        boolean z = false;
        for (int i = this.f13116g - 1; i >= 0; i--) {
            if (!collection.contains(this.j[i])) {
                m(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f13116g;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i = this.f13116g;
        Object[] objArr = new Object[i];
        System.arraycopy(this.j, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f13116g) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f13116g);
        }
        System.arraycopy(this.j, 0, objArr, 0, this.f13116g);
        int length = objArr.length;
        int i = this.f13116g;
        if (length > i) {
            objArr[i] = null;
        }
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f13116g * 14);
        sb.append('{');
        for (int i = 0; i < this.f13116g; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.j[i];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
