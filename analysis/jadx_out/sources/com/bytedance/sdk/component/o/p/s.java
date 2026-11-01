package com.bytedance.sdk.component.o.p;

import com.bytedance.sdk.component.o.no;
import g.ayr;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class s extends ScheduledThreadPoolExecutor implements AutoCloseable {
    private final ConcurrentHashMap dq;

    public s(int i, ThreadFactory threadFactory) {
        super(i, new com.bytedance.sdk.component.o.dq.p(threadFactory, 8));
        this.dq = new ConcurrentHashMap();
        dq();
    }

    private void dq() {
        if (!no.f2029d.s() || allowsCoreThreadTimeOut()) {
            return;
        }
        TimeUnit timeUnit = TimeUnit.SECONDS;
        super.setKeepAliveTime(Math.max(10L, getKeepAliveTime(timeUnit)), timeUnit);
        super.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void allowCoreThreadTimeOut(boolean z) {
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        ayr.p(this);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor
    public RunnableScheduledFuture decorateTask(Runnable runnable, RunnableScheduledFuture runnableScheduledFuture) {
        if (!no.f2029d.s()) {
            return super.decorateTask(runnable, runnableScheduledFuture);
        }
        RunnableScheduledFuture runnableScheduledFuture2 = (RunnableScheduledFuture) this.dq.get(runnable);
        if (runnableScheduledFuture2 != null) {
            return runnableScheduledFuture2;
        }
        RunnableScheduledFuture decorateTask = super.decorateTask(runnable, runnableScheduledFuture);
        this.dq.put(runnable, decorateTask);
        return decorateTask;
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor
    public RunnableScheduledFuture decorateTask(Callable callable, RunnableScheduledFuture runnableScheduledFuture) {
        if (!no.f2029d.s()) {
            return super.decorateTask(callable, runnableScheduledFuture);
        }
        RunnableScheduledFuture runnableScheduledFuture2 = (RunnableScheduledFuture) this.dq.get(callable);
        if (runnableScheduledFuture2 != null) {
            return runnableScheduledFuture2;
        }
        RunnableScheduledFuture decorateTask = super.decorateTask(callable, runnableScheduledFuture);
        this.dq.put(callable, decorateTask);
        return decorateTask;
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Runnable runnable, final long j, final TimeUnit timeUnit) {
        if (!no.f2029d.s()) {
            return super.schedule(runnable, j, timeUnit);
        }
        try {
            ScheduledFuture<?> schedule = super.schedule(runnable, j, timeUnit);
            this.dq.remove(runnable);
            return schedule;
        } catch (OutOfMemoryError unused) {
            com.bytedance.sdk.component.o.p.dq.dq("PThreadScheduledThreadPoolExecutor");
            no noVar = no.f2029d;
            noVar.no().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.s.1
                @Override // java.lang.Runnable
                public void run() {
                    s.super.schedule(runnable, j, timeUnit);
                    s.this.dq.remove(runnable);
                }
            }, noVar.p(), TimeUnit.MILLISECONDS);
            return (ScheduledFuture) this.dq.get(runnable);
        }
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Callable callable, final long j, final TimeUnit timeUnit) {
        if (!no.f2029d.s()) {
            return super.schedule(callable, j, timeUnit);
        }
        try {
            ScheduledFuture schedule = super.schedule(callable, j, timeUnit);
            this.dq.remove(callable);
            return schedule;
        } catch (OutOfMemoryError unused) {
            com.bytedance.sdk.component.o.p.dq.dq("PThreadScheduledThreadPoolExecutor");
            no noVar = no.f2029d;
            noVar.no().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.s.4
                @Override // java.lang.Runnable
                public void run() {
                    s.super.schedule(callable, j, timeUnit);
                    s.this.dq.remove(callable);
                }
            }, noVar.p(), TimeUnit.MILLISECONDS);
            return (ScheduledFuture) this.dq.get(callable);
        }
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleAtFixedRate(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        if (!no.f2029d.s()) {
            return super.scheduleAtFixedRate(runnable, j, j2, timeUnit);
        }
        try {
            ScheduledFuture<?> scheduleAtFixedRate = super.scheduleAtFixedRate(runnable, j, j2, timeUnit);
            this.dq.remove(runnable);
            return scheduleAtFixedRate;
        } catch (OutOfMemoryError unused) {
            com.bytedance.sdk.component.o.p.dq.dq("PThreadScheduledThreadPoolExecutor");
            no noVar = no.f2029d;
            noVar.no().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.s.2
                @Override // java.lang.Runnable
                public void run() {
                    s.super.scheduleAtFixedRate(runnable, j, j2, timeUnit);
                    s.this.dq.remove(runnable);
                }
            }, noVar.p(), TimeUnit.MILLISECONDS);
            return (ScheduledFuture) this.dq.get(runnable);
        }
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleWithFixedDelay(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        if (!no.f2029d.s()) {
            return super.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
        }
        try {
            ScheduledFuture<?> scheduleWithFixedDelay = super.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
            this.dq.remove(runnable);
            return scheduleWithFixedDelay;
        } catch (OutOfMemoryError unused) {
            com.bytedance.sdk.component.o.p.dq.dq("PThreadScheduledThreadPoolExecutor");
            no noVar = no.f2029d;
            noVar.no().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.s.3
                @Override // java.lang.Runnable
                public void run() {
                    s.super.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
                    s.this.dq.remove(runnable);
                }
            }, noVar.p(), TimeUnit.MILLISECONDS);
            return (ScheduledFuture) this.dq.get(runnable);
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setKeepAliveTime(long j, TimeUnit timeUnit) {
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setThreadFactory(ThreadFactory threadFactory) {
        super.setThreadFactory(new com.bytedance.sdk.component.o.dq.p(threadFactory, 8));
    }
}
