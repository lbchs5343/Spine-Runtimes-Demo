package g;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class dew implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14075a;

    public /* synthetic */ dew(int i) {
        this.f14075a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger;
        switch (this.f14075a) {
            case 0:
                return new dlp(runnable);
            case 1:
                Thread thread = new Thread(runnable, "Dev Tools Thread");
                thread.setPriority(5);
                return thread;
            case 2:
                return new gzk(runnable);
            default:
                Thread thread2 = new Thread(runnable);
                StringBuilder sb = new StringBuilder("BuglyThread-");
                atomicInteger = com.tencent.bugly.proguard.ak.f9582a;
                sb.append(atomicInteger.getAndIncrement());
                thread2.setName(sb.toString());
                return thread2;
        }
    }
}
