package g;

import com.google.android.gms.internal.ads.zzfwr;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* loaded from: classes3.dex */
public final class goo extends kn implements SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.f19555a).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f19555a.iterator();
        it.getClass();
        zzfwr zzfwrVar = this.f19556b;
        zzfwrVar.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (zzfwrVar.zza(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new goo(((SortedSet) this.f19555a).headSet(obj), this.f19556b);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSet = (SortedSet) this.f19555a;
        while (true) {
            Object last = sortedSet.last();
            if (this.f19556b.zza(last)) {
                return last;
            }
            sortedSet = sortedSet.headSet(last);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new goo(((SortedSet) this.f19555a).subSet(obj, obj2), this.f19556b);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new goo(((SortedSet) this.f19555a).tailSet(obj), this.f19556b);
    }
}
