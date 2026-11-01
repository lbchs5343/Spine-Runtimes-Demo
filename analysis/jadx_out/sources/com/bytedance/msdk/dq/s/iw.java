package com.bytedance.msdk.dq.s;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private static final Object f1079d = new Object();
    static final /* synthetic */ boolean dq = true;
    private static final int ia;
    private static Handler iw;
    private static final ThreadPoolExecutor kk;
    private static final int mn;
    private static final Executor o;
    private static boolean ox;
    private static Handler p;
    private static HandlerThread s;

    static {
        dq();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        mn = availableProcessors;
        ia = Math.min(availableProcessors, 4);
        kk = kk();
        o = o();
    }

    public static Looper d() {
        if (ia()) {
            return s.getLooper();
        }
        return null;
    }

    public static void d(Runnable runnable) {
        if (s()) {
            runnable.run();
            return;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        dq(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            throw new RuntimeException("Exception occured while waiting for runnable", e2);
        }
    }

    public static void d(Runnable runnable, long j) {
        p().postDelayed(runnable, j);
    }

    public static ExecutorService dq(String str, int i, RejectedExecutionHandler rejectedExecutionHandler) {
        return new com.bytedance.sdk.component.o.p.p(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(i), dq("gm_t_single_".concat(String.valueOf(str))), rejectedExecutionHandler);
    }

    public static <T> Future<T> dq(Callable<T> callable) {
        try {
            return kk.submit(callable);
        } catch (Exception e2) {
            Log.e("ThreadHelper", "stackerror:", e2);
            return null;
        }
    }

    public static <T> FutureTask<T> dq(FutureTask<T> futureTask) {
        p().post(futureTask);
        return futureTask;
    }

    public static ThreadFactory dq(final String str) {
        return new ThreadFactory() { // from class: com.bytedance.msdk.dq.s.iw.1

            /* renamed from: d, reason: collision with root package name */
            private final AtomicInteger f1080d = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new com.bytedance.sdk.component.o.p.ox(runnable, str + " # " + this.f1080d.getAndIncrement());
            }
        };
    }

    public static void dq() {
        try {
            HandlerThread handlerThread = new HandlerThread("gm_t_main", -19);
            s = handlerThread;
            handlerThread.start();
            iw = new Handler(s.getLooper());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void dq(Runnable runnable) {
        if (!ia()) {
            dq();
        } else if (ox()) {
            runnable.run();
        } else {
            iw.post(runnable);
        }
    }

    public static void dq(Runnable runnable, long j) {
        if (ia()) {
            iw.postDelayed(runnable, j);
        } else {
            dq();
        }
    }

    private static boolean dq(Executor executor, Runnable runnable) {
        try {
            executor.execute(runnable);
            return true;
        } catch (Exception e2) {
            Log.e("ThreadHelper", "stackerror:", e2);
            return false;
        }
    }

    private static boolean ia() {
        HandlerThread handlerThread = s;
        return (handlerThread == null || !handlerThread.isAlive() || iw == null) ? false : true;
    }

    public static Executor iw() {
        return kk;
    }

    private static ThreadPoolExecutor kk() {
        int i = ia;
        com.bytedance.sdk.component.o.p.p pVar = new com.bytedance.sdk.component.o.p.p(i, i, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(1024), dq("gm_t_executor:"), new ThreadPoolExecutor.DiscardOldestPolicy() { // from class: com.bytedance.msdk.dq.s.iw.2
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy, java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                super.rejectedExecution(runnable, threadPoolExecutor);
                com.bytedance.msdk.mn.ox.dq.dq().s();
            }
        });
        try {
            pVar.allowCoreThreadTimeOut(true);
            return pVar;
        } catch (Exception e2) {
            Log.e("ThreadHelper", "stackerror:", e2);
            return pVar;
        } catch (NoSuchMethodError e3) {
            e3.printStackTrace();
            return pVar;
        }
    }

    public static Executor mn() {
        return o;
    }

    private static Executor o() {
        return new com.bytedance.sdk.component.o.p.p(2, 2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), dq("gm_t_log_upload:"), new ThreadPoolExecutor.DiscardPolicy());
    }

    public static void ox(Runnable runnable) {
        if (s()) {
            runnable.run();
        } else {
            p().post(runnable);
        }
    }

    public static boolean ox() {
        return ia() && s.getLooper() == Looper.myLooper();
    }

    public static Handler p() {
        Handler handler;
        synchronized (f1079d) {
            try {
                if (p == null) {
                    if (ox) {
                        throw new RuntimeException("Did not yet override the UI thread");
                    }
                    p = new Handler(Looper.getMainLooper());
                }
                handler = p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public static void p(Runnable runnable) {
        dq(kk, runnable);
    }

    public static boolean s() {
        return p().getLooper() == Looper.myLooper();
    }
}
