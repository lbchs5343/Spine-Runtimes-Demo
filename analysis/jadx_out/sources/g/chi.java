package g;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes3.dex */
public class chi extends dfb implements SortedSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gpx f12873a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public chi(gpx gpxVar, SortedMap sortedMap) {
        super(gpxVar, sortedMap);
        this.f12873a = gpxVar;
    }

    public SortedMap b() {
        return (SortedMap) this.f14081c;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return b().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return b().firstKey();
    }

    @Override // java.util.SortedSet
    public SortedSet headSet(Object obj) {
        return new chi(this.f12873a, b().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return b().lastKey();
    }

    @Override // java.util.SortedSet
    public SortedSet subSet(Object obj, Object obj2) {
        return new chi(this.f12873a, b().subMap(obj, obj2));
    }

    @Override // java.util.SortedSet
    public SortedSet tailSet(Object obj) {
        return new chi(this.f12873a, b().tailMap(obj));
    }
}
