package g;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import com.google.android.gms.internal.ads.zzdt;

/* loaded from: classes3.dex */
public final class ny implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public static final ny f19739a = new ny();

    /* renamed from: b, reason: collision with root package name */
    public Choreographer f19740b;

    /* renamed from: c, reason: collision with root package name */
    public int f19741c;

    /* renamed from: d, reason: collision with root package name */
    public volatile long f19742d = -9223372036854775807L;

    /* renamed from: e, reason: collision with root package name */
    public final Handler f19743e;

    public ny() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f19743e = handler;
        handler.sendEmptyMessage(1);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f19742d = j;
        Choreographer choreographer = this.f19740b;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            try {
                this.f19740b = Choreographer.getInstance();
            } catch (RuntimeException e2) {
                zzdt.zzg("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e2);
            }
            return true;
        }
        if (i == 2) {
            Choreographer choreographer = this.f19740b;
            if (choreographer != null) {
                int i2 = this.f19741c + 1;
                this.f19741c = i2;
                if (i2 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
            return true;
        }
        if (i != 3) {
            return false;
        }
        Choreographer choreographer2 = this.f19740b;
        if (choreographer2 != null) {
            int i3 = this.f19741c - 1;
            this.f19741c = i3;
            if (i3 == 0) {
                choreographer2.removeFrameCallback(this);
                this.f19742d = -9223372036854775807L;
            }
        }
        return true;
    }
}
