package g;

import com.google.android.gms.internal.ads.zzfwn;
import j$.util.Objects;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class eep extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15403a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ esx f15404b;

    public /* synthetic */ eep(esx esxVar, int i) {
        this.f15403a = i;
        this.f15404b = esxVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f15403a) {
            case 0:
                this.f15404b.clear();
                break;
            default:
                this.f15404b.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f15403a) {
            case 0:
                esx esxVar = this.f15404b;
                Map l = esxVar.l();
                if (l != null) {
                    return l.entrySet().contains(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    int k = esxVar.k(entry.getKey());
                    if (k != -1 && zzfwn.zza(esxVar.s()[k], entry.getValue())) {
                        return true;
                    }
                }
                return false;
            default:
                return this.f15404b.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f15403a) {
            case 0:
                esx esxVar = this.f15404b;
                Map l = esxVar.l();
                return l != null ? l.entrySet().iterator() : new gae(esxVar, 1);
            default:
                esx esxVar2 = this.f15404b;
                Map l2 = esxVar2.l();
                return l2 != null ? l2.keySet().iterator() : new gae(esxVar2, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.f15403a) {
            case 0:
                esx esxVar = this.f15404b;
                Map l = esxVar.l();
                if (l != null) {
                    return l.entrySet().remove(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (!esxVar.o()) {
                        int t = esxVar.t();
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        Object obj2 = esxVar.f16116g;
                        Objects.requireNonNull(obj2);
                        int aj = eyt.aj(key, value, t, obj2, esxVar.n(), esxVar.q(), esxVar.s());
                        if (aj != -1) {
                            esxVar.m(aj, t);
                            esxVar.j--;
                            esxVar.f16115f += 32;
                            return true;
                        }
                    }
                }
                return false;
            default:
                esx esxVar2 = this.f15404b;
                Map l2 = esxVar2.l();
                return l2 != null ? l2.keySet().remove(obj) : esxVar2.r(obj) != esx.f16110a;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f15403a) {
        }
        return this.f15404b.size();
    }
}
