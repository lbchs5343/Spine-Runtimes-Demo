package g;

import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzop;
import com.google.android.gms.internal.ads.zzov;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class fwl extends AudioDeviceCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzov f17521a;

    public /* synthetic */ fwl(zzov zzovVar) {
        this.f17521a = zzovVar;
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        zzov zzovVar = this.f17521a;
        this.f17521a.k(zzop.e(zzovVar.f8831d, zzovVar.f8828a, zzovVar.j));
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        fqp fqpVar = this.f17521a.j;
        int i = zzen.zza;
        int length = audioDeviceInfoArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            if (Objects.equals(audioDeviceInfoArr[i2], fqpVar)) {
                this.f17521a.j = null;
                break;
            }
            i2++;
        }
        zzov zzovVar = this.f17521a;
        zzovVar.k(zzop.e(zzovVar.f8831d, zzovVar.f8828a, zzovVar.j));
    }
}
