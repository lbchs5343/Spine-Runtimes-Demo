package g;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public final class dnj extends ccf {
    public static final /* synthetic */ AtomicIntegerFieldUpdater n = AtomicIntegerFieldUpdater.newUpdater(dnj.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;
    public final era o;

    public dnj(era eraVar) {
        this.o = eraVar;
    }

    @Override // g.era
    public final void b(Throwable th) {
        if (n.compareAndSet(this, 0, 1)) {
            this.o.b(th);
        }
    }
}
