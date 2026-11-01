package g;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class gnq implements Map {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f18467a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18468b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final guv f18469c;

    public gnq(guv guvVar, int i) {
        this.f18469c = guvVar;
        this.f18467a = new HashMap(i);
    }

    @Override // java.util.Map
    public final void clear() {
        this.f18467a.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f18467a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (!(obj instanceof elt)) {
            return false;
        }
        return this.f18467a.containsKey((elt) obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return this.f18467a.entrySet();
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return (Map) this.f18467a.get(obj);
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f18467a.isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        return this.f18467a.keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return (Map) this.f18467a.put((elt) obj, (Map) obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        this.f18467a.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return (Map) this.f18467a.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return this.f18467a.size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f18467a.values();
    }
}
