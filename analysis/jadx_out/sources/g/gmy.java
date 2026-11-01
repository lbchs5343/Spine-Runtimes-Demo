package g;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzov;
import com.google.android.gms.internal.ads.zzqo;
import g.gmy;

/* loaded from: classes3.dex */
public final class gmy {

    /* renamed from: a, reason: collision with root package name */
    public final AudioTrack f18427a;

    /* renamed from: b, reason: collision with root package name */
    public final zzov f18428b;

    /* renamed from: c, reason: collision with root package name */
    public zzqo f18429c = new AudioRouting.OnRoutingChangedListener() { // from class: com.google.android.gms.internal.ads.zzqo
        @Override // android.media.AudioRouting.OnRoutingChangedListener
        public final void onRoutingChanged(AudioRouting audioRouting) {
            gmy.this.f(audioRouting);
        }
    };

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzqo] */
    public gmy(AudioTrack audioTrack, zzov zzovVar) {
        this.f18427a = audioTrack;
        this.f18428b = zzovVar;
        audioTrack.addOnRoutingChangedListener(this.f18429c, new Handler(Looper.myLooper()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(AudioRouting audioRouting) {
        AudioDeviceInfo routedDevice;
        AudioDeviceInfo routedDevice2;
        if (this.f18429c == null) {
            return;
        }
        routedDevice = audioRouting.getRoutedDevice();
        if (routedDevice != null) {
            zzov zzovVar = this.f18428b;
            routedDevice2 = audioRouting.getRoutedDevice();
            zzovVar.zzh(routedDevice2);
        }
    }

    public void e() {
        zzqo zzqoVar = this.f18429c;
        zzqoVar.getClass();
        this.f18427a.removeOnRoutingChangedListener(zzqoVar);
        this.f18429c = null;
    }
}
