package g;

import android.media.AudioTrack;
import android.media.metrics.LogSessionId;
import com.google.android.gms.internal.ads.zzoj;

/* loaded from: classes3.dex */
public abstract class eij {
    public static void a(AudioTrack audioTrack, zzoj zzojVar) {
        boolean equals;
        LogSessionId unused;
        LogSessionId zza = zzojVar.zza();
        unused = LogSessionId.LOG_SESSION_ID_NONE;
        equals = zza.equals(LogSessionId.LOG_SESSION_ID_NONE);
        if (equals) {
            return;
        }
        audioTrack.setLogSessionId(zza);
    }
}
