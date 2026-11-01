package com.bytedance.sdk.component.o.p;

import com.bytedance.sdk.component.o.dq.iw;
import com.bytedance.sdk.component.o.no;
import g.ayr;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class dq extends ThreadPoolExecutor implements com.bytedance.sdk.component.o.d, AutoCloseable {
    public static final RejectedExecutionHandler dq = new RejectedExecutionHandler() { // from class: com.bytedance.sdk.component.o.p.dq.1
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            if (threadPoolExecutor != null && (threadPoolExecutor instanceof ScheduledThreadPoolExecutor) && threadPoolExecutor.getCorePoolSize() == 1) {
                no noVar = no.f2029d;
                ScheduledExecutorService no = noVar.no();
                if (no.isShutdown() || no.isTerminated()) {
                    noVar.kk().execute(runnable);
                } else {
                    no.execute(runnable);
                }
            } else {
                no.f2029d.kk().execute(runnable);
            }
            no.f2029d.mn();
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.o.d f2037d;

    public dq(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        this(i, i2, j, timeUnit, blockingQueue, threadFactory, dq);
    }

    public dq(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.f2037d = new iw(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler, this);
        no.f2029d.mn();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void allowCoreThreadTimeOut(boolean z) {
        this.f2037d.allowCoreThreadTimeOut(z);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public boolean allowsCoreThreadTimeOut() {
        return this.f2037d.allowsCoreThreadTimeOut();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f2037d.awaitTermination(j, timeUnit);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        ayr.o(this);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor, com.bytedance.sdk.component.o.d
    public void execute(Runnable runnable) {
        this.f2037d.execute(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public int getActiveCount() {
        return this.f2037d.getActiveCount();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public long getCompletedTaskCount() {
        return this.f2037d.getCompletedTaskCount();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public int getCorePoolSize() {
        return this.f2037d.getCorePoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public long getKeepAliveTime(TimeUnit timeUnit) {
        return this.f2037d.getKeepAliveTime(timeUnit);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public int getLargestPoolSize() {
        return this.f2037d.getLargestPoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public int getMaximumPoolSize() {
        return this.f2037d.getMaximumPoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public int getPoolSize() {
        return this.f2037d.getPoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public BlockingQueue<Runnable> getQueue() {
        return this.f2037d.getQueue();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public RejectedExecutionHandler getRejectedExecutionHandler() {
        return this.f2037d.getRejectedExecutionHandler();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public long getTaskCount() {
        return this.f2037d.getTaskCount();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public ThreadFactory getThreadFactory() {
        return this.f2037d.getThreadFactory();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public boolean isShutdown() {
        return this.f2037d.isShutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public boolean isTerminated() {
        return this.f2037d.isTerminated();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public boolean isTerminating() {
        return this.f2037d.isTerminating();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public int prestartAllCoreThreads() {
        return this.f2037d.prestartAllCoreThreads();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public boolean prestartCoreThread() {
        return this.f2037d.prestartCoreThread();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void purge() {
        this.f2037d.purge();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public boolean remove(Runnable runnable) {
        return this.f2037d.remove(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void setCorePoolSize(int i) {
        this.f2037d.setCorePoolSize(i);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void setKeepAliveTime(long j, TimeUnit timeUnit) {
        this.f2037d.setKeepAliveTime(j, timeUnit);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void setMaximumPoolSize(int i) {
        this.f2037d.setMaximumPoolSize(i);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void setRejectedExecutionHandler(RejectedExecutionHandler rejectedExecutionHandler) {
        this.f2037d.setRejectedExecutionHandler(rejectedExecutionHandler);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void setThreadFactory(ThreadFactory threadFactory) {
        threadFactory.getClass();
        this.f2037d.setThreadFactory(threadFactory);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public void shutdown() {
        this.f2037d.shutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public List<Runnable> shutdownNow() {
        return this.f2037d.shutdownNow();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public Future<?> submit(Runnable runnable) {
        return this.f2037d.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f2037d.submit(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f2037d.submit(callable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public String toString() {
        com.bytedance.sdk.component.o.d dVar = this.f2037d;
        return dVar != null ? dVar.toString() : super.toString();
    }
}
