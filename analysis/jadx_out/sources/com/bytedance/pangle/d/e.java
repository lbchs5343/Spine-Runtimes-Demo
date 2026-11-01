package com.bytedance.pangle.d;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.component.o.ox;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private static Executor f1337a = ox.d(new ThreadFactory() { // from class: com.bytedance.pangle.d.e.1

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f1340a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new com.bytedance.sdk.component.o.p.ox(runnable, "pangle-Fast-" + this.f1340a.getAndIncrement());
        }
    });

    /* renamed from: b, reason: collision with root package name */
    private static final Object f1338b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static Handler f1339c = null;

    private static Handler a() {
        Handler handler;
        synchronized (f1338b) {
            try {
                if (f1339c == null) {
                    f1339c = new Handler(Looper.getMainLooper());
                }
                handler = f1339c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public static ExecutorService a(int i) {
        return ox.dq(i, new ThreadFactory() { // from class: com.bytedance.pangle.d.e.2

            /* renamed from: a, reason: collision with root package name */
            private final AtomicInteger f1341a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new com.bytedance.sdk.component.o.p.ox(runnable, "pangle-Install-" + this.f1341a.getAndIncrement());
            }
        });
    }

    public static void a(Runnable runnable) {
        f1337a.execute(runnable);
    }

    public static void b(Runnable runnable) {
        if (a().getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            a().post(runnable);
        }
    }
}
