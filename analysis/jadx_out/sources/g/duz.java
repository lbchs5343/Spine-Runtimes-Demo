package g;

import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class duz implements ListIterator, Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final fkz f14869a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14870b;

    /* renamed from: c, reason: collision with root package name */
    public int f14871c;

    public duz(fkz fkzVar, int i) {
        int size = fkzVar.size();
        acr.ak(i, size);
        this.f14870b = size;
        this.f14871c = i;
        this.f14869a = fkzVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Object d(int i) {
        return this.f14869a.get(i);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f14871c < this.f14870b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f14871c > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f14871c;
        this.f14871c = i + 1;
        return d(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f14871c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f14871c - 1;
        this.f14871c = i;
        return d(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f14871c - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
