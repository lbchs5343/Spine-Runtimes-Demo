package g;

import android.content.Context;
import android.media.metrics.LogSessionId;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzof;
import com.google.android.gms.internal.ads.zzoj;

/* loaded from: classes3.dex */
public abstract class dli {
    public static zzoj a(Context context, ij ijVar, boolean z, String str) {
        LogSessionId logSessionId;
        zzof zzb = zzof.zzb(context);
        if (zzb == null) {
            zzdt.zzf("ExoPlayerImpl", "MediaMetricsService unavailable.");
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            return new zzoj(logSessionId, str);
        }
        if (z) {
            ijVar.zzy(zzb);
        }
        return new zzoj(zzb.zza(), str);
    }
}
