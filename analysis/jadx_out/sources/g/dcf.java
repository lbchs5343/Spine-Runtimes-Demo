package g;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class dcf extends ddt implements RandomAccess, Serializable {
    private Object[] backing;
    private int length;
    private final int offset;
    private final dcf parent;
    private final fsq root;

    public dcf(Object[] objArr, int i, int i2, dcf dcfVar, fsq fsqVar) {
        int i3;
        bff.p(objArr, "backing");
        bff.p(fsqVar, "root");
        this.backing = objArr;
        this.offset = i;
        this.length = i2;
        this.parent = dcfVar;
        this.root = fsqVar;
        i3 = ((AbstractList) fsqVar).modCount;
        ((AbstractList) this).modCount = i3;
    }

    private final Object writeReplace() {
        boolean z;
        z = this.root.isReadOnly;
        if (z) {
            return new diw(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        i();
        f();
        int i2 = this.length;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        n(this.offset + i, obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i();
        f();
        n(this.offset + this.length, obj);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        bff.p(collection, "elements");
        i();
        f();
        int i2 = this.length;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        int size = collection.size();
        l(this.offset + i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        bff.p(collection, "elements");
        i();
        f();
        int size = collection.size();
        l(this.offset + this.length, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        i();
        f();
        h(this.offset, this.length);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        f();
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.backing;
            int i = this.offset;
            int i2 = this.length;
            if (i2 == list.size()) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (bff.n(objArr[i + i3], list.get(i3))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f() {
        int i;
        i = ((AbstractList) this.root).modCount;
        if (i != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    public final int g(int i, int i2, Collection collection, boolean z) {
        int h;
        dcf dcfVar = this.parent;
        if (dcfVar != null) {
            h = dcfVar.g(i, i2, collection, z);
        } else {
            fsq fsqVar = this.root;
            fsq fsqVar2 = fsq.f17344a;
            h = fsqVar.h(i, i2, collection, z);
        }
        if (h > 0) {
            ((AbstractList) this).modCount++;
        }
        this.length -= h;
        return h;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        f();
        int i2 = this.length;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        return this.backing[this.offset + i];
    }

    public final void h(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        dcf dcfVar = this.parent;
        if (dcfVar != null) {
            dcfVar.h(i, i2);
        } else {
            fsq fsqVar = this.root;
            fsq fsqVar2 = fsq.f17344a;
            fsqVar.i(i, i2);
        }
        this.length -= i2;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        f();
        Object[] objArr = this.backing;
        int i = this.offset;
        int i2 = this.length;
        int i3 = 1;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i + i4];
            i3 = (i3 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i3;
    }

    public final void i() {
        boolean z;
        z = this.root.isReadOnly;
        if (z) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        f();
        for (int i = 0; i < this.length; i++) {
            if (bff.n(this.backing[this.offset + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        f();
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // g.ddt
    public final int j() {
        f();
        return this.length;
    }

    public final Object k(int i) {
        Object l;
        ((AbstractList) this).modCount++;
        dcf dcfVar = this.parent;
        if (dcfVar != null) {
            l = dcfVar.k(i);
        } else {
            fsq fsqVar = this.root;
            fsq fsqVar2 = fsq.f17344a;
            l = fsqVar.l(i);
        }
        this.length--;
        return l;
    }

    public final void l(int i, Collection collection, int i2) {
        Object[] objArr;
        ((AbstractList) this).modCount++;
        dcf dcfVar = this.parent;
        if (dcfVar != null) {
            dcfVar.l(i, collection, i2);
        } else {
            fsq fsqVar = this.root;
            fsq fsqVar2 = fsq.f17344a;
            fsqVar.f(i, collection, i2);
        }
        objArr = this.root.backing;
        this.backing = objArr;
        this.length += i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        f();
        for (int i = this.length - 1; i >= 0; i--) {
            if (bff.n(this.backing[this.offset + i], obj)) {
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
        f();
        int i2 = this.length;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        return new aqx(this, i);
    }

    @Override // g.ddt
    public final Object m(int i) {
        i();
        f();
        int i2 = this.length;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        return k(this.offset + i);
    }

    public final void n(int i, Object obj) {
        Object[] objArr;
        ((AbstractList) this).modCount++;
        dcf dcfVar = this.parent;
        if (dcfVar != null) {
            dcfVar.n(i, obj);
        } else {
            fsq fsqVar = this.root;
            fsq fsqVar2 = fsq.f17344a;
            fsqVar.n(i, obj);
        }
        objArr = this.root.backing;
        this.backing = objArr;
        this.length++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        i();
        f();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        bff.p(collection, "elements");
        i();
        f();
        return g(this.offset, this.length, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        bff.p(collection, "elements");
        i();
        f();
        return g(this.offset, this.length, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        i();
        f();
        int i2 = this.length;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        Object[] objArr = this.backing;
        int i3 = this.offset;
        Object obj2 = objArr[i3 + i];
        objArr[i3 + i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        ffb.p(i, i2, this.length);
        return new dcf(this.backing, this.offset + i, i2 - i, this, this.root);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        f();
        Object[] objArr = this.backing;
        int i = this.offset;
        return fuv.bh(i, this.length + i, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        bff.p(objArr, "array");
        f();
        int length = objArr.length;
        int i = this.length;
        if (length < i) {
            Object[] objArr2 = this.backing;
            int i2 = this.offset;
            Object[] copyOfRange = Arrays.copyOfRange(objArr2, i2, i + i2, objArr.getClass());
            bff.e(copyOfRange, "copyOfRange(...)");
            return copyOfRange;
        }
        Object[] objArr3 = this.backing;
        int i3 = this.offset;
        fuv.bd(0, i3, i + i3, objArr3, objArr);
        int i4 = this.length;
        if (i4 < objArr.length) {
            objArr[i4] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        f();
        return bff.ah(this.backing, this.offset, this.length, this);
    }
}
