package g;

import java.util.concurrent.PriorityBlockingQueue;

/* loaded from: classes.dex */
public abstract class ayn {

    /* renamed from: a, reason: collision with root package name */
    public static final PriorityBlockingQueue f11062a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f11063b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f11064c;

    /* renamed from: d, reason: collision with root package name */
    public static final PriorityBlockingQueue f11065d;

    static {
        int availableProcessors = (Runtime.getRuntime().availableProcessors() / 2) + 1;
        f11063b = availableProcessors < 4 ? 4 : availableProcessors;
        if (availableProcessors < 4) {
            availableProcessors = 4;
        }
        f11064c = availableProcessors;
        f11065d = new PriorityBlockingQueue();
        f11062a = new PriorityBlockingQueue();
    }
}
