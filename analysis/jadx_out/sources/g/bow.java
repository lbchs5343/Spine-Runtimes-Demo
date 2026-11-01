package g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class bow implements Collection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ tl f11933a;

    public bow(tl tlVar) {
        this.f11933a = tlVar;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f11933a.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f11933a.m(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f11933a.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new hx(this.f11933a, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        tl tlVar = this.f11933a;
        int m = tlVar.m(obj);
        if (m < 0) {
            return false;
        }
        tlVar.r(m);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        tl tlVar = this.f11933a;
        int i = tlVar.f11294g;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (collection.contains(tlVar.o(i2))) {
                tlVar.r(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        tl tlVar = this.f11933a;
        int i = tlVar.f11294g;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (!collection.contains(tlVar.o(i2))) {
                tlVar.r(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f11933a.f11294g;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        tl tlVar = this.f11933a;
        int i = tlVar.f11294g;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = tlVar.o(i2);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        tl tlVar = this.f11933a;
        int i = tlVar.f11294g;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = tlVar.o(i2);
        }
        if (objArr.length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
