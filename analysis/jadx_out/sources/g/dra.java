package g;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class dra extends ffw implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final dra f14662a;
    private final fzq backing;

    static {
        fzq fzqVar = fzq.f17736a;
        f14662a = new dra(fzq.f17736a);
    }

    public dra() {
        this(new fzq());
    }

    public dra(fzq fzqVar) {
        bff.p(fzqVar, "backing");
        this.backing = fzqVar;
    }

    private final Object writeReplace() {
        if (this.backing.r()) {
            return new diw(this, 1);
        }
        throw new NotSerializableException("The set cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        return this.backing.l(obj) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        bff.p(collection, "elements");
        this.backing.p();
        return super.addAll(collection);
    }

    @Override // g.ffw
    public final int b() {
        return this.backing.size();
    }

    public final dra c() {
        this.backing.g();
        return this.backing.size() > 0 ? this : f14662a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.backing.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.backing.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.backing.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        fzq fzqVar = this.backing;
        fzqVar.getClass();
        return new gwl(fzqVar, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        fzq fzqVar = this.backing;
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
        this.backing.p();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        bff.p(collection, "elements");
        this.backing.p();
        return super.retainAll(collection);
    }
}
