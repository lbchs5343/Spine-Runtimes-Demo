package com.bytedance.sdk.component.o;

import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class no {
    private int cd;

    /* renamed from: f, reason: collision with root package name */
    private volatile ScheduledExecutorService f2030f;
    private boolean i;
    private volatile ThreadPoolExecutor jy;
    private volatile boolean kk;
    private volatile boolean le;
    private com.bytedance.sdk.component.o.dq.s mp;
    private volatile ThreadPoolExecutor q;
    private com.bytedance.sdk.component.o.dq.d r;
    public static final int dq = mn.dq;

    /* renamed from: d, reason: collision with root package name */
    public static final no f2029d = new no();
    public volatile boolean ox = true;
    private long iw = PushUIConfig.dismissTime;
    private long mn = 20000;
    private volatile boolean ia = true;
    private boolean o = true;
    private long no = 100;
    private volatile boolean ig = true;
    private boolean fw = true;
    private boolean gh = true;
    private int p = Math.min(dq, 4);
    private int s = 50;

    private no() {
    }

    public void d(int i) {
        this.p = i;
        kk().setCorePoolSize(i);
        o().setCorePoolSize(i);
    }

    public void d(ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor == null) {
            return;
        }
        ThreadPoolExecutor threadPoolExecutor2 = this.q;
        this.q = threadPoolExecutor;
        if (threadPoolExecutor2 == null || threadPoolExecutor2 == threadPoolExecutor) {
            return;
        }
        ((com.bytedance.sdk.component.o.ox.p) threadPoolExecutor2).d();
        s.dq(threadPoolExecutor, threadPoolExecutor2);
    }

    public void d(boolean z) {
        this.ox = z;
    }

    public boolean d() {
        return this.fw;
    }

    public void dq(long j) {
        this.iw = j;
        o().setKeepAliveTime(j, TimeUnit.MILLISECONDS);
    }

    public void dq(ScheduledExecutorService scheduledExecutorService) {
        if (scheduledExecutorService == null) {
            return;
        }
        final ScheduledExecutorService scheduledExecutorService2 = this.f2030f;
        this.f2030f = scheduledExecutorService;
        if (scheduledExecutorService2 == null || scheduledExecutorService2 == scheduledExecutorService) {
            return;
        }
        this.f2030f.schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.no.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    scheduledExecutorService2.shutdown();
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ig.ox("ThreadCenter", e2);
                }
            }
        }, PushUIConfig.dismissTime, TimeUnit.MILLISECONDS);
    }

    public void dq(ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor == null) {
            return;
        }
        ThreadPoolExecutor threadPoolExecutor2 = this.jy;
        this.jy = threadPoolExecutor;
        if (threadPoolExecutor2 == null || threadPoolExecutor2 == threadPoolExecutor) {
            return;
        }
        s.dq(threadPoolExecutor, threadPoolExecutor2);
    }

    public void dq(boolean z) {
        this.fw = z;
    }

    public boolean dq() {
        return this.o;
    }

    public boolean dq(int i) {
        return (this.cd & i) == i;
    }

    public int ia() {
        return this.p;
    }

    public ThreadPoolExecutor ig() {
        return this.kk ? o() : kk();
    }

    public boolean iw() {
        return this.i;
    }

    public ThreadPoolExecutor kk() {
        if (this.q == null) {
            synchronized (this) {
                try {
                    if (this.q == null) {
                        this.q = new com.bytedance.sdk.component.o.ox.p(this.p, this.s, this.mn, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new o(10, "l") { // from class: com.bytedance.sdk.component.o.no.1
                            @Override // com.bytedance.sdk.component.o.o
                            public Thread dq(ThreadGroup threadGroup, Runnable runnable, String str) {
                                return new Thread(threadGroup, runnable, str);
                            }
                        });
                    }
                } finally {
                }
            }
        }
        return this.q;
    }

    public com.bytedance.sdk.component.o.dq.s mn() {
        if (this.mp == null) {
            this.mp = new com.bytedance.sdk.component.o.dq.s();
        }
        return this.mp;
    }

    public boolean mp() {
        return this.le;
    }

    public ScheduledExecutorService no() {
        if (this.f2030f == null) {
            synchronized (this) {
                try {
                    if (this.f2030f == null) {
                        this.f2030f = new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.bytedance.sdk.component.o.no.3
                            @Override // java.util.concurrent.ThreadFactory
                            public Thread newThread(Runnable runnable) {
                                return new Thread(runnable, no.this.i ? "csj-p-wp" : "csj-wp");
                            }
                        }, com.bytedance.sdk.component.o.p.dq.dq);
                    }
                } finally {
                }
            }
        }
        return this.f2030f;
    }

    public ThreadPoolExecutor o() {
        if (this.jy == null) {
            synchronized (this) {
                try {
                    if (this.jy == null) {
                        this.jy = new com.bytedance.sdk.component.o.ox.d(this.p, this.s, this.iw, TimeUnit.MILLISECONDS, new o(10, "b") { // from class: com.bytedance.sdk.component.o.no.2
                            @Override // com.bytedance.sdk.component.o.o
                            public Thread dq(ThreadGroup threadGroup, Runnable runnable, String str) {
                                return new Thread(threadGroup, runnable, str);
                            }
                        });
                    }
                } finally {
                }
            }
        }
        return this.jy;
    }

    public com.bytedance.sdk.component.o.dq.d ox() {
        return this.r;
    }

    public void ox(int i) {
        kk().setMaximumPoolSize(i);
        o().setMaximumPoolSize(i);
    }

    public void ox(boolean z) {
        this.kk = z;
    }

    public long p() {
        return this.no;
    }

    public void p(boolean z) {
        this.ia = z;
    }

    public void s(boolean z) {
        this.le = z;
    }

    public boolean s() {
        return this.ox;
    }
}
