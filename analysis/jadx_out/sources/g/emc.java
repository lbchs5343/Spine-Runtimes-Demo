package g;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import com.google.android.gms.internal.ads.zzox;
import com.google.android.gms.internal.ads.zzoz;

/* loaded from: classes3.dex */
public abstract class emc {
    public static zzoz a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        boolean isOffloadedPlaybackSupported;
        isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes);
        if (!isOffloadedPlaybackSupported) {
            return zzoz.zza;
        }
        zzox zzoxVar = new zzox();
        zzoxVar.zza(true);
        zzoxVar.zzc(z);
        return zzoxVar.zzd();
    }
}
