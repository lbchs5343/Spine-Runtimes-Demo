package j$.util.concurrent;

import java.util.Map;

/* loaded from: classes2.dex */
public class l implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final int f20751a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f20752b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f20753c;

    /* renamed from: d, reason: collision with root package name */
    public volatile l f20754d;

    public l(int i, Object obj, Object obj2) {
        this.f20751a = i;
        this.f20752b = obj;
        this.f20753c = obj2;
    }

    public l(int i, Object obj, Object obj2, l lVar) {
        this(i, obj, obj2);
        this.f20754d = lVar;
    }

    public l a(Object obj, int i) {
        Object obj2;
        l lVar = this;
        do {
            if (lVar.f20751a == i && ((obj2 = lVar.f20752b) == obj || (obj2 != null && obj.equals(obj2)))) {
                return lVar;
            }
            lVar = lVar.f20754d;
        } while (lVar != null);
        return null;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.f20752b;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.f20753c;
        return value == obj3 || value.equals(obj3);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f20752b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f20753c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f20752b.hashCode() ^ this.f20753c.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return j$.com.android.tools.r8.a.Q(this.f20752b, this.f20753c);
    }
}
