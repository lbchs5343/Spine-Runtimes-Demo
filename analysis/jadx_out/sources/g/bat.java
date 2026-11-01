package g;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class bat implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final Handler f11190a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f11190a.post(runnable);
    }
}
