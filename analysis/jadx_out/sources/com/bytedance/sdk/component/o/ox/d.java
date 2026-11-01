package com.bytedance.sdk.component.o.ox;

import com.bytedance.sdk.component.o.no;
import com.bytedance.sdk.component.utils.ig;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d extends dq {
    public d(int i, int i2, long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, new SynchronousQueue(), threadFactory);
        try {
            allowCoreThreadTimeOut(true);
        } catch (Throwable unused) {
        }
    }

    private boolean d(Runnable runnable) {
        ThreadPoolExecutor kk = no.f2029d.kk();
        if (kk.getQueue().size() != 0 || kk.getActiveCount() >= kk.getCorePoolSize() - 1) {
            return false;
        }
        kk.execute(new ox(runnable));
        return true;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        Runnable poll;
        super.afterExecute(runnable, th);
        BlockingQueue<Runnable> queue = no.f2029d.kk().getQueue();
        if (queue.size() == 0) {
            return;
        }
        int activeCount = getActiveCount();
        int maximumPoolSize = getMaximumPoolSize();
        if ((activeCount < maximumPoolSize && activeCount >= maximumPoolSize - getCorePoolSize()) || isShutdown() || isTerminated() || isTerminating() || (poll = queue.poll()) == null) {
            return;
        }
        dq(poll);
    }

    @Override // com.bytedance.sdk.component.o.ox.dq
    public void dq(Runnable runnable) {
        if (runnable instanceof com.bytedance.sdk.component.o.dq.ox) {
            ((com.bytedance.sdk.component.o.dq.ox) runnable).d(false);
        }
        super.dq(runnable);
    }

    @Override // com.bytedance.sdk.component.o.ox.dq
    public void dq(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        if (runnable != null) {
            no.f2029d.kk().execute(new ox(runnable));
        }
        try {
            allowCoreThreadTimeOut(false);
        } catch (Exception e2) {
            ig.ox("BigThreadPool", e2);
        }
    }

    @Override // com.bytedance.sdk.component.o.ox.dq
    public boolean dq() {
        return getActiveCount() >= getMaximumPoolSize();
    }

    @Override // com.bytedance.sdk.component.o.ox.dq, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (runnable instanceof ox) {
            super.execute(runnable);
        } else {
            if (d(runnable)) {
                return;
            }
            if (dq()) {
                no.f2029d.kk().execute(new ox(runnable));
            } else {
                super.execute(runnable);
            }
        }
    }
}
