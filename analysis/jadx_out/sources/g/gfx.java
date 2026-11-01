package g;

import android.content.Context;
import android.os.Message;
import com.google.android.gms.internal.ads.zzbew;
import com.google.android.gms.internal.ads.zzftd;

/* loaded from: classes3.dex */
public final class gfx extends zzftd {
    @Override // com.google.android.gms.internal.ads.zzftd
    public final void a(Message message) {
        try {
            super.a(message);
        } catch (Throwable th) {
            ti tiVar = ti.f20033a;
            esy esyVar = tiVar.z;
            Context zzd = tiVar.f20034ab.zzd();
            if (zzd != null) {
                try {
                    if (((Boolean) zzbew.zzb.zze()).booleanValue()) {
                        acr.as(zzd, th);
                    }
                } catch (IllegalStateException unused) {
                }
            }
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e2) {
            ti.f20033a.f20034ab.zzw(e2, "AdMobHandler.handleMessage");
        }
    }
}
