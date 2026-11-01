package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class nr {

    /* renamed from: a, reason: collision with root package name */
    public static volatile ScheduledExecutorService f19726a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile nr f19727b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile com.bytedance.sdk.component.o.p.p f19728c;

    /* renamed from: d, reason: collision with root package name */
    public static volatile com.bytedance.sdk.component.o.p.p f19729d;

    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public nr() {
        int i = ayn.f11063b;
        int i2 = ayn.f11063b;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        PriorityBlockingQueue priorityBlockingQueue = ayn.f11065d;
        coi coiVar = coi.NORMAL;
        f19728c = new com.bytedance.sdk.component.o.p.p(i2, i2, 1L, timeUnit, priorityBlockingQueue, new gqv(coiVar, "tt-api-thread-"));
        int i3 = ayn.f11064c;
        f19729d = new com.bytedance.sdk.component.o.p.p(i3, i3, 1L, timeUnit, ayn.f11062a, new gqv(coiVar, "tt-default-thread-"));
        f19726a = com.bytedance.sdk.component.o.ox.ox(new gqv(coi.LOW, "tt-delay-thread-"));
    }
}
