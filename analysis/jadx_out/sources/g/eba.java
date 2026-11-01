package g;

import com.google.android.gms.internal.ads.zzfwq;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class eba implements dcy {

    /* renamed from: c, reason: collision with root package name */
    public final Object f15218c;

    /* renamed from: b, reason: collision with root package name */
    public static final eba f15217b = new eba(null);

    /* renamed from: a, reason: collision with root package name */
    public static final ctm f15216a = new ctm(1, eba.class);

    public eba(Object obj) {
        this.f15218c = obj;
    }

    @Override // g.dcy
    public final void addListener(Runnable runnable, Executor executor) {
        zzfwq.zzc(runnable, "Runnable was null.");
        zzfwq.zzc(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            f15216a.e().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", awf.t("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f15218c;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f15218c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + String.valueOf(this.f15218c) + "]]";
    }
}
