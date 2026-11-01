package com.bytedance.sdk.component.o.ox;

import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.o.no;
import com.bytedance.sdk.component.utils.ig;
import g.ayr;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class dq extends ThreadPoolExecutor implements AutoCloseable {
    public dq(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        this(i, i2, j, timeUnit, blockingQueue, threadFactory, com.bytedance.sdk.component.o.p.dq.dq);
    }

    public dq(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
    }

    private void d(Runnable runnable) {
        try {
            no noVar = no.f2029d;
            if (noVar.mp()) {
                ig.d("BaseThreadPool", "crashing drop task :".concat(String.valueOf(runnable)));
                noVar.no().submit(runnable);
            } else if (runnable instanceof com.bytedance.sdk.component.o.dq.ox) {
                super.execute(runnable);
            } else {
                super.execute(new com.bytedance.sdk.component.o.dq.ox(runnable));
            }
        } catch (OutOfMemoryError e2) {
            if (no.f2029d.d()) {
                mn.dq(false);
            }
            dq(runnable, e2);
        }
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        ayr.l(this);
    }

    public void dq(Runnable runnable) {
        d(runnable);
    }

    public abstract void dq(Runnable runnable, OutOfMemoryError outOfMemoryError);

    public boolean dq() {
        return false;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        d(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setCorePoolSize(int i) {
        try {
            super.setCorePoolSize(i);
        } catch (Exception e2) {
            ig.dq("BaseThreadPool", e2.getMessage());
        } catch (OutOfMemoryError e3) {
            dq(null, e3);
        }
    }
}
