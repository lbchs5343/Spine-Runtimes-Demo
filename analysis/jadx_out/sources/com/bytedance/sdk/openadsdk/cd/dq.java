package com.bytedance.sdk.openadsdk.cd;

import com.bytedance.sdk.openadsdk.api.ox;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class dq {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private volatile ExecutorService f2424d;
    private volatile ThreadPoolExecutor ox;
    private volatile ThreadPoolExecutor p;

    /* renamed from: com.bytedance.sdk.openadsdk.cd.dq$dq, reason: collision with other inner class name */
    public static class ThreadFactoryC0136dq implements ThreadFactory {

        /* renamed from: d, reason: collision with root package name */
        private final AtomicInteger f2425d;
        private final ThreadGroup dq;
        private final String ox;

        public ThreadFactoryC0136dq() {
            this.f2425d = new AtomicInteger(1);
            this.dq = new ThreadGroup("csj_api");
            this.ox = "csj_api";
        }

        public ThreadFactoryC0136dq(String str) {
            this.f2425d = new AtomicInteger(1);
            this.dq = new ThreadGroup("csj_api");
            this.ox = "csj_api_".concat(String.valueOf(str));
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.dq, runnable, this.ox + "_" + this.f2425d.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 10) {
                thread.setPriority(10);
            }
            return thread;
        }
    }

    private dq() {
    }

    private ExecutorService d() {
        if (this.ox == null) {
            this.ox = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0136dq("init"));
        }
        return this.ox;
    }

    private void d(ExecutorService executorService) {
        executorService.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cd.dq.1
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.ox != null) {
                    try {
                        dq dqVar = dq.this;
                        dqVar.dq(dqVar.ox);
                        ox.d("ApiThread", "release init pool!");
                    } catch (Throwable th) {
                        ox.dq("ApiThread", "release mInitExecutor failed", th);
                    }
                    dq.this.ox = null;
                }
                if (dq.this.p != null) {
                    try {
                        dq dqVar2 = dq.this;
                        dqVar2.dq(dqVar2.p);
                        ox.d("ApiThread", "release api pool!");
                    } catch (Throwable th2) {
                        ox.dq("ApiThread", "release mApiExecutor failed", th2);
                    }
                    dq.this.p = null;
                }
            }
        });
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                dq = new dq();
            }
        }
        return dq;
    }

    private ExecutorService dq(boolean z) {
        return this.f2424d == null ? z ? d() : ox() : this.f2424d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setKeepAliveTime(1L, TimeUnit.MILLISECONDS);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        while (true) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException unused) {
            }
            if (threadPoolExecutor.getQueue().size() <= 0 && threadPoolExecutor.getActiveCount() == 0) {
                threadPoolExecutor.shutdown();
                return;
            }
        }
    }

    private ExecutorService ox() {
        if (this.p == null) {
            this.p = new ThreadPoolExecutor(2, 5, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0136dq());
        }
        return this.p;
    }

    public void d(Runnable runnable) {
        if (runnable != null) {
            try {
                dq(false).execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void dq(Runnable runnable) {
        if (runnable != null) {
            try {
                dq(true).execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void dq(ExecutorService executorService) {
        if (executorService != null) {
            this.f2424d = executorService;
            if (this.p == null && this.ox == null) {
                return;
            }
            d(executorService);
        }
    }
}
