package g;

import j$.util.Collection;
import j$.util.List;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

/* loaded from: classes.dex */
public final class dqh implements List, RandomAccess, j$.util.List {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f14638a;

    public dqh(List list) {
        Objects.requireNonNull(list);
        Object[] array = list.toArray();
        Objects.requireNonNull(array);
        this.f14638a = array;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        boolean z = obj instanceof dqh;
        Object[] objArr = this.f14638a;
        if (z) {
            return Arrays.equals(objArr, ((dqh) obj).f14638a);
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int length = objArr.length;
        if (length != list.size()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!Objects.equals(objArr[i], list.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        for (Object obj : this.f14638a) {
            consumer.accept(obj);
        }
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.f14638a[i];
    }

    @Override // java.util.List, java.util.Collection
    public final int hashCode() {
        return Arrays.hashCode(this.f14638a);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        Object[] objArr = this.f14638a;
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (Objects.equals(objArr[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f14638a.length == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new dvu(this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        Object[] objArr = this.f14638a;
        for (int length = objArr.length - 1; length > 0; length--) {
            if (Objects.equals(objArr[length], obj)) {
                return length;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Stream parallelStream() {
        return Collection.a.$default$parallelStream(this);
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream parallelStream() {
        return Stream.Wrapper.convert(Collection.a.$default$parallelStream(this));
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.f14638a.length;
    }

    @Override // java.util.List, j$.util.List
    public final void sort(Comparator comparator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable, j$.util.List, j$.util.Collection, j$.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        return List.a.$default$spliterator(this);
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(List.a.$default$spliterator(this));
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Stream stream() {
        return Collection.a.$default$stream(this);
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(Collection.a.$default$stream(this));
    }

    @Override // java.util.List
    public final java.util.List subList(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        Object[] objArr = this.f14638a;
        return Arrays.copyOf(objArr, objArr.length);
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return Collection.a.$default$toArray(this, intFunction);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] objArr2 = this.f14638a;
        return Arrays.copyOf(objArr2, objArr2.length);
    }

    public final String toString() {
        return "ImmutableList{" + Arrays.toString(this.f14638a) + '}';
    }
}
