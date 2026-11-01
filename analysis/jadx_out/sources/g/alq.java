package g;

import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzqw;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class alq {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f10451a = new Handler(Looper.myLooper());

    /* renamed from: b, reason: collision with root package name */
    public final fbb f10452b = new fbb(this);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzqw f10453c;

    public alq(zzqw zzqwVar) {
        this.f10453c = zzqwVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzqs] */
    public void d(AudioTrack audioTrack) {
        final Handler handler = this.f10451a;
        Objects.requireNonNull(handler);
        audioTrack.registerStreamEventCallback(new Executor() { // from class: com.google.android.gms.internal.ads.zzqs
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, this.f10452b);
    }

    public void e(AudioTrack audioTrack) {
        audioTrack.unregisterStreamEventCallback(this.f10452b);
        this.f10451a.removeCallbacksAndMessages(null);
    }
}
