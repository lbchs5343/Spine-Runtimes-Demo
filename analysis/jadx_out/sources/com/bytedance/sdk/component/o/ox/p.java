package com.bytedance.sdk.component.o.ox;

import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.o.no;
import com.bytedance.sdk.component.utils.ig;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class p extends dq {
    private ScheduledFuture<?> dq;

    public p(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory);
    }

    private void ox() {
        BlockingQueue<Runnable> queue = getQueue();
        int ia = no.f2029d.ia();
        if (getCorePoolSize() == ia || queue == null || queue.size() != 0) {
            return;
        }
        setCorePoolSize(ia);
    }

    private boolean p() {
        BlockingQueue<Runnable> queue = getQueue();
        int corePoolSize = getCorePoolSize();
        int i = corePoolSize * 2;
        int min = Math.min(corePoolSize + 4, mn.dq);
        if (corePoolSize >= min || queue == null || queue.size() < i) {
            return false;
        }
        try {
            setCorePoolSize(min);
            return true;
        } catch (Exception e2) {
            ig.dq("BizCoreThreadPool", e2.getMessage());
            return false;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (mn.s()) {
            ox();
        }
    }

    public void d() {
        ScheduledFuture<?> scheduledFuture = this.dq;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    @Override // com.bytedance.sdk.component.o.ox.dq
    public void dq(Runnable runnable) {
        if (runnable instanceof com.bytedance.sdk.component.o.dq.ox) {
            ((com.bytedance.sdk.component.o.dq.ox) runnable).dq(false);
        }
        super.dq(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e A[RETURN] */
    @Override // com.bytedance.sdk.component.o.ox.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        boolean offer;
        boolean z = false;
        if (runnable != null) {
            try {
                offer = getQueue().offer(runnable);
            } catch (Throwable unused) {
                offer = z;
                if (offer) {
                }
            }
        } else {
            offer = true;
            try {
                mn.dq(false);
            } catch (Throwable unused2) {
                z = true;
                offer = z;
                if (offer) {
                }
            }
        }
        try {
            allowCoreThreadTimeOut(false);
        } catch (Throwable unused3) {
            z = offer;
            offer = z;
            if (offer) {
            }
        }
        if (offer) {
            throw outOfMemoryError;
        }
    }

    @Override // com.bytedance.sdk.component.o.ox.dq
    public boolean dq() {
        BlockingQueue<Runnable> queue = getQueue();
        return queue != null && queue.size() > getCorePoolSize() * 2;
    }

    @Override // com.bytedance.sdk.component.o.ox.dq, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (mn.s()) {
            p();
        }
        super.execute(runnable);
    }
}
