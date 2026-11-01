package g;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes3.dex */
public final class dbi implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13916a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f13917b;

    public dbi() {
        this.f13916a = 0;
        this.f13917b = new Handler(Looper.getMainLooper());
    }

    public /* synthetic */ dbi(Handler handler, int i) {
        this.f13916a = i;
        this.f13917b = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f13916a) {
            case 0:
                this.f13917b.post(runnable);
                return;
            case 1:
                runnable.getClass();
                Handler handler = this.f13917b;
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            case 2:
                this.f13917b.post(runnable);
                return;
            default:
                this.f13917b.post(runnable);
                return;
        }
    }
}
