package g;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public final class gor implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final int f18509a;

    /* renamed from: b, reason: collision with root package name */
    public final fzq f18510b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18511c;

    public gor(fzq fzqVar, int i) {
        int i2;
        bff.p(fzqVar, "map");
        this.f18510b = fzqVar;
        this.f18511c = i;
        i2 = fzqVar.modCount;
        this.f18509a = i2;
    }

    public final void d() {
        int i;
        i = this.f18510b.modCount;
        if (i != this.f18509a) {
            throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return bff.n(entry.getKey(), getKey()) && bff.n(entry.getValue(), getValue());
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        d();
        return this.f18510b.keysArray[this.f18511c];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        d();
        Object[] objArr = this.f18510b.valuesArray;
        bff.d(objArr);
        return objArr[this.f18511c];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        int hashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return hashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        d();
        fzq fzqVar = this.f18510b;
        fzqVar.p();
        Object[] t = fzqVar.t();
        int i = this.f18511c;
        Object obj2 = t[i];
        t[i] = obj;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
