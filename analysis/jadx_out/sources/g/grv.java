package g;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class grv extends ex implements List, Cloneable, RandomAccess, Serializable {
    public transient Type k;
    public transient Object l;
    private final List<Object> list;

    public grv() {
        this.list = new ArrayList(10);
    }

    public grv(ArrayList arrayList) {
        this.list = arrayList;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        this.list.add(i, obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        return this.list.add(obj);
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        return this.list.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        return this.list.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.list.clear();
    }

    public final Object clone() {
        return new grv(new ArrayList(this.list));
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return this.list.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean equals(Object obj) {
        return this.list.equals(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.list.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public final int hashCode() {
        return this.list.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return this.list.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.list.iterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.list.listIterator();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return this.list.listIterator(i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        return this.list.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        return this.list.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        return this.list.retainAll(collection);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        return this.list.set(i, obj);
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.list.size();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        return this.list.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return this.list.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.list.toArray(objArr);
    }
}
