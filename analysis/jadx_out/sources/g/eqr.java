package g;

import java.util.Map;

/* loaded from: classes3.dex */
public final class eqr implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public Object f16003a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f16004b;

    /* renamed from: c, reason: collision with root package name */
    public eqr f16005c;

    /* renamed from: d, reason: collision with root package name */
    public eqr f16006d;

    /* renamed from: e, reason: collision with root package name */
    public eqr f16007e;

    /* renamed from: f, reason: collision with root package name */
    public eqr f16008f;

    /* renamed from: g, reason: collision with root package name */
    public int f16009g;
    public eqr h;
    public final Object i;

    public eqr(boolean z) {
        this.i = null;
        this.f16004b = z;
        this.f16007e = this;
        this.f16006d = this;
    }

    public eqr(boolean z, eqr eqrVar, Object obj, eqr eqrVar2, eqr eqrVar3) {
        this.f16008f = eqrVar;
        this.i = obj;
        this.f16004b = z;
        this.f16009g = 1;
        this.f16006d = eqrVar2;
        this.f16007e = eqrVar3;
        eqrVar3.f16006d = this;
        eqrVar2.f16007e = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.i;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.f16003a;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.i;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f16003a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.i;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f16003a;
        return (obj2 != null ? obj2.hashCode() : 0) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.f16004b) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.f16003a;
        this.f16003a = obj;
        return obj2;
    }

    public final String toString() {
        return this.i + "=" + this.f16003a;
    }
}
