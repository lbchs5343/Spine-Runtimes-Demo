package g;

import java.util.ListIterator;

/* loaded from: classes3.dex */
public final class bjs implements ListIterator {

    /* renamed from: a, reason: collision with root package name */
    public final ListIterator f11712a;

    public bjs(ghl ghlVar, int i) {
        this.f11712a = ghlVar.f18164a.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f11712a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f11712a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f11712a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f11712a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f11712a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f11712a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
