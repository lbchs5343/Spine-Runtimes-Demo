package g;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public final class aka extends eit {

    /* renamed from: d, reason: collision with root package name */
    public final gja f10364d;

    public aka(Context context, Looper looper, daw dawVar, gja gjaVar, fbd fbdVar, fbd fbdVar2) {
        super(context, looper, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME, dawVar, fbdVar, fbdVar2);
        this.f10364d = gjaVar;
    }

    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // g.adw
    public final Bundle an() {
        this.f10364d.getClass();
        return new Bundle();
    }

    @Override // g.adw
    public final boolean ao() {
        return true;
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // g.adw
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof drm ? (drm) queryLocalInterface : new drm(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService", 0);
    }

    @Override // g.adw
    public final cqg[] getApiFeatures() {
        return fkh.f16920b;
    }

    @Override // g.adw
    public final int getMinApkVersion() {
        return 203400000;
    }
}
