package g;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class fjp implements gew {

    /* renamed from: a, reason: collision with root package name */
    public static final ctm f16896a = new ctm(0, fjp.class);

    /* renamed from: b, reason: collision with root package name */
    public final Object f16897b;

    public fjp(Object obj) {
        this.f16897b = obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f16897b;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f16897b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    @Override // g.gew
    public final void l(Runnable runnable, Executor executor) {
        if (executor == null) {
            throw new NullPointerException("Executor was null.");
        }
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            f16896a.e().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", awf.t("RuntimeException while executing runnable ", runnable.toString(), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    public final String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + this.f16897b.toString() + "]]";
    }
}
