package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class drx {
    public static final ggb h = new ggb(-1, null, null, 0);
    public static final int n = dzm.ai(32, 12, "kotlinx.coroutines.bufferedChannel.segmentSize");
    public static final int q = dzm.ai(10000, 12, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations");

    /* renamed from: e, reason: collision with root package name */
    public static final hy f14687e = new hy("BUFFERED", 1);

    /* renamed from: g, reason: collision with root package name */
    public static final hy f14689g = new hy("SHOULD_BUFFER", 1);
    public static final hy i = new hy("S_RESUMING_BY_RCV", 1);
    public static final hy r = new hy("RESUMING_BY_EB", 1);

    /* renamed from: a, reason: collision with root package name */
    public static final hy f14683a = new hy("POISONED", 1);
    public static final hy m = new hy("DONE_RCV", 1);
    public static final hy o = new hy("INTERRUPTED_SEND", 1);

    /* renamed from: b, reason: collision with root package name */
    public static final hy f14684b = new hy("INTERRUPTED_RCV", 1);

    /* renamed from: f, reason: collision with root package name */
    public static final hy f14688f = new hy("CHANNEL_CLOSED", 1);
    public static final hy l = new hy("SUSPEND", 1);

    /* renamed from: d, reason: collision with root package name */
    public static final hy f14686d = new hy("SUSPEND_NO_WAITER", 1);

    /* renamed from: c, reason: collision with root package name */
    public static final hy f14685c = new hy("FAILED", 1);
    public static final hy k = new hy("NO_RECEIVE_RESULT", 1);
    public static final hy p = new hy("CLOSE_HANDLER_CLOSED", 1);
    public static final hy s = new hy("CLOSE_HANDLER_INVOKED", 1);
    public static final hy j = new hy("NO_CLOSE_CAUSE", 1);

    public static final boolean t(anq anqVar, Object obj, ftl ftlVar) {
        gsn gsnVar = (gsn) anqVar;
        gsnVar.getClass();
        hy hyVar = bff.f11441a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = gsn.f18700b;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(gsnVar);
            if (!(obj2 instanceof fkq)) {
                hyVar = null;
                break;
            }
            Object p2 = gsn.p((fkq) obj2, obj, gsnVar.k, ftlVar);
            while (!atomicReferenceFieldUpdater.compareAndSet(gsnVar, obj2, p2)) {
                if (atomicReferenceFieldUpdater.get(gsnVar) != obj2) {
                    break;
                }
            }
            if (!gsnVar.w()) {
                gsnVar.u();
            }
        }
        if (hyVar == null) {
            return false;
        }
        gsnVar.s(gsnVar.k);
        return true;
    }
}
