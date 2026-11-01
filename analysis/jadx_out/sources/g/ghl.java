package g;

import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class ghl extends AbstractList implements RandomAccess, guu {

    /* renamed from: a, reason: collision with root package name */
    public final fej f18164a;

    public ghl(fej fejVar) {
        this.f18164a = fejVar;
    }

    @Override // g.guu
    public final void b(cyb cybVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return this.f18164a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new nw(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new bjs(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18164a.size();
    }

    @Override // g.guu
    public final guu zze() {
        return this;
    }

    @Override // g.guu
    public final Object zzf(int i) {
        return this.f18164a.f16665a.get(i);
    }

    @Override // g.guu
    public final List zzh() {
        return Collections.unmodifiableList(this.f18164a.f16665a);
    }
}
