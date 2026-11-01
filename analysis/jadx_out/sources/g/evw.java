package g;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class evw implements Iterator, Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public boolean f16251a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ tl f16252b;

    /* renamed from: c, reason: collision with root package name */
    public int f16253c;

    /* renamed from: d, reason: collision with root package name */
    public int f16254d = -1;

    public evw(tl tlVar) {
        this.f16252b = tlVar;
        this.f16253c = tlVar.f11294g - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f16251a) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i = this.f16254d;
        tl tlVar = this.f16252b;
        return bff.n(key, tlVar.n(i)) && bff.n(entry.getValue(), tlVar.o(this.f16254d));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f16251a) {
            return this.f16252b.n(this.f16254d);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f16251a) {
            return this.f16252b.o(this.f16254d);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16254d < this.f16253c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f16251a) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i = this.f16254d;
        tl tlVar = this.f16252b;
        Object n = tlVar.n(i);
        Object o = tlVar.o(this.f16254d);
        return (n == null ? 0 : n.hashCode()) ^ (o != null ? o.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f16254d++;
        this.f16251a = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f16251a) {
            throw new IllegalStateException();
        }
        this.f16252b.r(this.f16254d);
        this.f16254d--;
        this.f16253c--;
        this.f16251a = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f16251a) {
            return this.f16252b.j(this.f16254d, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
