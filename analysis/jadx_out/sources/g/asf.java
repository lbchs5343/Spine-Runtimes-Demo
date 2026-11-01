package g;

import java.util.Map;

/* loaded from: classes3.dex */
public final class asf implements Map.Entry, Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eol f10743a;

    /* renamed from: b, reason: collision with root package name */
    public final Comparable f10744b;

    /* renamed from: c, reason: collision with root package name */
    public Object f10745c;

    public asf(eol eolVar, Comparable comparable, Object obj) {
        this.f10743a = eolVar;
        this.f10744b = comparable;
        this.f10745c = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f10744b.compareTo(((asf) obj).f10744b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f10744b;
                if (comparable == null ? key == null : comparable.equals(key)) {
                    Object obj2 = this.f10745c;
                    Object value = entry.getValue();
                    if (obj2 == null ? value == null : obj2.equals(value)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f10744b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f10745c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f10744b;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f10745c;
        return (obj != null ? obj.hashCode() : 0) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f10743a.n();
        Object obj2 = this.f10745c;
        this.f10745c = obj;
        return obj2;
    }

    public final String toString() {
        return awf.i(String.valueOf(this.f10744b), "=", String.valueOf(this.f10745c));
    }
}
