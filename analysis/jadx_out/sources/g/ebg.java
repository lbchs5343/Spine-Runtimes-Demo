package g;

import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzdoc;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ebg implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdoc f15231a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f15232b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15233c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbjr f15234d;

    public /* synthetic */ ebg(zzdoc zzdocVar, WeakReference weakReference, String str, zzbjr zzbjrVar) {
        this.f15231a = zzdocVar;
        this.f15232b = weakReference;
        this.f15233c = str;
        this.f15234d = zzbjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        Object obj2 = this.f15232b.get();
        if (obj2 == null) {
            this.f15231a.zzn(this.f15233c, this);
        } else {
            this.f15234d.zza(obj2, map);
        }
    }
}
