package com.google.android.gms.internal.ads;

import g.axh;
import g.dld;
import g.eaf;
import g.gjx;
import g.gzz;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzgey {
    public static Executor a(Executor executor, axh axhVar) {
        executor.getClass();
        return executor == eaf.zza ? executor : new gzz(executor, axhVar);
    }

    public static zzges zza(ExecutorService executorService) {
        return executorService instanceof zzges ? (zzges) executorService : executorService instanceof ScheduledExecutorService ? new dld((ScheduledExecutorService) executorService) : new gjx(executorService);
    }

    public static Executor zzb() {
        return eaf.zza;
    }
}
