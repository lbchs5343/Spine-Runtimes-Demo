package g;

import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzfzt;
import com.google.android.gms.internal.ads.zzgbu;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class nm extends zzfzt {

    /* renamed from: a, reason: collision with root package name */
    public final transient fqf f19707a;

    /* renamed from: b, reason: collision with root package name */
    public final transient Object[] f19708b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f19709c;

    public nm(fqf fqfVar, Object[] objArr, int i) {
        this.f19707a = fqfVar;
        this.f19708b = objArr;
        this.f19709c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.f19707a.get(key));
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int e(int i, Object[] objArr) {
        return zzd().e(i, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfzt
    public final zzfzo m() {
        return new dyj(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f19709c;
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj
    /* renamed from: zze */
    public final zzgbu iterator() {
        return zzd().listIterator(0);
    }
}
