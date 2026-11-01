package g;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class bni extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11871a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f11872b;

    public /* synthetic */ bni(Map map, int i) {
        this.f11871a = i;
        this.f11872b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        switch (this.f11871a) {
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                if (contains(entry)) {
                    return false;
                }
                ((eol) this.f11872b).put((Comparable) entry.getKey(), entry.getValue());
                return true;
            default:
                return super.add(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.f11871a) {
            case 1:
                ((eol) this.f11872b).clear();
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        switch (this.f11871a) {
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = ((eol) this.f11872b).get(entry.getKey());
                Object value = entry.getValue();
                if (obj2 != value) {
                    return obj2 != null && obj2.equals(value);
                }
                return true;
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f11871a) {
            case 0:
                return new evw((tl) this.f11872b);
            default:
                return new daq((eol) this.f11872b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        switch (this.f11871a) {
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                if (!contains(entry)) {
                    return false;
                }
                ((eol) this.f11872b).remove(entry.getKey());
                return true;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f11871a) {
            case 0:
                return ((tl) this.f11872b).f11294g;
            default:
                return ((eol) this.f11872b).size();
        }
    }
}
