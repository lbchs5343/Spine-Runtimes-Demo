package g;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class gqv implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f18599a = new AtomicInteger(1);

    /* renamed from: b, reason: collision with root package name */
    public final coi f18600b;

    /* renamed from: c, reason: collision with root package name */
    public final ThreadGroup f18601c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicInteger f18602d = new AtomicInteger(1);

    /* renamed from: e, reason: collision with root package name */
    public final String f18603e;

    public gqv(coi coiVar, String str) {
        this.f18600b = coiVar;
        SecurityManager securityManager = System.getSecurityManager();
        this.f18601c = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        boolean isEmpty = TextUtils.isEmpty(str);
        AtomicInteger atomicInteger = f18599a;
        if (isEmpty) {
            this.f18603e = "ttdefault-" + atomicInteger.getAndIncrement() + "-thread-";
            return;
        }
        StringBuilder o = awf.o(str);
        o.append(atomicInteger.getAndIncrement());
        o.append("-thread-");
        this.f18603e = o.toString();
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(this.f18601c, runnable, this.f18603e + this.f18602d.getAndIncrement(), 0L);
        if (oxVar.isDaemon()) {
            oxVar.setDaemon(false);
        }
        coi coiVar = this.f18600b;
        if (coiVar != null && coiVar.p == coi.LOW.p) {
            oxVar.setPriority(1);
            return oxVar;
        }
        if (oxVar.getPriority() != 5) {
            oxVar.setPriority(3);
            return oxVar;
        }
        oxVar.setPriority(5);
        return oxVar;
    }
}
