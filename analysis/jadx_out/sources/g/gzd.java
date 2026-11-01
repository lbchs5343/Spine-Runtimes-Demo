package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzgdp;

/* loaded from: classes3.dex */
public final class gzd extends aub {
    @Override // g.aub
    public final /* bridge */ /* synthetic */ Object d(Object obj, Object obj2) {
        zzgdp zzgdpVar = (zzgdp) obj;
        dcy zza = zzgdpVar.zza(obj2);
        zzfwq.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgdpVar);
        return zza;
    }

    @Override // g.aub
    public final /* synthetic */ void e(Object obj) {
        af((dcy) obj);
    }
}
