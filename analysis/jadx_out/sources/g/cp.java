package g;

import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public final class cp extends ThreadPoolExecutor implements AutoCloseable {
    public final void a(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        eqx.ad(this);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable) {
        fhy fhyVar = new fhy((awa) runnable);
        execute(fhyVar);
        return fhyVar;
    }
}
