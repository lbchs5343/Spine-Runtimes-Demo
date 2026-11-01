package g;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class cxj extends fee implements fjt {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f13688a;

    public cxj(Executor executor) {
        Method method;
        this.f13688a = executor;
        Method method2 = faw.f16493a;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = faw.f16493a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.f13688a;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // g.fjt
    public final void d(long j, gsn gsnVar) {
        Executor executor = this.f13688a;
        ScheduledFuture<?> scheduledFuture = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            gfh gfhVar = new gfh(this, 22, gsnVar);
            boj bojVar = gsnVar.o;
            try {
                scheduledFuture = scheduledExecutorService.schedule(gfhVar, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e2) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e2);
                kj.aa(bojVar, cancellationException);
            }
        }
        if (scheduledFuture != null) {
            gsnVar.ad(new cby(0, scheduledFuture));
        } else {
            bzr.t.d(j, gsnVar);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof cxj) && ((cxj) obj).f13688a == this.f13688a;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f13688a);
    }

    @Override // g.cpk
    public final void i(boj bojVar, Runnable runnable) {
        try {
            this.f13688a.execute(runnable);
        } catch (RejectedExecutionException e2) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e2);
            kj.aa(bojVar, cancellationException);
            uj.f20096b.i(bojVar, runnable);
        }
    }

    @Override // g.cpk
    public final String toString() {
        return this.f13688a.toString();
    }
}
