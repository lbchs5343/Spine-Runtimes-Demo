package g;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes3.dex */
public abstract class ahp extends eye {
    private final Executor zza;
    final /* synthetic */ zy zzb;

    public ahp(zy zyVar, Executor executor) {
        this.zzb = zyVar;
        executor.getClass();
        this.zza = executor;
    }

    public final void a() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e2) {
            this.zzb.zzd(e2);
        }
    }

    @Override // g.eye
    public final void b(Throwable th) {
        zy zyVar = this.zzb;
        zyVar.aj = null;
        if (th instanceof ExecutionException) {
            zyVar.zzd(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            zyVar.cancel(false);
        } else {
            zyVar.zzd(th);
        }
    }

    @Override // g.eye
    public final void c(Object obj) {
        this.zzb.aj = null;
        ((gaj) this).zza.zzc(obj);
    }

    @Override // g.eye
    public final boolean d() {
        return this.zzb.isDone();
    }
}
