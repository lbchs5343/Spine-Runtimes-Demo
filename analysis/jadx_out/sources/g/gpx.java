package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfzz;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class gpx extends bhi implements zzfzz, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public final transient Map f18557d;

    /* renamed from: e, reason: collision with root package name */
    public transient int f18558e;

    /* renamed from: f, reason: collision with root package name */
    public final transient dys f18559f;

    public gpx(Map map, dys dysVar) {
        zzfwq.zze(map.isEmpty());
        this.f18557d = map;
        this.f18559f = dysVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgam
    public final int zze() {
        return this.f18558e;
    }

    @Override // com.google.android.gms.internal.ads.zzgam
    public final void zzp() {
        Map map = this.f18557d;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f18558e = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgam
    public final boolean zzq(Object obj, Object obj2) {
        Map map = this.f18557d;
        Collection collection = (Collection) map.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.f18558e++;
            return true;
        }
        List list = (List) this.f18559f.zza();
        if (!list.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f18558e++;
        map.put(obj, list);
        return true;
    }
}
