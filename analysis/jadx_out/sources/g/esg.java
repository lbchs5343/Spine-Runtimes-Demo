package g;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes3.dex */
public final class esg extends chi implements NavigableSet {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ gpx f16081e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public esg(gpx gpxVar, NavigableMap navigableMap) {
        super(gpxVar, navigableMap);
        this.f16081e = gpxVar;
    }

    @Override // g.chi
    public final /* synthetic */ SortedMap b() {
        return (NavigableMap) ((SortedMap) this.f14081c);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f14081c)).ceilingKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return ((dfb) descendingSet()).iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new esg(this.f16081e, ((NavigableMap) ((SortedMap) this.f14081c)).descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f14081c)).floorKey(obj);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        return new esg(this.f16081e, ((NavigableMap) ((SortedMap) this.f14081c)).headMap(obj, z));
    }

    @Override // g.chi, java.util.SortedSet
    public final /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f14081c)).higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f14081c)).lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        dqw dqwVar = (dqw) iterator();
        if (!dqwVar.hasNext()) {
            return null;
        }
        Object next = dqwVar.next();
        dqwVar.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        Iterator descendingIterator = descendingIterator();
        if (!descendingIterator.hasNext()) {
            return null;
        }
        Object next = descendingIterator.next();
        descendingIterator.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new esg(this.f16081e, ((NavigableMap) ((SortedMap) this.f14081c)).subMap(obj, z, obj2, z2));
    }

    @Override // g.chi, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new esg(this.f16081e, ((NavigableMap) ((SortedMap) this.f14081c)).tailMap(obj, z));
    }

    @Override // g.chi, java.util.SortedSet
    public final /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }
}
