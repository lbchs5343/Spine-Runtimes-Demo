package g;

import java.util.Iterator;

/* loaded from: classes3.dex */
public final class eik extends epr {

    /* renamed from: a, reason: collision with root package name */
    public final transient cil f15590a;

    /* renamed from: b, reason: collision with root package name */
    public final transient fbk f15591b;

    public eik(cil cilVar, fbk fbkVar) {
        this.f15590a = cilVar;
        this.f15591b = fbkVar;
    }

    @Override // g.epr, g.esj
    public final fkz c() {
        return this.f15591b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f15590a.get(obj) != null;
    }

    @Override // g.esj
    public final int d(Object[] objArr) {
        return this.f15591b.d(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f15591b.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15590a.f12938g;
    }
}
