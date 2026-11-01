package com.bytedance.sdk.component.o;

import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class p {
    public static final p dq = new p();

    /* renamed from: d, reason: collision with root package name */
    private final List<WeakReference<ThreadPoolExecutor>> f2035d = new ArrayList();
    private d ox;
    private dq p;

    public interface d {
    }

    public interface dq {
    }

    private p() {
        d().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.4
            @Override // java.lang.Runnable
            public void run() {
            }
        }, 1L, TimeUnit.MINUTES);
    }

    private ScheduledExecutorService d() {
        return no.f2029d.no();
    }

    private synchronized List<ThreadPoolExecutor> dq(String str, boolean z, boolean z2) {
        ArrayList arrayList;
        ThreadPoolExecutor threadPoolExecutor;
        try {
            arrayList = new ArrayList();
            for (WeakReference<ThreadPoolExecutor> weakReference : this.f2035d) {
                if (weakReference != null && (threadPoolExecutor = weakReference.get()) != null) {
                    BlockingQueue<Runnable> queue = threadPoolExecutor.getQueue();
                    boolean z3 = queue instanceof com.bytedance.sdk.component.o.dq.dq ? ((com.bytedance.sdk.component.o.dq.dq) queue).d() instanceof PriorityBlockingQueue : queue instanceof PriorityBlockingQueue;
                    if (!threadPoolExecutor.isShutdown() && !threadPoolExecutor.isTerminated() && !threadPoolExecutor.isTerminating() && threadPoolExecutor.getQueue().isEmpty() && (str == null || !z3)) {
                        if (threadPoolExecutor.getActiveCount() < threadPoolExecutor.getPoolSize()) {
                            arrayList.add(threadPoolExecutor);
                            if (z) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (z2 && !z) {
                try {
                    Collections.sort(arrayList, new Comparator<ThreadPoolExecutor>() { // from class: com.bytedance.sdk.component.o.p.1
                        @Override // java.util.Comparator
                        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                        public int compare(ThreadPoolExecutor threadPoolExecutor2, ThreadPoolExecutor threadPoolExecutor3) {
                            int poolSize = threadPoolExecutor2.getPoolSize() - threadPoolExecutor2.getActiveCount();
                            int poolSize2 = threadPoolExecutor3.getPoolSize() - threadPoolExecutor3.getActiveCount();
                            if (poolSize2 > poolSize) {
                                return 1;
                            }
                            return poolSize > poolSize2 ? -1 : 0;
                        }
                    });
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            arrayList.size();
            this.f2035d.size();
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    private void dq(List<ThreadPoolExecutor> list, String str) {
        if (list == null || list.size() == 0 || this.p == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (ThreadPoolExecutor threadPoolExecutor : list) {
            if (threadPoolExecutor != null) {
                ThreadFactory threadFactory = threadPoolExecutor.getThreadFactory();
                if (threadFactory instanceof o) {
                    hashMap.put(((o) threadFactory).dq + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else if (threadFactory instanceof com.bytedance.sdk.component.o.dq.p) {
                    hashMap.put(((com.bytedance.sdk.component.o.dq.p) threadFactory).dq() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else {
                    hashMap.put(threadFactory.getClass().getName() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                }
            }
        }
        HashMap hashMap2 = new HashMap();
        ThreadGroup d2 = s.d();
        int activeCount = d2.activeCount();
        Thread[] threadArr = new Thread[(activeCount / 2) + activeCount];
        int enumerate = d2.enumerate(threadArr);
        for (int i = 0; i < enumerate; i++) {
            Thread thread = threadArr[i];
            Thread.State state = thread.getState();
            if (state == Thread.State.BLOCKED || state == Thread.State.WAITING || state == Thread.State.TIMED_WAITING) {
                String replaceAll = thread.getName().replaceAll("[0-9]", "");
                Integer num = (Integer) hashMap2.get(replaceAll);
                hashMap2.put(replaceAll, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            }
        }
    }

    private void dq(final ThreadPoolExecutor threadPoolExecutor) {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        final long keepAliveTime = threadPoolExecutor.getKeepAliveTime(timeUnit);
        final boolean allowsCoreThreadTimeOut = threadPoolExecutor.allowsCoreThreadTimeOut();
        threadPoolExecutor.setKeepAliveTime(1L, timeUnit);
        if (allowsCoreThreadTimeOut) {
            threadPoolExecutor.allowCoreThreadTimeOut(false);
        }
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        d().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.3
            @Override // java.lang.Runnable
            public void run() {
                ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                long j = keepAliveTime;
                if (j == 0) {
                    j = 60;
                }
                threadPoolExecutor2.setKeepAliveTime(j, TimeUnit.NANOSECONDS);
                threadPoolExecutor.allowCoreThreadTimeOut(allowsCoreThreadTimeOut);
            }
        }, 10L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        List<ThreadPoolExecutor> dq2 = dq(null, false, false);
        if (dq2 == null || dq2.size() == 0) {
            return;
        }
        if (this.ox != null) {
            s.dq();
        }
        HashMap hashMap = new HashMap();
        for (ThreadPoolExecutor threadPoolExecutor : dq2) {
            if (threadPoolExecutor != null) {
                ThreadFactory threadFactory = threadPoolExecutor.getThreadFactory();
                if (threadFactory instanceof o) {
                    hashMap.put(((o) threadFactory).dq + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else if (threadFactory instanceof com.bytedance.sdk.component.o.dq.p) {
                    hashMap.put(((com.bytedance.sdk.component.o.dq.p) threadFactory).dq() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else {
                    hashMap.put(threadFactory.getClass().getName() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                }
                dq(threadPoolExecutor);
            }
        }
        if (this.ox != null) {
            s.dq();
        }
    }

    public synchronized void d(com.bytedance.sdk.component.o.p.p pVar) {
        Iterator<WeakReference<ThreadPoolExecutor>> it = this.f2035d.iterator();
        while (it.hasNext()) {
            if (it.next().get() == pVar) {
                it.remove();
            }
        }
    }

    public String dq(BlockingQueue blockingQueue) {
        return blockingQueue instanceof com.bytedance.sdk.component.o.dq.dq ? ((com.bytedance.sdk.component.o.dq.dq) blockingQueue).dq() : blockingQueue.getClass().getName();
    }

    public ThreadPoolExecutor dq(String str, String str2) {
        List<ThreadPoolExecutor> dq2 = dq(str2, false, true);
        dq(dq2, str);
        ThreadPoolExecutor threadPoolExecutor = dq2.size() > 0 ? dq2.get(0) : null;
        dq();
        return threadPoolExecutor;
    }

    public void dq() {
        if (no.f2029d.dq()) {
            d().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.2
                @Override // java.lang.Runnable
                public void run() {
                    p.this.ox();
                }
            }, 100L, TimeUnit.MILLISECONDS);
        }
    }

    public synchronized void dq(com.bytedance.sdk.component.o.p.p pVar) {
        d(pVar);
        this.f2035d.add(new WeakReference<>(pVar));
    }

    public void dq(String str) {
        List<ThreadPoolExecutor> dq2 = dq(null, false, true);
        if (dq2 == null || dq2.size() == 0) {
            return;
        }
        dq(dq2, str);
        dq2.size();
        ThreadPoolExecutor threadPoolExecutor = dq2.get(0);
        if (threadPoolExecutor != null) {
            dq(threadPoolExecutor);
        }
        dq();
    }
}
