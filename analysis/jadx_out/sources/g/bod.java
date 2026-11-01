package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzgdo;

/* loaded from: classes3.dex */
public final class bod extends eye {
    final /* synthetic */ due zza;
    private final zzgdo zzb;

    public bod(due dueVar, zzgdo zzgdoVar) {
        this.zza = dueVar;
        this.zzb = zzgdoVar;
    }

    @Override // g.eye
    public final /* bridge */ /* synthetic */ Object _bc() {
        zzgdo zzgdoVar = this.zzb;
        dcy zza = zzgdoVar.zza();
        zzfwq.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgdoVar);
        return zza;
    }

    @Override // g.eye
    public final void b(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // g.eye
    public final /* synthetic */ void c(Object obj) {
        this.zza.af((dcy) obj);
    }

    @Override // g.eye
    public final boolean d() {
        return this.zza.isDone();
    }

    @Override // g.eye
    public final String e() {
        return this.zzb.toString();
    }
}
