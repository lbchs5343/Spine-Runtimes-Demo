package g;

import com.google.android.gms.internal.ads.zzgdc;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class gjx extends zzgdc {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18278b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f18279c;

    public /* synthetic */ gjx(Executor executor) {
        this.f18279c = executor;
    }

    public gjx(ExecutorService executorService) {
        executorService.getClass();
        this.f18279c = executorService;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        switch (this.f18278b) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return ((ExecutorService) this.f18279c).awaitTermination(j, timeUnit);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f18278b) {
            case 0:
                this.f18279c.execute(runnable);
                break;
            default:
                ((ExecutorService) this.f18279c).execute(runnable);
                break;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        switch (this.f18278b) {
            case 0:
                return false;
            default:
                return ((ExecutorService) this.f18279c).isShutdown();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        switch (this.f18278b) {
            case 0:
                return false;
            default:
                return ((ExecutorService) this.f18279c).isTerminated();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        switch (this.f18278b) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                ((ExecutorService) this.f18279c).shutdown();
                return;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        switch (this.f18278b) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return ((ExecutorService) this.f18279c).shutdownNow();
        }
    }

    public String toString() {
        switch (this.f18278b) {
            case 1:
                ExecutorService executorService = (ExecutorService) this.f18279c;
                return super.toString() + "[" + String.valueOf(executorService) + "]";
            default:
                return super.toString();
        }
    }
}
