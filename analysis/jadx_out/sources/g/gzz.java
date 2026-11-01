package g;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes3.dex */
public final class gzz implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Executor f19086a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ axh f19087b;

    public gzz(Executor executor, axh axhVar) {
        this.f19086a = executor;
        this.f19087b = axhVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f19086a.execute(runnable);
        } catch (RejectedExecutionException e2) {
            this.f19087b.zzd(e2);
        }
    }
}
