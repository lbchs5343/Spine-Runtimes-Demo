package g;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class fsq extends ddt implements RandomAccess, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final fsq f17344a;
    private Object[] backing;
    private boolean isReadOnly;
    private int length;

    static {
        fsq fsqVar = new fsq(0);
        fsqVar.isReadOnly = true;
        f17344a = fsqVar;
    }

    public fsq(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        this.backing = new Object[i];
    }

    private final Object writeReplace() {
        if (this.isReadOnly) {
            return new diw(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        g();
        int i2 = this.length;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        n(i, obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        g();
        n(this.length, obj);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        bff.p(collection, "elements");
        g();
        int i2 = this.length;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        int size = collection.size();
        f(i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        bff.p(collection, "elements");
        g();
        int size = collection.size();
        f(this.length, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        i(0, this.length);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.backing;
            int i = this.length;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (bff.n(objArr[i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        k(i, i2);
        Iterator it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.backing[i + i3] = it.next();
        }
    }

    public final void g() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2 = this.length;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        return this.backing[i];
    }

    public final int h(int i, int i2, Collection collection, boolean z) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.backing[i5]) == z) {
                Object[] objArr = this.backing;
                i3++;
                objArr[i4 + i] = objArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        Object[] objArr2 = this.backing;
        fuv.bd(i + i4, i2 + i, this.length, objArr2, objArr2);
        Object[] objArr3 = this.backing;
        int i7 = this.length;
        bff.an(i7 - i6, i7, objArr3);
        if (i6 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.length -= i6;
        return i6;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.backing;
        int i = this.length;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = (i2 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i2;
    }

    public final void i(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.backing;
        fuv.bd(i, i + i2, this.length, objArr, objArr);
        Object[] objArr2 = this.backing;
        int i3 = this.length;
        bff.an(i3 - i2, i3, objArr2);
        this.length -= i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i = 0; i < this.length; i++) {
            if (bff.n(this.backing[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // g.ddt
    public final int j() {
        return this.length;
    }

    public final void k(int i, int i2) {
        int i3 = this.length + i2;
        if (i3 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.backing;
        if (i3 > objArr.length) {
            int length = objArr.length;
            int i4 = length + (length >> 1);
            if (i4 - i3 < 0) {
                i4 = i3;
            }
            if (i4 - 2147483639 > 0) {
                i4 = i3 > 2147483639 ? he.UNDEFINED_ITEM_ID : 2147483639;
            }
            Object[] copyOf = Arrays.copyOf(objArr, i4);
            bff.e(copyOf, "copyOf(...)");
            this.backing = copyOf;
        }
        Object[] objArr2 = this.backing;
        fuv.bd(i + i2, i, this.length, objArr2, objArr2);
        this.length += i2;
    }

    public final Object l(int i) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.backing;
        Object obj = objArr[i];
        fuv.bd(i, i + 1, this.length, objArr, objArr);
        Object[] objArr2 = this.backing;
        int i2 = this.length - 1;
        bff.p(objArr2, "<this>");
        objArr2[i2] = null;
        this.length--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i = this.length - 1; i >= 0; i--) {
            if (bff.n(this.backing[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        int i2 = this.length;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        return new aqx(this, i);
    }

    @Override // g.ddt
    public final Object m(int i) {
        g();
        int i2 = this.length;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        return l(i);
    }

    public final void n(int i, Object obj) {
        ((AbstractList) this).modCount++;
        k(i, 1);
        this.backing[i] = obj;
    }

    public final fsq o() {
        g();
        this.isReadOnly = true;
        return this.length > 0 ? this : f17344a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        g();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        bff.p(collection, "elements");
        g();
        return h(0, this.length, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        bff.p(collection, "elements");
        g();
        return h(0, this.length, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        g();
        int i2 = this.length;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        Object[] objArr = this.backing;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        ffb.p(i, i2, this.length);
        return new dcf(this.backing, i, i2 - i, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return fuv.bh(0, this.length, this.backing);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        bff.p(objArr, "array");
        int length = objArr.length;
        int i = this.length;
        if (length < i) {
            Object[] copyOfRange = Arrays.copyOfRange(this.backing, 0, i, objArr.getClass());
            bff.e(copyOfRange, "copyOfRange(...)");
            return copyOfRange;
        }
        fuv.bd(0, 0, i, this.backing, objArr);
        int i2 = this.length;
        if (i2 < objArr.length) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return bff.ah(this.backing, 0, this.length, this);
    }
}
