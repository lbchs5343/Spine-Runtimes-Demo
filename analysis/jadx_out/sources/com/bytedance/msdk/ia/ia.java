package com.bytedance.msdk.ia;

import android.text.TextUtils;
import g.xo;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ia {
    private static volatile ia ox;
    private volatile String dq = "";

    /* renamed from: d, reason: collision with root package name */
    private volatile ExecutorService f1088d = com.bytedance.msdk.dq.s.iw.dq("gaid", 2, new RejectedExecutionHandler() { // from class: com.bytedance.msdk.ia.ia.1
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    });

    public class dq implements Callable<String> {
        private dq() {
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                String str = xo.i(com.bytedance.msdk.core.dq.getContext()).f14078a;
                com.bytedance.msdk.dq.s.ox.dq("gaid-", "getAdvertisingId: ".concat(String.valueOf(str)));
                ia.d(str);
            } catch (Throwable unused) {
            }
            try {
                ia.this.dq = xo.i(com.bytedance.msdk.core.dq.getContext()).f14078a;
            } catch (Throwable unused2) {
            }
            com.bytedance.msdk.dq.s.ox.dq("AdvertisingIdHelper", "mGAId:" + ia.this.dq + " , get gaid consume time :" + (System.currentTimeMillis() - currentTimeMillis));
            return ia.this.dq;
        }
    }

    private ia() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        bl.dq("tt_device_info", com.bytedance.msdk.core.dq.getContext()).dq("gaid", str);
    }

    public static ia dq() {
        if (ox == null) {
            synchronized (ia.class) {
                try {
                    if (ox == null) {
                        ox = new ia();
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    public String d() {
        try {
            this.dq = bl.dq("tt_device_info", com.bytedance.msdk.core.dq.getContext()).d("gaid", "");
            com.bytedance.msdk.dq.s.ox.dq("gaid", "--==-- getGAIdTimeOut-mGAId = " + this.dq);
            if (TextUtils.isEmpty(this.dq)) {
                synchronized (this) {
                    try {
                        if (this.f1088d != null) {
                            FutureTask futureTask = new FutureTask(new dq());
                            this.f1088d.execute(futureTask);
                            this.dq = (String) futureTask.get(1L, TimeUnit.MICROSECONDS);
                            if (!TextUtils.isEmpty(this.dq)) {
                                this.f1088d.shutdown();
                                this.f1088d = null;
                            }
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return this.dq;
    }

    public synchronized void ox() {
        try {
            this.dq = bl.dq("tt_device_info", com.bytedance.msdk.core.dq.getContext()).d("gaid", "");
            com.bytedance.msdk.dq.s.ox.dq("gaid", "--==-- initGAIdByAsyc-mGAId = " + this.dq);
            if (TextUtils.isEmpty(this.dq) && this.f1088d != null) {
                this.f1088d.execute(new FutureTask(new dq()));
            }
        } catch (Throwable unused) {
        }
    }
}
