package g;

import android.os.Process;

/* loaded from: classes.dex */
public final class dlp extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final int f14382a;

    public dlp(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.f14382a = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f14382a);
        super.run();
    }
}
