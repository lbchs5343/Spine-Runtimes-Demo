package g;

import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class fne extends eye {
    final /* synthetic */ due zza;
    private final Callable zzb;

    public fne(due dueVar, Callable callable) {
        this.zza = dueVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // g.eye
    public final Object _bc() {
        return this.zzb.call();
    }

    @Override // g.eye
    public final void b(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // g.eye
    public final void c(Object obj) {
        this.zza.zzc(obj);
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
