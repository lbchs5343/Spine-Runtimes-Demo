package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

/* loaded from: classes3.dex */
public final class ane extends BroadcastReceiver implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f10514a;

    public ane(Handler handler) {
        this.f10514a = handler;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.f10514a.post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
