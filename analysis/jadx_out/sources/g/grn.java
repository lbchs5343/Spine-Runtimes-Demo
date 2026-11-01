package g;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes3.dex */
public class grn extends geh implements SortedMap {
    public SortedSet k;
    public final /* synthetic */ gpx l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public grn(gpx gpxVar, SortedMap sortedMap) {
        super(gpxVar, sortedMap);
        this.l = gpxVar;
    }

    @Override // g.geh, java.util.AbstractMap, java.util.Map, java.util.SortedMap
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.k;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet e2 = e();
        this.k = e2;
        return e2;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return d().comparator();
    }

    public SortedMap d() {
        return (SortedMap) this.f17983f;
    }

    public SortedSet e() {
        return new chi(this.l, d());
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return d().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new grn(this.l, d().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return d().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new grn(this.l, d().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new grn(this.l, d().tailMap(obj));
    }
}
