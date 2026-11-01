package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.ads.zzfoq;

/* loaded from: classes3.dex */
public final class djh extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14274a;

    public /* synthetic */ djh(int i) {
        this.f14274a = i;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f14274a) {
            case 0:
                if (intent.getAction() == "android.media.action.HDMI_AUDIO_PLUG") {
                    int intExtra = intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", -1);
                    if (intExtra == 0) {
                        zzfoq.f8109a = 1;
                        return;
                    } else {
                        if (intExtra == 1) {
                            zzfoq.f8109a = 2;
                            return;
                        }
                        return;
                    }
                }
                return;
            default:
                synchronized (dzz.f15159c) {
                    dzz.f15160d = false;
                    dzz.f15157a = false;
                    agd.b("Ad debug logging enablement is out of date.");
                }
                ffb.bi(context);
                return;
        }
    }
}
