package com.bykv.vk.component.ttvideo.utils;

import com.bytedance.sdk.component.o.o;
import com.bytedance.sdk.component.o.p.p;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class EngineThreadPool {

    /* renamed from: a, reason: collision with root package name */
    private static ThreadPoolExecutor f496a;

    public static ExecutorService a() {
        if (f496a == null) {
            synchronized (EngineThreadPool.class) {
                try {
                    if (f496a == null) {
                        p pVar = new p(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new o("EngineThreadPool"));
                        f496a = pVar;
                        pVar.allowCoreThreadTimeOut(true);
                    }
                } finally {
                }
            }
        }
        return f496a;
    }

    public static void setExcutorInstance(ThreadPoolExecutor threadPoolExecutor) {
        synchronized (EngineThreadPool.class) {
            f496a = threadPoolExecutor;
        }
    }
}
