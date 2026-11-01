package g;

import com.google.android.gms.internal.ads.zzfwn;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class gbq extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17873a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17874b;

    public /* synthetic */ gbq(int i, Serializable serializable) {
        this.f17873a = i;
        this.f17874b = serializable;
    }

    public gbq(geh gehVar) {
        this.f17873a = 2;
        this.f17874b = gehVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.f17873a) {
            case 0:
                ((gpx) this.f17874b).zzp();
                break;
            case 1:
                ((esx) this.f17874b).clear();
                break;
            default:
                ((geh) this.f17874b).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        switch (this.f17873a) {
            case 0:
                Iterator it = ((geh) ((gpx) this.f17874b).zzs()).values().iterator();
                while (it.hasNext()) {
                    if (((Collection) it.next()).contains(obj)) {
                        return true;
                    }
                }
                return false;
            case 1:
            default:
                return super.contains(obj);
            case 2:
                return ((geh) this.f17874b).containsValue(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        switch (this.f17873a) {
            case 2:
                return ((geh) this.f17874b).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f17873a) {
            case 0:
                return new cos((gpx) this.f17874b);
            case 1:
                esx esxVar = (esx) this.f17874b;
                Map l = esxVar.l();
                return l != null ? l.values().iterator() : new gae(esxVar, 2);
            default:
                return new wn(((geh) this.f17874b).entrySet().iterator());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        switch (this.f17873a) {
            case 2:
                geh gehVar = (geh) this.f17874b;
                try {
                    return super.remove(obj);
                } catch (UnsupportedOperationException unused) {
                    for (Map.Entry entry : gehVar.entrySet()) {
                        if (zzfwn.zza(obj, entry.getValue())) {
                            gehVar.remove(entry.getKey());
                            return true;
                        }
                    }
                    return false;
                }
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        switch (this.f17873a) {
            case 2:
                geh gehVar = (geh) this.f17874b;
                try {
                    if (collection != null) {
                        return super.removeAll(collection);
                    }
                    throw null;
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    for (Map.Entry entry : gehVar.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return gehVar.keySet().removeAll(hashSet);
                }
            default:
                return super.removeAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection collection) {
        switch (this.f17873a) {
            case 2:
                geh gehVar = (geh) this.f17874b;
                try {
                    if (collection != null) {
                        return super.retainAll(collection);
                    }
                    throw null;
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    for (Map.Entry entry : gehVar.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return gehVar.keySet().retainAll(hashSet);
                }
            default:
                return super.retainAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.f17873a) {
            case 0:
                return ((gpx) this.f17874b).f18558e;
            case 1:
                return ((esx) this.f17874b).size();
            default:
                return ((geh) this.f17874b).f17983f.size();
        }
    }
}
