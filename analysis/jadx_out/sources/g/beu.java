package g;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes3.dex */
public final class beu extends grn implements NavigableMap {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gpx f11411a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public beu(gpx gpxVar, NavigableMap navigableMap) {
        super(gpxVar, navigableMap);
        this.f11411a = gpxVar;
    }

    @Override // g.grn
    /* renamed from: b */
    public final /* synthetic */ SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    public final ffy c(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        List list = (List) this.f11411a.f18559f.zza();
        list.addAll((Collection) entry.getValue());
        it.remove();
        return new ffy(entry.getKey(), Collections.unmodifiableList(list));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = ((NavigableMap) ((SortedMap) this.f17983f)).ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return j(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f17983f)).ceilingKey(obj);
    }

    @Override // g.grn
    public final /* synthetic */ SortedMap d() {
        return (NavigableMap) ((SortedMap) this.f17983f);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new beu(this.f11411a, ((NavigableMap) ((SortedMap) this.f17983f)).descendingMap());
    }

    @Override // g.grn
    public final SortedSet e() {
        return new esg(this.f11411a, (NavigableMap) ((SortedMap) this.f17983f));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry firstEntry = ((NavigableMap) ((SortedMap) this.f17983f)).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return j(firstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry floorEntry = ((NavigableMap) ((SortedMap) this.f17983f)).floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return j(floorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f17983f)).floorKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return new beu(this.f11411a, ((NavigableMap) ((SortedMap) this.f17983f)).headMap(obj, z));
    }

    @Override // g.grn, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry higherEntry = ((NavigableMap) ((SortedMap) this.f17983f)).higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return j(higherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f17983f)).higherKey(obj);
    }

    @Override // g.grn, g.geh, java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public final /* synthetic */ Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry lastEntry = ((NavigableMap) ((SortedMap) this.f17983f)).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return j(lastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry lowerEntry = ((NavigableMap) ((SortedMap) this.f17983f)).lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return j(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f17983f)).lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return c(((dhe) entrySet()).iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return c(((dhe) ((geh) descendingMap()).entrySet()).iterator());
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new beu(this.f11411a, ((NavigableMap) ((SortedMap) this.f17983f)).subMap(obj, z, obj2, z2));
    }

    @Override // g.grn, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new beu(this.f11411a, ((NavigableMap) ((SortedMap) this.f17983f)).tailMap(obj, z));
    }

    @Override // g.grn, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }
}
