package com.bytedance.sdk.component.o;

import java.lang.reflect.Field;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class s {
    public static ThreadGroup d() {
        try {
            Field declaredField = ThreadGroup.class.getDeclaredField("systemThreadGroup");
            declaredField.setAccessible(true);
            return (ThreadGroup) declaredField.get(ThreadGroup.class);
        } catch (Exception e2) {
            dq(e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(ThreadPoolExecutor threadPoolExecutor) {
        try {
            threadPoolExecutor.setKeepAliveTime(1L, TimeUnit.MILLISECONDS);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Exception e2) {
            dq(e2);
        }
        while (true) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException unused) {
            }
            if (threadPoolExecutor.getQueue().size() <= 0 && threadPoolExecutor.getActiveCount() == 0) {
                threadPoolExecutor.shutdown();
                return;
            }
        }
    }

    public static int dq() {
        ThreadGroup d2 = d();
        if (d2 == null) {
            return 0;
        }
        int activeCount = d2.activeCount();
        try {
            return d2.enumerate(new Thread[(activeCount / 2) + activeCount]);
        } catch (Throwable unused) {
            return activeCount;
        }
    }

    private static void dq(Throwable th) {
        th.getMessage();
    }

    public static void dq(ExecutorService executorService, final ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor != null) {
            try {
                threadPoolExecutor.allowCoreThreadTimeOut(true);
                threadPoolExecutor.setKeepAliveTime(2L, TimeUnit.MILLISECONDS);
            } catch (Exception e2) {
                dq(e2);
            }
            executorService.execute(new Runnable() { // from class: com.bytedance.sdk.component.o.s.1
                @Override // java.lang.Runnable
                public void run() {
                    s.d(threadPoolExecutor);
                }
            });
        }
    }
}
