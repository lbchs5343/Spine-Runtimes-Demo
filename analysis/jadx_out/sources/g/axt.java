package g;

import android.media.AudioManager;
import android.media.AudioProfile;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzl;
import com.google.android.gms.internal.ads.zzg;
import com.google.android.gms.internal.ads.zzgcr;
import com.google.android.gms.internal.ads.zzop;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class axt {
    public static zzop a(AudioManager audioManager, zzg zzgVar) {
        List directProfilesForAttributes;
        int encapsulationType;
        int format;
        int[] channelMasks;
        int[] channelMasks2;
        directProfilesForAttributes = audioManager.getDirectProfilesForAttributes(zzgVar.zza().zza);
        HashMap hashMap = new HashMap();
        hashMap.put(2, new HashSet(zzgcr.zzg(12)));
        for (int i = 0; i < directProfilesForAttributes.size(); i++) {
            AudioProfile aa = eee.aa(directProfilesForAttributes.get(i));
            encapsulationType = aa.getEncapsulationType();
            if (encapsulationType != 1) {
                format = aa.getFormat();
                if (zzen.zzJ(format) || zzop.f8824a.containsKey(Integer.valueOf(format))) {
                    Integer valueOf = Integer.valueOf(format);
                    if (hashMap.containsKey(valueOf)) {
                        Set set = (Set) hashMap.get(valueOf);
                        set.getClass();
                        channelMasks2 = aa.getChannelMasks();
                        set.addAll(zzgcr.zzg(channelMasks2));
                    } else {
                        channelMasks = aa.getChannelMasks();
                        hashMap.put(valueOf, new HashSet(zzgcr.zzg(channelMasks)));
                    }
                }
            }
        }
        zzfzl zzfzlVar = new zzfzl();
        for (Map.Entry entry : hashMap.entrySet()) {
            zzfzlVar.zzf(new awz(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
        }
        return new zzop(zzfzlVar.zzi());
    }

    public static fqp b(AudioManager audioManager, zzg zzgVar) {
        List audioDevicesForAttributes;
        if (audioManager == null) {
            throw null;
        }
        audioDevicesForAttributes = audioManager.getAudioDevicesForAttributes(zzgVar.zza().zza);
        if (!audioDevicesForAttributes.isEmpty()) {
            return new fqp(fnh.b(audioDevicesForAttributes.get(0)));
        }
        return null;
    }
}
