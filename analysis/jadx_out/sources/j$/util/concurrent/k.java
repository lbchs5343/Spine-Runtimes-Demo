package j$.util.concurrent;

import java.util.Map;

/* loaded from: classes2.dex */
public final class k implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Object f20748a;

    /* renamed from: b, reason: collision with root package name */
    public Object f20749b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f20750c;

    public k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
        this.f20748a = obj;
        this.f20749b = obj2;
        this.f20750c = concurrentHashMap;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.f20748a;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.f20749b;
        return value == obj3 || value.equals(obj3);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f20748a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f20749b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f20748a.hashCode() ^ this.f20749b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        obj.getClass();
        Object obj2 = this.f20749b;
        this.f20749b = obj;
        this.f20750c.put(this.f20748a, obj);
        return obj2;
    }

    public final String toString() {
        return j$.com.android.tools.r8.a.Q(this.f20748a, this.f20749b);
    }
}
