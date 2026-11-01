package g;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class nb implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f19698a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f19699b;

    public nb(boolean z) {
        this.f19699b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        bff.p(runnable, "runnable");
        StringBuilder o = awf.o(this.f19699b ? "WM.task-" : "androidx.work-");
        o.append(this.f19698a.incrementAndGet());
        return new Thread(runnable, o.toString());
    }
}
