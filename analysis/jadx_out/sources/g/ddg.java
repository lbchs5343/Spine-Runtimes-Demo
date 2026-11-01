package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzgdp;

/* loaded from: classes3.dex */
public final class ddg extends del {
    @Override // g.del
    public final /* bridge */ /* synthetic */ Object a(Object obj, Throwable th) {
        zzgdp zzgdpVar = (zzgdp) obj;
        dcy zza = zzgdpVar.zza(th);
        zzfwq.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgdpVar);
        return zza;
    }

    @Override // g.del
    public final /* synthetic */ void b(Object obj) {
        af((dcy) obj);
    }
}
