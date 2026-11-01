package g;

import java.util.Map;

/* loaded from: classes.dex */
public final class frv implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public frv f17312a;

    /* renamed from: b, reason: collision with root package name */
    public frv f17313b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f17314c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f17315d;

    public frv(Object obj, Object obj2) {
        this.f17314c = obj;
        this.f17315d = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof frv)) {
            return false;
        }
        frv frvVar = (frv) obj;
        return this.f17314c.equals(frvVar.f17314c) && this.f17315d.equals(frvVar.f17315d);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f17314c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f17315d;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f17314c.hashCode() ^ this.f17315d.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f17314c + "=" + this.f17315d;
    }
}
