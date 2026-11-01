package g;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class czx implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13827a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadFactory f13828b = Executors.defaultThreadFactory();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f13829c = new AtomicInteger(1);

    public czx() {
    }

    public czx(tq tqVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f13827a) {
            case 0:
                Thread newThread = this.f13828b.newThread(runnable);
                newThread.setName("PlayBillingLibrary-" + this.f13829c.getAndIncrement());
                return newThread;
            default:
                Thread newThread2 = this.f13828b.newThread(runnable);
                newThread2.setName("gads-" + this.f13829c.getAndIncrement());
                return newThread2;
        }
    }
}
