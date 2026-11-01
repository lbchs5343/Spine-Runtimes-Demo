package g;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class gbb implements dcy {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f17841a;

    /* renamed from: b, reason: collision with root package name */
    public final dqq f17842b = new dqq(this);

    public gbb(eje ejeVar) {
        this.f17841a = new WeakReference(ejeVar);
    }

    @Override // g.dcy
    public final void addListener(Runnable runnable, Executor executor) {
        this.f17842b.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        eje ejeVar = (eje) this.f17841a.get();
        boolean cancel = this.f17842b.cancel(z);
        if (cancel && ejeVar != null) {
            ejeVar.f15640b = null;
            ejeVar.f15641c = null;
            ejeVar.f15642d.p(null);
        }
        return cancel;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f17842b.get();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f17842b.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f17842b.f20399f instanceof chl;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f17842b.isDone();
    }

    public final String toString() {
        return this.f17842b.toString();
    }
}
