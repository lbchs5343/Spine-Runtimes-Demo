package g;

import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzs;
import com.google.android.gms.internal.ads.zzfzt;

/* loaded from: classes3.dex */
public abstract class epf {
    public static boolean a(AudioManager audioManager, fqp fqpVar) {
        AudioDeviceInfo[] audioDeviceInfoArr;
        int type;
        if (fqpVar == null) {
            audioManager.getClass();
            audioDeviceInfoArr = audioManager.getDevices(2);
        } else {
            audioDeviceInfoArr = new AudioDeviceInfo[]{fqpVar.f17252a};
        }
        zzfzt<Integer> b2 = b();
        for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
            type = audioDeviceInfo.getType();
            if (b2.contains(Integer.valueOf(type))) {
                return true;
            }
        }
        return false;
    }

    private static zzfzt<Integer> b() {
        zzfzs zzfzsVar = new zzfzs();
        zzfzsVar.zzg(8, 7);
        int i = zzen.zza;
        if (i >= 31) {
            zzfzsVar.zzg(26, 27);
        }
        if (i >= 33) {
            zzfzsVar.zzf(30);
        }
        return zzfzsVar.zzi();
    }
}
