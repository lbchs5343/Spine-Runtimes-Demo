package g;

import android.media.AudioFormat;
import android.media.AudioTrack;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzl;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzg;
import com.google.android.gms.internal.ads.zzgbu;
import com.google.android.gms.internal.ads.zzop;

/* loaded from: classes3.dex */
public abstract class gvm {
    public static int a(int i, int i2, zzg zzgVar) {
        boolean isDirectPlaybackSupported;
        for (int i3 = 10; i3 > 0; i3--) {
            int zzi = zzen.zzi(i3);
            if (zzi != 0) {
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(zzi).build(), zzgVar.zza().zza);
                if (isDirectPlaybackSupported) {
                    return i3;
                }
            }
        }
        return 0;
    }

    public static zzfzo<Integer> b(zzg zzgVar) {
        boolean isDirectPlaybackSupported;
        zzfzl zzfzlVar = new zzfzl();
        zzgbu it = zzop.f8824a.keySet().iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int intValue = num.intValue();
            if (zzen.zza >= zzen.zzh(intValue)) {
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), zzgVar.zza().zza);
                if (isDirectPlaybackSupported) {
                    zzfzlVar.zzf(num);
                }
            }
        }
        zzfzlVar.zzf(2);
        return zzfzlVar.zzi();
    }
}
