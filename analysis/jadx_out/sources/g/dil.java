package g;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class dil implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14229a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f14230b;

    public dil(int i) {
        this.f14229a = i;
        switch (i) {
            case 1:
                this.f14230b = new AtomicInteger(1);
                break;
            case 2:
                this.f14230b = new AtomicInteger(0);
                break;
            case 3:
                this.f14230b = new AtomicInteger(1);
                break;
            case 4:
                this.f14230b = new AtomicInteger(1);
                break;
            case 5:
                this.f14230b = new AtomicInteger(1);
                break;
            case 6:
                this.f14230b = Executors.defaultThreadFactory();
                break;
            default:
                this.f14230b = new AtomicInteger(0);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i = this.f14229a;
        Object obj = this.f14230b;
        switch (i) {
            case 0:
                Thread thread = new Thread(runnable);
                thread.setName("arch_disk_io_" + ((AtomicInteger) obj).getAndIncrement());
                return thread;
            case 1:
                return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(((AtomicInteger) obj).getAndIncrement())));
            case 2:
                return new Thread(runnable, "jadx-events-thread-" + ((AtomicInteger) obj).incrementAndGet());
            case 3:
                return new Thread(runnable, "ModernAsyncTask #" + ((AtomicInteger) obj).getAndIncrement());
            case 4:
                return new Thread(runnable, awf.ac(((AtomicInteger) obj).getAndIncrement(), "AdWorker(SCION_TASK_EXECUTOR) #"));
            case 5:
                return new Thread(runnable, awf.ac(((AtomicInteger) obj).getAndIncrement(), "AdWorker(NG) #"));
            default:
                Thread newThread = ((ThreadFactory) obj).newThread(runnable);
                newThread.setName("ScionFrontendApi");
                return newThread;
        }
    }
}
