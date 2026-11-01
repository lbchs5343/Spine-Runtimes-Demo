package g;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public class dtv extends AbstractCollection implements List {

    /* renamed from: a, reason: collision with root package name */
    public final dtv f14795a;

    /* renamed from: b, reason: collision with root package name */
    public final Collection f14796b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ gpx f14797c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f14798d;

    /* renamed from: e, reason: collision with root package name */
    public Collection f14799e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ gpx f14800f;

    public dtv(gpx gpxVar, Object obj, List list, dtv dtvVar) {
        this.f14800f = gpxVar;
        this.f14797c = gpxVar;
        this.f14798d = obj;
        this.f14799e = list;
        this.f14795a = dtvVar;
        this.f14796b = dtvVar == null ? null : dtvVar.f14799e;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        zzb();
        boolean isEmpty = this.f14799e.isEmpty();
        ((List) this.f14799e).add(i, obj);
        this.f14800f.f18558e++;
        if (isEmpty) {
            g();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zzb();
        boolean isEmpty = this.f14799e.isEmpty();
        boolean add = this.f14799e.add(obj);
        if (add) {
            this.f14797c.f18558e++;
            if (isEmpty) {
                g();
                return true;
            }
        }
        return add;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = ((List) this.f14799e).addAll(i, collection);
        if (!addAll) {
            return addAll;
        }
        this.f14800f.f18558e += this.f14799e.size() - size;
        if (size != 0) {
            return addAll;
        }
        g();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = this.f14799e.addAll(collection);
        if (!addAll) {
            return addAll;
        }
        this.f14797c.f18558e += this.f14799e.size() - size;
        if (size != 0) {
            return addAll;
        }
        g();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f14799e.clear();
        this.f14797c.f18558e -= size;
        h();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        zzb();
        return this.f14799e.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.f14799e.containsAll(collection);
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.f14799e.equals(obj);
    }

    public final void g() {
        dtv dtvVar = this.f14795a;
        if (dtvVar != null) {
            dtvVar.g();
            return;
        }
        this.f14797c.f18557d.put(this.f14798d, this.f14799e);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzb();
        return ((List) this.f14799e).get(i);
    }

    public final void h() {
        dtv dtvVar = this.f14795a;
        if (dtvVar != null) {
            dtvVar.h();
        } else if (this.f14799e.isEmpty()) {
            this.f14797c.f18557d.remove(this.f14798d);
        }
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        zzb();
        return this.f14799e.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        zzb();
        return ((List) this.f14799e).indexOf(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        zzb();
        return new dqw(this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        zzb();
        return ((List) this.f14799e).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new ol(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        zzb();
        return new ol(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        zzb();
        Object remove = ((List) this.f14799e).remove(i);
        gpx gpxVar = this.f14800f;
        gpxVar.f18558e--;
        h();
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzb();
        boolean remove = this.f14799e.remove(obj);
        if (remove) {
            gpx gpxVar = this.f14797c;
            gpxVar.f18558e--;
            h();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean removeAll = this.f14799e.removeAll(collection);
        if (removeAll) {
            this.f14797c.f18558e += this.f14799e.size() - size;
            h();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean retainAll = this.f14799e.retainAll(collection);
        if (retainAll) {
            this.f14797c.f18558e += this.f14799e.size() - size;
            h();
        }
        return retainAll;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        zzb();
        return ((List) this.f14799e).set(i, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzb();
        return this.f14799e.size();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        zzb();
        List subList = ((List) this.f14799e).subList(i, i2);
        dtv dtvVar = this.f14795a;
        if (dtvVar == null) {
            dtvVar = this;
        }
        boolean z = subList instanceof RandomAccess;
        Object obj = this.f14798d;
        gpx gpxVar = this.f14800f;
        return z ? new coo(gpxVar, obj, subList, dtvVar) : new dtv(gpxVar, obj, subList, dtvVar);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zzb();
        return this.f14799e.toString();
    }

    public final void zzb() {
        dtv dtvVar = this.f14795a;
        if (dtvVar != null) {
            dtvVar.zzb();
            if (dtvVar.f14799e != this.f14796b) {
                throw new ConcurrentModificationException();
            }
            return;
        }
        if (this.f14799e.isEmpty()) {
            Collection collection = (Collection) this.f14797c.f18557d.get(this.f14798d);
            if (collection != null) {
                this.f14799e = collection;
            }
        }
    }
}
