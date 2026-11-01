package g;

import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzfzt;
import com.google.android.gms.internal.ads.zzgbu;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class cqp extends zzfzt {

    /* renamed from: a, reason: collision with root package name */
    public final transient Object f13343a;

    public cqp(Object obj) {
        obj.getClass();
        this.f13343a = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f13343a.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int e(int i, Object[] objArr) {
        objArr[i] = this.f13343a;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f13343a.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new ckh(this.f13343a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return tn.ad("[", this.f13343a.toString(), "]");
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj
    public final zzfzo zzd() {
        return zzfzo.zzo(this.f13343a);
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj
    /* renamed from: zze */
    public final zzgbu iterator() {
        return new ckh(this.f13343a);
    }
}
