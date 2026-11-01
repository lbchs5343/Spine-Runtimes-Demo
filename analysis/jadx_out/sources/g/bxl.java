package g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class bxl implements Set {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12389a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12390b;

    public /* synthetic */ bxl(int i, Object obj) {
        this.f12389a = i;
        this.f12390b = obj;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.f12389a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.f12389a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        switch (this.f12389a) {
            case 0:
                ((tl) this.f12390b).clear();
                break;
            default:
                ((cmg) ((akj) this.f12390b).f10384f).clear();
                break;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f12389a) {
            case 0:
                return ((tl) this.f12390b).containsKey(obj);
            default:
                return ((cmg) ((akj) this.f12390b).f10384f).n(obj) >= 0;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.f12389a) {
            case 0:
                return ((tl) this.f12390b).f(collection);
            default:
                ((akj) this.f12390b).getClass();
                throw new UnsupportedOperationException("not a map");
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.f12389a) {
            case 0:
                tl tlVar = (tl) this.f12390b;
                if (this != obj) {
                    if (obj instanceof Set) {
                        Set set = (Set) obj;
                        try {
                            if (tlVar.f11294g == set.size()) {
                                if (tlVar.f(set)) {
                                }
                            }
                        } catch (ClassCastException | NullPointerException unused) {
                            break;
                        }
                    }
                }
                break;
            default:
                if (this != obj) {
                    if (obj instanceof Set) {
                        Set set2 = (Set) obj;
                        try {
                            if (size() == set2.size()) {
                                if (containsAll(set2)) {
                                }
                            }
                        } catch (ClassCastException | NullPointerException unused2) {
                            break;
                        }
                    }
                }
                break;
        }
        return false;
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        switch (this.f12389a) {
            case 0:
                tl tlVar = (tl) this.f12390b;
                int i = 0;
                for (int i2 = tlVar.f11294g - 1; i2 >= 0; i2--) {
                    Object n = tlVar.n(i2);
                    i += n == null ? 0 : n.hashCode();
                }
                return i;
            default:
                akj akjVar = (akj) this.f12390b;
                int i3 = 0;
                for (int i4 = ((cmg) akjVar.f10384f).f13116g - 1; i4 >= 0; i4--) {
                    Object obj = ((cmg) akjVar.f10384f).j[i4];
                    i3 += obj == null ? 0 : obj.hashCode();
                }
                return i3;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f12389a) {
            case 0:
                return ((tl) this.f12390b).isEmpty();
            default:
                return ((cmg) ((akj) this.f12390b).f10384f).f13116g == 0;
        }
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f12389a) {
            case 0:
                return new hx((tl) this.f12390b, 0);
            default:
                return new duj((akj) this.f12390b);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f12389a) {
            case 0:
                tl tlVar = (tl) this.f12390b;
                int k = tlVar.k(obj);
                if (k >= 0) {
                    tlVar.r(k);
                    break;
                }
                break;
            default:
                akj akjVar = (akj) this.f12390b;
                int n = ((cmg) akjVar.f10384f).n(obj);
                if (n >= 0) {
                    ((cmg) akjVar.f10384f).m(n);
                    break;
                }
                break;
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f12389a) {
            case 0:
                return ((tl) this.f12390b).d(collection);
            default:
                ((akj) this.f12390b).getClass();
                throw new UnsupportedOperationException("not a map");
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f12389a) {
            case 0:
                return ((tl) this.f12390b).e(collection);
            default:
                ((akj) this.f12390b).getClass();
                throw new UnsupportedOperationException("not a map");
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        switch (this.f12389a) {
            case 0:
                return ((tl) this.f12390b).f11294g;
            default:
                return ((cmg) ((akj) this.f12390b).f10384f).f13116g;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        switch (this.f12389a) {
            case 0:
                tl tlVar = (tl) this.f12390b;
                int i = tlVar.f11294g;
                Object[] objArr = new Object[i];
                for (int i2 = 0; i2 < i; i2++) {
                    objArr[i2] = tlVar.n(i2);
                }
                return objArr;
            default:
                akj akjVar = (akj) this.f12390b;
                int i3 = ((cmg) akjVar.f10384f).f13116g;
                Object[] objArr2 = new Object[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    objArr2[i4] = ((cmg) akjVar.f10384f).j[i4];
                }
                return objArr2;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.f12389a) {
            case 0:
                tl tlVar = (tl) this.f12390b;
                int i = tlVar.f11294g;
                if (objArr.length < i) {
                    objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
                }
                for (int i2 = 0; i2 < i; i2++) {
                    objArr[i2] = tlVar.n(i2);
                }
                if (objArr.length > i) {
                    objArr[i] = null;
                    break;
                }
                break;
            default:
                akj akjVar = (akj) this.f12390b;
                int i3 = ((cmg) akjVar.f10384f).f13116g;
                if (objArr.length < i3) {
                    objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i3);
                }
                for (int i4 = 0; i4 < i3; i4++) {
                    objArr[i4] = ((cmg) akjVar.f10384f).j[i4];
                }
                if (objArr.length > i3) {
                    objArr[i3] = null;
                    break;
                }
                break;
        }
        return objArr;
    }
}
