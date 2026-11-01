package g;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class epr extends esj implements Set, j$.util.Set {

    /* renamed from: g, reason: collision with root package name */
    public transient fkz f15950g;

    @Override // g.esj
    public fkz c() {
        fkz fkzVar = this.f15950g;
        if (fkzVar != null) {
            return fkzVar;
        }
        fkz f2 = f();
        this.f15950g = f2;
        return f2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    return containsAll(set);
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public fkz f() {
        Object[] array = toArray(esj.h);
        duz duzVar = fkz.f16953g;
        return fkz.m(array.length, array);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }
}
