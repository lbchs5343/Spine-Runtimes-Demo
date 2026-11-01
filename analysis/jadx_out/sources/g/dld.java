package g;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class dld extends gjx implements ScheduledExecutorService {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f14356a;

    public dld(ScheduledExecutorService scheduledExecutorService) {
        super((ExecutorService) scheduledExecutorService);
        this.f14356a = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzgdc, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        fid.d(this);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        due dueVar = new due(Executors.callable(runnable, null));
        return new clj(dueVar, this.f14356a.schedule(dueVar, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        due dueVar = new due(callable);
        return new clj(dueVar, this.f14356a.schedule(dueVar, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        fgz fgzVar = new fgz(runnable);
        return new clj(fgzVar, this.f14356a.scheduleAtFixedRate(fgzVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        fgz fgzVar = new fgz(runnable);
        return new clj(fgzVar, this.f14356a.scheduleWithFixedDelay(fgzVar, j, j2, timeUnit));
    }
}
