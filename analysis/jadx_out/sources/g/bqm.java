package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class bqm {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f12023a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f12024b = new HashSet();

    public final void c(Object obj, chf chfVar) {
        HashSet hashSet = this.f12024b;
        boolean contains = hashSet.contains(obj);
        ConcurrentHashMap concurrentHashMap = this.f12023a;
        if (contains) {
            concurrentHashMap.remove(obj);
        } else if (((chf) concurrentHashMap.put(obj, chfVar)) != null) {
            concurrentHashMap.remove(obj);
            hashSet.add(obj);
        }
    }
}
