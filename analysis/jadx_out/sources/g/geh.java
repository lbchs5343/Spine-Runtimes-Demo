package g;

import com.google.android.gms.internal.ads.zzfwq;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;

/* loaded from: classes3.dex */
public class geh extends AbstractMap {

    /* renamed from: f, reason: collision with root package name */
    public final transient Map f17983f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ gpx f17984g;
    public transient dhe h;
    public transient gbq i;

    public geh(gpx gpxVar, Map map) {
        this.f17984g = gpxVar;
        this.f17983f = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        gpx gpxVar = this.f17984g;
        Map map = gpxVar.f18557d;
        Map map2 = this.f17983f;
        if (map2 == map) {
            gpxVar.zzp();
            return;
        }
        Iterator it = map2.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Collection collection = (Collection) entry.getValue();
            j(entry);
            zzfwq.zzl(collection != null, "no calls to next() since the last call to remove()");
            it.remove();
            gpxVar.f18558e -= collection.size();
            collection.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.f17983f;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        dhe dheVar = this.h;
        if (dheVar != null) {
            return dheVar;
        }
        dhe dheVar2 = new dhe(this);
        this.h = dheVar2;
        return dheVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.f17983f.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.f17983f;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        gpx gpxVar = this.f17984g;
        gpxVar.getClass();
        List list = (List) collection;
        return list instanceof RandomAccess ? new coo(gpxVar, obj, list, null) : new dtv(gpxVar, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f17983f.hashCode();
    }

    public final ffy j(Map.Entry entry) {
        Object key = entry.getKey();
        Collection collection = (Collection) entry.getValue();
        gpx gpxVar = this.f17984g;
        gpxVar.getClass();
        List list = (List) collection;
        return new ffy(key, list instanceof RandomAccess ? new coo(gpxVar, key, list, null) : new dtv(gpxVar, key, list, null));
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public Set keySet() {
        gpx gpxVar = this.f17984g;
        dfb dfbVar = gpxVar.f11586b;
        if (dfbVar != null) {
            return dfbVar;
        }
        Map map = gpxVar.f18557d;
        dfb esgVar = map instanceof NavigableMap ? new esg(gpxVar, (NavigableMap) map) : map instanceof SortedMap ? new chi(gpxVar, (SortedMap) map) : new dfb(gpxVar, map);
        gpxVar.f11586b = esgVar;
        return esgVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        Collection collection = (Collection) this.f17983f.remove(obj);
        if (collection == null) {
            return null;
        }
        gpx gpxVar = this.f17984g;
        List list = (List) gpxVar.f18559f.zza();
        list.addAll(collection);
        gpxVar.f18558e -= collection.size();
        collection.clear();
        return list;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f17983f.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f17983f.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        gbq gbqVar = this.i;
        if (gbqVar != null) {
            return gbqVar;
        }
        gbq gbqVar2 = new gbq(this);
        this.i = gbqVar2;
        return gbqVar2;
    }
}
