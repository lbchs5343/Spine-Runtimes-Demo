package g;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class fbz extends ddt {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[] f16542a = new Object[0];

    /* renamed from: b, reason: collision with root package name */
    public int f16543b;

    /* renamed from: c, reason: collision with root package name */
    public int f16544c;

    /* renamed from: d, reason: collision with root package name */
    public Object[] f16545d = f16542a;

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int i3 = this.f16543b;
        if (i < 0 || i > i3) {
            throw new IndexOutOfBoundsException(tn.t(i, i3, "index: ", ", size: "));
        }
        if (i == i3) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        i();
        f(this.f16543b + 1);
        int h = h(this.f16544c + i);
        int i4 = this.f16543b;
        if (i < ((i4 + 1) >> 1)) {
            if (h == 0) {
                Object[] objArr = this.f16545d;
                bff.p(objArr, "<this>");
                h = objArr.length;
            }
            int i5 = h - 1;
            int i6 = this.f16544c;
            if (i6 == 0) {
                Object[] objArr2 = this.f16545d;
                bff.p(objArr2, "<this>");
                i2 = objArr2.length - 1;
            } else {
                i2 = i6 - 1;
            }
            int i7 = this.f16544c;
            if (i5 >= i7) {
                Object[] objArr3 = this.f16545d;
                objArr3[i2] = objArr3[i7];
                fuv.bd(i7, i7 + 1, i5 + 1, objArr3, objArr3);
            } else {
                Object[] objArr4 = this.f16545d;
                fuv.bd(i7 - 1, i7, objArr4.length, objArr4, objArr4);
                Object[] objArr5 = this.f16545d;
                objArr5[objArr5.length - 1] = objArr5[0];
                fuv.bd(0, 1, i5 + 1, objArr5, objArr5);
            }
            this.f16545d[i5] = obj;
            this.f16544c = i2;
        } else {
            int h2 = h(i4 + this.f16544c);
            if (h < h2) {
                Object[] objArr6 = this.f16545d;
                fuv.bd(h + 1, h, h2, objArr6, objArr6);
            } else {
                Object[] objArr7 = this.f16545d;
                fuv.bd(1, 0, h2, objArr7, objArr7);
                Object[] objArr8 = this.f16545d;
                objArr8[0] = objArr8[objArr8.length - 1];
                fuv.bd(h + 1, h, objArr8.length - 1, objArr8, objArr8);
            }
            this.f16545d[h] = obj;
        }
        this.f16543b++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        bff.p(collection, "elements");
        int i2 = this.f16543b;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i == this.f16543b) {
            return addAll(collection);
        }
        i();
        f(collection.size() + this.f16543b);
        int h = h(this.f16543b + this.f16544c);
        int h2 = h(this.f16544c + i);
        int size = collection.size();
        if (i >= ((this.f16543b + 1) >> 1)) {
            int i3 = h2 + size;
            if (h2 < h) {
                int i4 = size + h;
                Object[] objArr = this.f16545d;
                if (i4 <= objArr.length) {
                    fuv.bd(i3, h2, h, objArr, objArr);
                } else if (i3 >= objArr.length) {
                    fuv.bd(i3 - objArr.length, h2, h, objArr, objArr);
                } else {
                    int length = h - (i4 - objArr.length);
                    fuv.bd(0, length, h, objArr, objArr);
                    Object[] objArr2 = this.f16545d;
                    fuv.bd(i3, h2, length, objArr2, objArr2);
                }
            } else {
                Object[] objArr3 = this.f16545d;
                fuv.bd(size, 0, h, objArr3, objArr3);
                Object[] objArr4 = this.f16545d;
                if (i3 >= objArr4.length) {
                    fuv.bd(i3 - objArr4.length, h2, objArr4.length, objArr4, objArr4);
                } else {
                    fuv.bd(0, objArr4.length - size, objArr4.length, objArr4, objArr4);
                    Object[] objArr5 = this.f16545d;
                    fuv.bd(i3, h2, objArr5.length - size, objArr5, objArr5);
                }
            }
            k(h2, collection);
            return true;
        }
        int i5 = this.f16544c;
        int i6 = i5 - size;
        if (h2 < i5) {
            Object[] objArr6 = this.f16545d;
            fuv.bd(i6, i5, objArr6.length, objArr6, objArr6);
            if (size >= h2) {
                Object[] objArr7 = this.f16545d;
                fuv.bd(objArr7.length - size, 0, h2, objArr7, objArr7);
            } else {
                Object[] objArr8 = this.f16545d;
                fuv.bd(objArr8.length - size, 0, size, objArr8, objArr8);
                Object[] objArr9 = this.f16545d;
                fuv.bd(0, size, h2, objArr9, objArr9);
            }
        } else if (i6 >= 0) {
            Object[] objArr10 = this.f16545d;
            fuv.bd(i6, i5, h2, objArr10, objArr10);
        } else {
            Object[] objArr11 = this.f16545d;
            i6 += objArr11.length;
            int i7 = h2 - i5;
            int length2 = objArr11.length - i6;
            if (length2 >= i7) {
                fuv.bd(i6, i5, h2, objArr11, objArr11);
            } else {
                fuv.bd(i6, i5, i5 + length2, objArr11, objArr11);
                Object[] objArr12 = this.f16545d;
                fuv.bd(0, this.f16544c + length2, h2, objArr12, objArr12);
            }
        }
        this.f16544c = i6;
        k(l(h2 - size), collection);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        bff.p(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        i();
        f(collection.size() + j());
        k(h(j() + this.f16544c), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        i();
        f(this.f16543b + 1);
        int i = this.f16544c;
        if (i == 0) {
            Object[] objArr = this.f16545d;
            bff.p(objArr, "<this>");
            i = objArr.length;
        }
        int i2 = i - 1;
        this.f16544c = i2;
        this.f16545d[i2] = obj;
        this.f16543b++;
    }

    public final void addLast(Object obj) {
        i();
        f(j() + 1);
        this.f16545d[h(j() + this.f16544c)] = obj;
        this.f16543b = j() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            i();
            e(this.f16544c, h(j() + this.f16544c));
        }
        this.f16544c = 0;
        this.f16543b = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void e(int i, int i2) {
        if (i < i2) {
            fuv.be(this.f16545d, null, i, i2);
            return;
        }
        Object[] objArr = this.f16545d;
        fuv.be(objArr, null, i, objArr.length);
        fuv.be(this.f16545d, null, 0, i2);
    }

    public final void f(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f16545d;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == f16542a) {
            if (i < 10) {
                i = 10;
            }
            this.f16545d = new Object[i];
            return;
        }
        int length = objArr.length;
        int i2 = length + (length >> 1);
        if (i2 - i < 0) {
            i2 = i;
        }
        if (i2 - 2147483639 > 0) {
            i2 = i > 2147483639 ? he.UNDEFINED_ITEM_ID : 2147483639;
        }
        Object[] objArr2 = new Object[i2];
        fuv.bd(0, this.f16544c, objArr.length, objArr, objArr2);
        Object[] objArr3 = this.f16545d;
        int length2 = objArr3.length;
        int i3 = this.f16544c;
        fuv.bd(length2 - i3, 0, i3, objArr3, objArr2);
        this.f16544c = 0;
        this.f16545d = objArr2;
    }

    public final int g(int i) {
        bff.p(this.f16545d, "<this>");
        if (i == r0.length - 1) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int j = j();
        if (i < 0 || i >= j) {
            throw new IndexOutOfBoundsException(tn.t(i, j, "index: ", ", size: "));
        }
        return this.f16545d[h(this.f16544c + i)];
    }

    public final int h(int i) {
        Object[] objArr = this.f16545d;
        return i >= objArr.length ? i - objArr.length : i;
    }

    public final void i() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int h = h(j() + this.f16544c);
        int i2 = this.f16544c;
        if (i2 < h) {
            while (i2 < h) {
                if (bff.n(obj, this.f16545d[i2])) {
                    i = this.f16544c;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (i2 < h) {
            return -1;
        }
        int length = this.f16545d.length;
        while (true) {
            if (i2 >= length) {
                for (int i3 = 0; i3 < h; i3++) {
                    if (bff.n(obj, this.f16545d[i3])) {
                        i2 = i3 + this.f16545d.length;
                        i = this.f16544c;
                    }
                }
                return -1;
            }
            if (bff.n(obj, this.f16545d[i2])) {
                i = this.f16544c;
                break;
            }
            i2++;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return j() == 0;
    }

    @Override // g.ddt
    public final int j() {
        return this.f16543b;
    }

    public final void k(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f16545d.length;
        while (i < length && it.hasNext()) {
            this.f16545d[i] = it.next();
            i++;
        }
        int i2 = this.f16544c;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f16545d[i3] = it.next();
        }
        this.f16543b = collection.size() + this.f16543b;
    }

    public final int l(int i) {
        return i < 0 ? i + this.f16545d.length : i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int h = h(this.f16543b + this.f16544c);
        int i2 = this.f16544c;
        if (i2 < h) {
            length = h - 1;
            if (i2 <= length) {
                while (!bff.n(obj, this.f16545d[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.f16544c;
                return length - i;
            }
            return -1;
        }
        if (i2 > h) {
            int i3 = h - 1;
            while (true) {
                if (-1 >= i3) {
                    Object[] objArr = this.f16545d;
                    bff.p(objArr, "<this>");
                    length = objArr.length - 1;
                    int i4 = this.f16544c;
                    if (i4 <= length) {
                        while (!bff.n(obj, this.f16545d[length])) {
                            if (length != i4) {
                                length--;
                            }
                        }
                        i = this.f16544c;
                    }
                } else {
                    if (bff.n(obj, this.f16545d[i3])) {
                        length = i3 + this.f16545d.length;
                        i = this.f16544c;
                        break;
                    }
                    i3--;
                }
            }
        }
        return -1;
    }

    @Override // g.ddt
    public final Object m(int i) {
        int i2 = this.f16543b;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        if (i == grj.bd(this)) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        i();
        int h = h(this.f16544c + i);
        Object[] objArr = this.f16545d;
        Object obj = objArr[h];
        if (i < (this.f16543b >> 1)) {
            int i3 = this.f16544c;
            if (h >= i3) {
                fuv.bd(i3 + 1, i3, h, objArr, objArr);
            } else {
                fuv.bd(1, 0, h, objArr, objArr);
                Object[] objArr2 = this.f16545d;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i4 = this.f16544c;
                fuv.bd(i4 + 1, i4, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.f16545d;
            int i5 = this.f16544c;
            objArr3[i5] = null;
            this.f16544c = g(i5);
        } else {
            int h2 = h(grj.bd(this) + this.f16544c);
            if (h <= h2) {
                Object[] objArr4 = this.f16545d;
                fuv.bd(h, h + 1, h2 + 1, objArr4, objArr4);
            } else {
                Object[] objArr5 = this.f16545d;
                fuv.bd(h, h + 1, objArr5.length, objArr5, objArr5);
                Object[] objArr6 = this.f16545d;
                objArr6[objArr6.length - 1] = objArr6[0];
                fuv.bd(0, 1, h2 + 1, objArr6, objArr6);
            }
            this.f16545d[h2] = null;
        }
        this.f16543b--;
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        m(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int h;
        bff.p(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f16545d.length != 0) {
            int h2 = h(j() + this.f16544c);
            int i = this.f16544c;
            if (i < h2) {
                h = i;
                while (i < h2) {
                    Object obj = this.f16545d[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.f16545d[h] = obj;
                        h++;
                    }
                    i++;
                }
                fuv.be(this.f16545d, null, h, h2);
            } else {
                int length = this.f16545d.length;
                int i2 = i;
                boolean z2 = false;
                while (i < length) {
                    Object[] objArr = this.f16545d;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.f16545d[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                h = h(i2);
                for (int i3 = 0; i3 < h2; i3++) {
                    Object[] objArr2 = this.f16545d;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.f16545d[h] = obj3;
                        h = g(h);
                    }
                }
                z = z2;
            }
            if (z) {
                i();
                this.f16543b = l(h - this.f16544c);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        i();
        Object[] objArr = this.f16545d;
        int i = this.f16544c;
        Object obj = objArr[i];
        objArr[i] = null;
        this.f16544c = g(i);
        this.f16543b = j() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        i();
        int h = h(grj.bd(this) + this.f16544c);
        Object[] objArr = this.f16545d;
        Object obj = objArr[h];
        objArr[h] = null;
        this.f16543b = j() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        ffb.p(i, i2, this.f16543b);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.f16543b) {
            clear();
            return;
        }
        if (i3 == 1) {
            m(i);
            return;
        }
        i();
        if (i < this.f16543b - i2) {
            int h = h((i - 1) + this.f16544c);
            int h2 = h((i2 - 1) + this.f16544c);
            while (i > 0) {
                int i4 = h + 1;
                int min = Math.min(i, Math.min(i4, h2 + 1));
                Object[] objArr = this.f16545d;
                int i5 = h2 - min;
                int i6 = h - min;
                fuv.bd(i5 + 1, i6 + 1, i4, objArr, objArr);
                h = l(i6);
                h2 = l(i5);
                i -= min;
            }
            int h3 = h(this.f16544c + i3);
            e(this.f16544c, h3);
            this.f16544c = h3;
        } else {
            int h4 = h(this.f16544c + i2);
            int h5 = h(this.f16544c + i);
            int i7 = this.f16543b;
            while (true) {
                i7 -= i2;
                if (i7 <= 0) {
                    break;
                }
                Object[] objArr2 = this.f16545d;
                i2 = Math.min(i7, Math.min(objArr2.length - h4, objArr2.length - h5));
                Object[] objArr3 = this.f16545d;
                int i8 = h4 + i2;
                fuv.bd(h5, h4, i8, objArr3, objArr3);
                h4 = h(i8);
                h5 = h(h5 + i2);
            }
            int h6 = h(this.f16543b + this.f16544c);
            e(l(h6 - i3), h6);
        }
        this.f16543b -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int h;
        bff.p(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f16545d.length != 0) {
            int h2 = h(j() + this.f16544c);
            int i = this.f16544c;
            if (i < h2) {
                h = i;
                while (i < h2) {
                    Object obj = this.f16545d[i];
                    if (collection.contains(obj)) {
                        this.f16545d[h] = obj;
                        h++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                fuv.be(this.f16545d, null, h, h2);
            } else {
                int length = this.f16545d.length;
                int i2 = i;
                boolean z2 = false;
                while (i < length) {
                    Object[] objArr = this.f16545d;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        this.f16545d[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                h = h(i2);
                for (int i3 = 0; i3 < h2; i3++) {
                    Object[] objArr2 = this.f16545d;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        this.f16545d[h] = obj3;
                        h = g(h);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                i();
                this.f16543b = l(h - this.f16544c);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int j = j();
        if (i < 0 || i >= j) {
            throw new IndexOutOfBoundsException(tn.t(i, j, "index: ", ", size: "));
        }
        int h = h(this.f16544c + i);
        Object[] objArr = this.f16545d;
        Object obj2 = objArr[h];
        objArr[h] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[j()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        bff.p(objArr, "array");
        int length = objArr.length;
        int i = this.f16543b;
        if (length < i) {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            bff.ag(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) newInstance;
        }
        int h = h(this.f16543b + this.f16544c);
        int i2 = this.f16544c;
        if (i2 < h) {
            fuv.bi(i2, h, 2, this.f16545d, objArr);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f16545d;
            fuv.bd(0, this.f16544c, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.f16545d;
            fuv.bd(objArr3.length - this.f16544c, 0, h, objArr3, objArr);
        }
        int i3 = this.f16543b;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }
}
