package g;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class cjr implements ThreadFactory {

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f12995c = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    public final String f12996d;

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicInteger f12994b = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    public static final oc f12993a = new oc();

    public cjr(String str) {
        this.f12996d = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "jadx-" + this.f12996d + '-' + f12994b.incrementAndGet() + '-' + this.f12995c.incrementAndGet());
        thread.setUncaughtExceptionHandler(f12993a);
        return thread;
    }
}
