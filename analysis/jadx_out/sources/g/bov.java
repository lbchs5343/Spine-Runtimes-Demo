package g;

import j$.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class bov implements emz {

    /* renamed from: a, reason: collision with root package name */
    public final String f11931a;

    /* renamed from: b, reason: collision with root package name */
    public final ffr f11932b;

    public bov(String str, Map map, Map map2) {
        ffr ffrVar;
        this.f11931a = str;
        if (map2.isEmpty() && map.isEmpty()) {
            ffrVar = fpt.f17211b;
        } else {
            TreeMap treeMap = new TreeMap(Comparator.b.reversed(Comparator.a.comparingInt(new dbm(5))));
            treeMap.putAll(map2);
            ffrVar = new ffr(map, 3, treeMap);
        }
        this.f11932b = ffrVar;
    }

    @Override // g.emz
    public final String c() {
        return this.f11931a;
    }

    @Override // g.emz
    public final ffr d() {
        return this.f11932b;
    }

    public final String toString() {
        return this.f11931a;
    }
}
