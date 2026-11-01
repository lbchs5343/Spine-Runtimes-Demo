package g;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class eix extends epr {

    /* renamed from: a, reason: collision with root package name */
    public final transient cil f15615a;

    /* renamed from: b, reason: collision with root package name */
    public final transient Object[] f15616b;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f15617e;

    public eix(cil cilVar, Object[] objArr, int i) {
        this.f15615a = cilVar;
        this.f15616b = objArr;
        this.f15617e = i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f15615a.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // g.esj
    public final int d(Object[] objArr) {
        return c().d(objArr);
    }

    @Override // g.epr
    public final fkz f() {
        return new exc(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return c().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15617e;
    }
}
