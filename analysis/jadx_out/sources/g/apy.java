package g;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class apy implements gew {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f10638a;

    /* renamed from: b, reason: collision with root package name */
    public final ggp f10639b = new ggp(this);

    public apy(ewi ewiVar) {
        this.f10638a = new WeakReference(ewiVar);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        ewi ewiVar = (ewi) this.f10638a.get();
        boolean cancel = this.f10639b.cancel(z);
        if (!cancel || ewiVar == null) {
            return cancel;
        }
        ewiVar.f16273b = null;
        ewiVar.f16274c = null;
        ewiVar.f16275d.o(null);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f10639b.get();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f10639b.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f10639b.f10148f instanceof fiv;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f10639b.isDone();
    }

    @Override // g.gew
    public final void l(Runnable runnable, Executor executor) {
        this.f10639b.l(runnable, executor);
    }

    public final String toString() {
        return this.f10639b.toString();
    }
}
