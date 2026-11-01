package com.bytedance.sdk.component.o.p;

import com.bytedance.sdk.component.o.no;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class p extends dq {
    public p(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, new com.bytedance.sdk.component.o.dq.dq(blockingQueue), new com.bytedance.sdk.component.o.dq.p(threadFactory, 2));
        dq();
    }

    public p(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, new com.bytedance.sdk.component.o.dq.dq(blockingQueue), new com.bytedance.sdk.component.o.dq.p(threadFactory, 2), rejectedExecutionHandler);
        dq();
    }

    private ExecutorService d() {
        com.bytedance.sdk.component.o.p pVar = com.bytedance.sdk.component.o.p.dq;
        return pVar.dq("PThreadPoolExecutor", pVar.dq(getQueue()));
    }

    private long dq(long j) {
        long min = Math.min(j, getKeepAliveTime(TimeUnit.SECONDS));
        if (min > 1) {
            return min;
        }
        return 1L;
    }

    private void dq() {
        if (no.f2029d.s()) {
            if (!allowsCoreThreadTimeOut()) {
                setKeepAliveTime(dq(20L), TimeUnit.SECONDS);
                try {
                    super.allowCoreThreadTimeOut(true);
                } catch (Throwable unused) {
                }
            }
            com.bytedance.sdk.component.o.p.dq.dq(this);
        }
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void allowCoreThreadTimeOut(boolean z) {
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor, com.bytedance.sdk.component.o.d
    public void execute(Runnable runnable) {
        if (!no.f2029d.s()) {
            super.execute(runnable);
            return;
        }
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e2) {
            ExecutorService d2 = d();
            if (d2 == null) {
                throw e2;
            }
            d2.execute(runnable);
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void finalize() {
        super.finalize();
        shutdown();
        com.bytedance.sdk.component.o.p.dq.d(this);
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.ThreadPoolExecutor, com.bytedance.sdk.component.o.d
    public void setThreadFactory(ThreadFactory threadFactory) {
        super.setThreadFactory(new com.bytedance.sdk.component.o.dq.p(threadFactory, 2));
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public void shutdown() {
        super.shutdown();
        com.bytedance.sdk.component.o.p.dq.d(this);
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public List shutdownNow() {
        com.bytedance.sdk.component.o.p.dq.d(this);
        return super.shutdownNow();
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public Future submit(Runnable runnable) {
        if (!no.f2029d.s()) {
            return super.submit(runnable);
        }
        try {
            return super.submit(runnable);
        } catch (OutOfMemoryError e2) {
            ExecutorService d2 = d();
            if (d2 != null) {
                return d2.submit(runnable);
            }
            throw e2;
        }
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public <T> Future<T> submit(Runnable runnable, T t) {
        if (!no.f2029d.s()) {
            return super.submit(runnable, t);
        }
        try {
            return super.submit(runnable, t);
        } catch (OutOfMemoryError e2) {
            ExecutorService d2 = d();
            if (d2 != null) {
                return d2.submit(runnable, t);
            }
            throw e2;
        }
    }

    @Override // com.bytedance.sdk.component.o.p.dq, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.bytedance.sdk.component.o.d
    public <T> Future<T> submit(Callable<T> callable) {
        if (!no.f2029d.s()) {
            return super.submit(callable);
        }
        try {
            return super.submit(callable);
        } catch (OutOfMemoryError e2) {
            ExecutorService d2 = d();
            if (d2 != null) {
                return d2.submit(callable);
            }
            throw e2;
        }
    }
}
