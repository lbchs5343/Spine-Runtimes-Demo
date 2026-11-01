package g;

import java.util.AbstractSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class bzw extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bny f12531a;

    public bzw(bny bnyVar) {
        this.f12531a = bnyVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f12531a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f12531a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new bql(this.f12531a, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        bny bnyVar = this.f12531a;
        eqr eqrVar = null;
        if (obj != null) {
            try {
                eqrVar = bnyVar.d(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        if (eqrVar != null) {
            bnyVar.g(eqrVar, true);
        }
        return eqrVar != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f12531a.size;
    }
}
