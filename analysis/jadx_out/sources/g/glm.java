package g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class glm implements Collection, Set {

    /* renamed from: a, reason: collision with root package name */
    public int f18350a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f18351b = erl.r;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f18352c = erl.t;

    public glm(int i) {
        if (i > 0) {
            bff.aq(this, i);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int al;
        int i2 = this.f18350a;
        if (obj == null) {
            al = bff.al(this, null, 0);
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            al = bff.al(this, obj, hashCode);
        }
        if (al >= 0) {
            return false;
        }
        int i3 = ~al;
        int[] iArr = this.f18351b;
        if (i2 >= iArr.length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.f18352c;
            int[] iArr2 = new int[i4];
            this.f18351b = iArr2;
            this.f18352c = new Object[i4];
            if (i2 != this.f18350a) {
                throw new ConcurrentModificationException();
            }
            if (iArr2.length != 0) {
                fuv.c(0, 0, iArr.length, iArr, iArr2);
                fuv.bi(0, objArr.length, 6, objArr, this.f18352c);
            }
        }
        if (i3 < i2) {
            int[] iArr3 = this.f18351b;
            int i5 = i3 + 1;
            fuv.c(i5, i3, i2, iArr3, iArr3);
            Object[] objArr2 = this.f18352c;
            fuv.bd(i5, i3, i2, objArr2, objArr2);
        }
        int i6 = this.f18350a;
        if (i2 == i6) {
            int[] iArr4 = this.f18351b;
            if (i3 < iArr4.length) {
                iArr4[i3] = i;
                this.f18352c[i3] = obj;
                this.f18350a = i6 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        bff.p(collection, "elements");
        int size = collection.size() + this.f18350a;
        int i = this.f18350a;
        int[] iArr = this.f18351b;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f18352c;
            int[] iArr2 = new int[size];
            this.f18351b = iArr2;
            this.f18352c = new Object[size];
            if (i > 0) {
                fuv.c(0, 0, i, iArr, iArr2);
                fuv.bi(0, this.f18350a, 6, objArr, this.f18352c);
            }
        }
        if (this.f18350a != i) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f18350a != 0) {
            this.f18351b = erl.r;
            this.f18352c = erl.t;
            this.f18350a = 0;
        }
        if (this.f18350a != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? bff.al(this, null, 0) : bff.al(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        bff.p(collection, "elements");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Object d(int i) {
        int i2 = this.f18350a;
        Object[] objArr = this.f18352c;
        Object obj = objArr[i];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i3 = i2 - 1;
        int[] iArr = this.f18351b;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            if (i < i3) {
                int i4 = i + 1;
                fuv.c(i, i4, i2, iArr, iArr);
                Object[] objArr2 = this.f18352c;
                fuv.bd(i, i4, i2, objArr2, objArr2);
            }
            this.f18352c[i3] = null;
        } else {
            int i5 = i2 > 8 ? i2 + (i2 >> 1) : 8;
            int[] iArr2 = new int[i5];
            this.f18351b = iArr2;
            this.f18352c = new Object[i5];
            if (i > 0) {
                fuv.c(0, 0, i, iArr, iArr2);
                fuv.bi(0, i, 6, objArr, this.f18352c);
            }
            if (i < i3) {
                int i6 = i + 1;
                fuv.c(i, i6, i2, iArr, this.f18351b);
                fuv.bd(i, i6, i2, objArr, this.f18352c);
            }
        }
        if (i2 != this.f18350a) {
            throw new ConcurrentModificationException();
        }
        this.f18350a = i3;
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.f18350a != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = this.f18350a;
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(this.f18352c[i2])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f18351b;
        int i = this.f18350a;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f18350a <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new hx(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int al = obj == null ? bff.al(this, null, 0) : bff.al(this, obj, obj.hashCode());
        if (al < 0) {
            return false;
        }
        d(al);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        bff.p(collection, "elements");
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        bff.p(collection, "elements");
        boolean z = false;
        for (int i = this.f18350a - 1; -1 < i; i--) {
            if (!collection.contains(this.f18352c[i])) {
                d(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f18350a;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return fuv.bh(0, this.f18350a, this.f18352c);
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        bff.p(objArr, "array");
        int i = this.f18350a;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        } else if (objArr.length > i) {
            objArr[i] = null;
        }
        fuv.bd(0, 0, this.f18350a, this.f18352c, objArr);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f18350a * 14);
        sb.append('{');
        int i = this.f18350a;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.f18352c[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        bff.e(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }
}
