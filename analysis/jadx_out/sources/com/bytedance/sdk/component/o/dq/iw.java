package com.bytedance.sdk.component.o.dq;

import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.o.no;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class iw implements com.bytedance.sdk.component.o.d {

    /* renamed from: d, reason: collision with root package name */
    private final BlockingQueue<Runnable> f2022d;
    private final AtomicInteger dq = new AtomicInteger(dq(-536870912, 0));
    private volatile long ia;
    private volatile int ig;
    private volatile ThreadFactory iw;
    private volatile int kk;
    private volatile RejectedExecutionHandler mn;
    private ThreadPoolExecutor mp;
    private boolean no;
    private final ThreadPoolExecutor o;
    private final ReentrantLock ox;
    private final Condition p;
    private int s;

    public iw(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler, ThreadPoolExecutor threadPoolExecutor) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.ox = reentrantLock;
        this.p = reentrantLock.newCondition();
        if (i < 0 || i2 <= 0 || i2 < i || j < 0) {
            throw new IllegalArgumentException();
        }
        if (blockingQueue == null || threadFactory == null || rejectedExecutionHandler == null) {
            throw null;
        }
        this.kk = i;
        this.ig = i2;
        this.f2022d = blockingQueue;
        this.ia = timeUnit.toNanos(j);
        this.iw = threadFactory;
        this.mn = rejectedExecutionHandler;
        this.o = threadPoolExecutor;
    }

    private static int d(int i) {
        return i & 536870911;
    }

    private static boolean d(int i, int i2) {
        return i < i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0083, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean d(Runnable runnable, boolean z) {
        loop0: while (true) {
            int i = this.dq.get();
            int dq = dq(i);
            boolean z2 = false;
            if (dq < 0 || (dq == 0 && runnable == null && !this.f2022d.isEmpty())) {
                do {
                    int d2 = d(i);
                    if (d2 >= 536870911) {
                        break loop0;
                    }
                    if (d2 >= (z ? this.kk : this.ig)) {
                        break loop0;
                    }
                    if (p(i)) {
                        try {
                            ReentrantLock reentrantLock = this.ox;
                            reentrantLock.lock();
                            try {
                                int dq2 = dq(this.dq.get());
                                if (dq2 < 0 || (dq2 == 0 && runnable == null)) {
                                    dq().execute(runnable);
                                    int d3 = d(this.dq.get());
                                    if (d3 > this.s) {
                                        this.s = d3;
                                    }
                                    z2 = true;
                                }
                                if (!z2) {
                                }
                                return z2;
                            } finally {
                                reentrantLock.unlock();
                            }
                        } finally {
                            iw();
                        }
                    }
                    i = this.dq.get();
                } while (dq(i) == dq);
            }
        }
        return false;
    }

    private static int dq(int i) {
        return i & (-536870912);
    }

    private static int dq(int i, int i2) {
        return i | i2;
    }

    private void dq(ox oxVar) {
        int i = this.dq.get();
        if (d(i) < this.kk) {
            if (d((Runnable) oxVar, true)) {
                no.f2029d.mn();
                return;
            }
            i = this.dq.get();
        }
        if (d(i) == 0) {
            if (d((Runnable) oxVar, false)) {
                no.f2029d.mn();
                return;
            }
            i = this.dq.get();
        }
        if (ox(i) && this.f2022d.offer(oxVar)) {
            if (ox(this.dq.get()) || !remove(oxVar)) {
                no.f2029d.mn();
                return;
            } else {
                dq(oxVar.dq());
                no.f2029d.mn();
                return;
            }
        }
        if (d(i) < this.ig && d((Runnable) oxVar, false)) {
            no.f2029d.mn();
        } else {
            dq(oxVar.dq());
            no.f2029d.mn();
        }
    }

    private void iw() {
        ReentrantLock reentrantLock = this.ox;
        reentrantLock.lock();
        try {
            p();
            d();
        } finally {
            reentrantLock.unlock();
        }
    }

    private void iw(int i) {
        int i2;
        do {
            i2 = this.dq.get();
            if (ox(i2, i)) {
                return;
            }
        } while (!this.dq.compareAndSet(i2, dq(i, d(i2))));
    }

    private static boolean ox(int i) {
        return i < 0;
    }

    private static boolean ox(int i, int i2) {
        return i >= i2;
    }

    private void p() {
        while (!s(this.dq.get())) {
        }
    }

    private boolean p(int i) {
        return this.dq.compareAndSet(i, i + 1);
    }

    private List<Runnable> s() {
        BlockingQueue<Runnable> blockingQueue = this.f2022d;
        ArrayList arrayList = new ArrayList();
        blockingQueue.drainTo(arrayList);
        if (!blockingQueue.isEmpty()) {
            for (Runnable runnable : (Runnable[]) blockingQueue.toArray(new Runnable[0])) {
                if (blockingQueue.remove(runnable)) {
                    if (runnable instanceof ox) {
                        arrayList.add(((ox) runnable).dq);
                    } else {
                        arrayList.add(runnable);
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean s(int i) {
        return this.dq.compareAndSet(i, i - 1);
    }

    @Override // com.bytedance.sdk.component.o.d
    public void allowCoreThreadTimeOut(boolean z) {
        this.no = true;
    }

    @Override // com.bytedance.sdk.component.o.d
    public boolean allowsCoreThreadTimeOut() {
        return this.no;
    }

    @Override // com.bytedance.sdk.component.o.d
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.ox;
        reentrantLock.lock();
        while (!ox(this.dq.get(), 1610612736)) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.p.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return true;
    }

    public final void d() {
        while (true) {
            int i = this.dq.get();
            if (ox(i) || ox(i, C.ENCODING_PCM_32BIT)) {
                return;
            }
            if ((dq(i) == 0 && !this.f2022d.isEmpty()) || d(i) != 0) {
                return;
            }
            ReentrantLock reentrantLock = this.ox;
            reentrantLock.lock();
            try {
                if (this.dq.compareAndSet(i, dq(C.ENCODING_PCM_32BIT, 0))) {
                    this.dq.set(dq(1610612736, 0));
                    this.p.signalAll();
                    return;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public void d(Runnable runnable) {
        p();
    }

    public ThreadPoolExecutor dq() {
        if (this.mp == null) {
            this.mp = no.f2029d.o();
        }
        return this.mp;
    }

    public final void dq(Runnable runnable) {
        this.mn.rejectedExecution(runnable, this.o);
    }

    public void dq(Runnable runnable, boolean z) {
        if (!d(this.dq.get(), C.ENCODING_PCM_A_LAW)) {
            d();
            return;
        }
        Runnable ox = ox();
        if (ox != null) {
            dq().execute(ox);
        } else {
            d(ox);
        }
    }

    @Override // com.bytedance.sdk.component.o.d
    public void execute(Runnable runnable) {
        runnable.getClass();
        if (runnable instanceof ox) {
            ((ox) runnable).dq(this);
        } else {
            runnable = new ox(runnable, this);
        }
        dq((ox) runnable);
    }

    public void finalize() {
        shutdown();
    }

    @Override // com.bytedance.sdk.component.o.d
    public int getActiveCount() {
        return d(this.dq.get());
    }

    @Override // com.bytedance.sdk.component.o.d
    public long getCompletedTaskCount() {
        return 0L;
    }

    @Override // com.bytedance.sdk.component.o.d
    public int getCorePoolSize() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.component.o.d
    public long getKeepAliveTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.ia, TimeUnit.NANOSECONDS);
    }

    @Override // com.bytedance.sdk.component.o.d
    public int getLargestPoolSize() {
        return 0;
    }

    @Override // com.bytedance.sdk.component.o.d
    public int getMaximumPoolSize() {
        return this.ig;
    }

    @Override // com.bytedance.sdk.component.o.d
    public int getPoolSize() {
        if (ox(this.dq.get(), C.ENCODING_PCM_32BIT)) {
            return 0;
        }
        return d(this.dq.get());
    }

    @Override // com.bytedance.sdk.component.o.d
    public BlockingQueue<Runnable> getQueue() {
        return this.f2022d;
    }

    @Override // com.bytedance.sdk.component.o.d
    public RejectedExecutionHandler getRejectedExecutionHandler() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.component.o.d
    public long getTaskCount() {
        return 0L;
    }

    @Override // com.bytedance.sdk.component.o.d
    public ThreadFactory getThreadFactory() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.component.o.d
    public boolean isShutdown() {
        return !ox(this.dq.get());
    }

    @Override // com.bytedance.sdk.component.o.d
    public boolean isTerminated() {
        return ox(this.dq.get(), 1610612736);
    }

    @Override // com.bytedance.sdk.component.o.d
    public boolean isTerminating() {
        int i = this.dq.get();
        return !ox(i) && d(i, 1610612736);
    }

    public Runnable ox() {
        return this.f2022d.poll();
    }

    @Override // com.bytedance.sdk.component.o.d
    public int prestartAllCoreThreads() {
        return 0;
    }

    @Override // com.bytedance.sdk.component.o.d
    public boolean prestartCoreThread() {
        return false;
    }

    @Override // com.bytedance.sdk.component.o.d
    public void purge() {
        BlockingQueue<Runnable> blockingQueue = this.f2022d;
        try {
            Iterator<Runnable> it = blockingQueue.iterator();
            while (it.hasNext()) {
                Runnable next = it.next();
                if ((next instanceof Future) && ((Future) next).isCancelled()) {
                    it.remove();
                }
            }
        } catch (ConcurrentModificationException unused) {
            for (Object obj : blockingQueue.toArray()) {
                if ((obj instanceof Future) && ((Future) obj).isCancelled()) {
                    blockingQueue.remove(obj);
                }
            }
        }
        d();
    }

    @Override // com.bytedance.sdk.component.o.d
    public boolean remove(Runnable runnable) {
        boolean remove = this.f2022d.remove(runnable);
        d();
        return remove;
    }

    @Override // com.bytedance.sdk.component.o.d
    public void setCorePoolSize(int i) {
    }

    @Override // com.bytedance.sdk.component.o.d
    public void setKeepAliveTime(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        if (j == 0 && allowsCoreThreadTimeOut()) {
            throw new IllegalArgumentException("Core threads must have nonzero keep alive times");
        }
        this.ia = timeUnit.toNanos(j);
    }

    @Override // com.bytedance.sdk.component.o.d
    public void setMaximumPoolSize(int i) {
        if (i <= 0 || i < this.kk) {
            throw new IllegalArgumentException();
        }
        this.ig = i;
        this.dq.get();
    }

    @Override // com.bytedance.sdk.component.o.d
    public void setRejectedExecutionHandler(RejectedExecutionHandler rejectedExecutionHandler) {
        rejectedExecutionHandler.getClass();
        this.mn = rejectedExecutionHandler;
    }

    @Override // com.bytedance.sdk.component.o.d
    public void setThreadFactory(ThreadFactory threadFactory) {
        threadFactory.getClass();
        this.iw = threadFactory;
    }

    @Override // com.bytedance.sdk.component.o.d
    public void shutdown() {
        ReentrantLock reentrantLock = this.ox;
        reentrantLock.lock();
        try {
            iw(0);
            reentrantLock.unlock();
            d();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.o.d
    public List<Runnable> shutdownNow() {
        ReentrantLock reentrantLock = this.ox;
        reentrantLock.lock();
        try {
            iw(C.ENCODING_PCM_A_LAW);
            List<Runnable> s = s();
            reentrantLock.unlock();
            d();
            return s;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.o.d
    public Future<?> submit(Runnable runnable) {
        if (runnable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        execute(futureTask);
        return futureTask;
    }

    @Override // com.bytedance.sdk.component.o.d
    public <T> Future<T> submit(Runnable runnable, T t) {
        if (runnable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(runnable, t);
        execute(futureTask);
        return futureTask;
    }

    @Override // com.bytedance.sdk.component.o.d
    public <T> Future<T> submit(Callable<T> callable) {
        if (callable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(callable);
        execute(futureTask);
        return futureTask;
    }

    @Override // com.bytedance.sdk.component.o.d
    public String toString() {
        int i = this.dq.get();
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + "[" + (d(i, 0) ? "Running" : ox(i, 1610612736) ? "Terminated" : "Shutting down") + ", runnable name = , core size = " + this.kk + ", max size = " + this.ig + ", worker count = " + d(i) + ", queued tasks = " + this.f2022d.size() + "]";
    }
}
