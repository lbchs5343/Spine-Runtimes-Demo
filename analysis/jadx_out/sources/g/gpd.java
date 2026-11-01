package g;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzox;
import com.google.android.gms.internal.ads.zzoz;

/* loaded from: classes3.dex */
public abstract class gpd {
    public static zzoz a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        int playbackOffloadSupport;
        playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        if (playbackOffloadSupport == 0) {
            return zzoz.zza;
        }
        zzox zzoxVar = new zzox();
        boolean z2 = false;
        if (zzen.zza > 32 && playbackOffloadSupport == 2) {
            z2 = true;
        }
        zzoxVar.zza(true);
        zzoxVar.zzb(z2);
        zzoxVar.zzc(z);
        return zzoxVar.zzd();
    }
}
