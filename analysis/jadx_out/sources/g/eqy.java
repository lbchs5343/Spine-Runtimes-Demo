package g;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class eqy extends ffw {

    /* renamed from: a, reason: collision with root package name */
    public final fzq f16018a;

    public eqy(fzq fzqVar) {
        this.f16018a = fzqVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        bff.p(collection, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // g.ffw
    public final int b() {
        return this.f16018a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f16018a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f16018a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f16018a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        fzq fzqVar = this.f16018a;
        fzqVar.getClass();
        return new gwl(fzqVar, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        fzq fzqVar = this.f16018a;
        fzqVar.p();
        int j = fzqVar.j(obj);
        if (j < 0) {
            return false;
        }
        fzqVar.s(j);
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        bff.p(collection, "elements");
        this.f16018a.p();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        bff.p(collection, "elements");
        this.f16018a.p();
        return super.retainAll(collection);
    }
}
