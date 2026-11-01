package androidx.activity;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import g.fgv;
import g.fvi;
import g.hef;

/* loaded from: classes.dex */
public final class a implements hef, ViewTreeObserver.OnDrawListener, Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f19b;

    /* renamed from: d, reason: collision with root package name */
    public Runnable f21d;

    /* renamed from: c, reason: collision with root package name */
    public final long f20c = SystemClock.uptimeMillis() + ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;

    /* renamed from: a, reason: collision with root package name */
    public boolean f18a = false;

    public a(ComponentActivity componentActivity) {
        this.f19b = componentActivity;
    }

    @Override // g.hef
    public final void e(View view) {
        if (this.f18a) {
            return;
        }
        this.f18a = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f21d = runnable;
        View decorView = this.f19b.getWindow().getDecorView();
        if (!this.f18a) {
            decorView.postOnAnimation(new fvi(9, this));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z;
        Runnable runnable = this.f21d;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f20c) {
                this.f18a = false;
                this.f19b.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f21d = null;
        fgv fgvVar = this.f19b.mFullyDrawnReporter;
        synchronized (fgvVar.f16765a) {
            z = fgvVar.f16766b;
        }
        if (z) {
            this.f18a = false;
            this.f19b.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19b.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
