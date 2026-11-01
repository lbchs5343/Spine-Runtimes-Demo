package g;

import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import com.google.android.gms.internal.ads.zzoj;
import com.google.android.gms.internal.ads.zzsk;

/* loaded from: classes3.dex */
public abstract class fpq {
    public static void a(zzsk zzskVar, zzoj zzojVar) {
        boolean equals;
        String stringId;
        LogSessionId unused;
        LogSessionId zza = zzojVar.zza();
        unused = LogSessionId.LOG_SESSION_ID_NONE;
        equals = zza.equals(LogSessionId.LOG_SESSION_ID_NONE);
        if (equals) {
            return;
        }
        MediaFormat mediaFormat = zzskVar.zzb;
        stringId = zza.getStringId();
        mediaFormat.setString("log-session-id", stringId);
    }
}
