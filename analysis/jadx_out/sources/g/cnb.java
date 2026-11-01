package g;

import j$.util.Objects;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class cnb extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bny f13167a;

    public cnb(bny bnyVar) {
        this.f13167a = bnyVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f13167a.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028 A[RETURN] */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean contains(Object obj) {
        eqr d2;
        if (obj instanceof Map.Entry) {
            bny bnyVar = this.f13167a;
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            eqr eqrVar = null;
            if (key != null) {
                try {
                    d2 = bnyVar.d(key, false);
                } catch (ClassCastException unused) {
                }
                if (d2 != null && Objects.equals(d2.f16003a, entry.getValue())) {
                    eqrVar = d2;
                }
                if (eqrVar == null) {
                    return true;
                }
            }
            d2 = null;
            if (d2 != null) {
                eqrVar = d2;
            }
            if (eqrVar == null) {
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new bql(this.f13167a, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean remove(Object obj) {
        eqr d2;
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            bny bnyVar = this.f13167a;
            eqr eqrVar = null;
            if (key != null) {
                try {
                    d2 = bnyVar.d(key, false);
                } catch (ClassCastException unused) {
                }
                if (d2 != null && Objects.equals(d2.f16003a, entry.getValue())) {
                    eqrVar = d2;
                }
                if (eqrVar != null) {
                    bnyVar.g(eqrVar, true);
                    return true;
                }
            }
            d2 = null;
            if (d2 != null) {
                eqrVar = d2;
            }
            if (eqrVar != null) {
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f13167a.size;
    }
}
