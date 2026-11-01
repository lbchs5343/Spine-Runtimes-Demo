package g;

import com.google.android.gms.internal.ads.zzgbo;
import com.google.android.gms.internal.ads.zzgbu;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class gho extends zzgbo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Set f18167a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set f18168b;

    public gho(Set set, Set set2) {
        this.f18167a = set;
        this.f18168b = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f18167a.contains(obj) && this.f18168b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.f18167a.containsAll(collection) && this.f18168b.containsAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return Collections.disjoint(this.f18168b, this.f18167a);
    }

    @Override // com.google.android.gms.internal.ads.zzgbo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new fiu(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Iterator it = this.f18167a.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.f18168b.contains(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzgbo
    /* renamed from: zza */
    public final zzgbu iterator() {
        return new fiu(this);
    }
}
