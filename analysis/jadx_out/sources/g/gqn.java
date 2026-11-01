package g;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzcj;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzg;
import com.google.android.gms.internal.ads.zzpq;

/* loaded from: classes3.dex */
public final class gqn {

    /* renamed from: a, reason: collision with root package name */
    public final int f18582a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18583b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18584c;

    /* renamed from: d, reason: collision with root package name */
    public final zzad f18585d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18586e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcj f18587f;

    /* renamed from: g, reason: collision with root package name */
    public final int f18588g;
    public final int h;
    public final int i;

    public gqn(zzad zzadVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, zzcj zzcjVar) {
        this.f18585d = zzadVar;
        this.f18588g = i;
        this.h = i2;
        this.f18583b = i3;
        this.f18584c = i4;
        this.f18586e = i5;
        this.i = i6;
        this.f18582a = i7;
        this.f18587f = zzcjVar;
    }

    public final AudioTrack j(zzg zzgVar, int i) {
        int i2;
        Exception exc;
        AudioTrack.Builder audioAttributes;
        AudioTrack.Builder audioFormat;
        AudioTrack.Builder transferMode;
        AudioTrack.Builder bufferSizeInBytes;
        AudioTrack.Builder sessionId;
        AudioTrack.Builder offloadedPlayback;
        AudioTrack build;
        zzad zzadVar = this.f18585d;
        int i3 = this.h;
        try {
            int i4 = zzen.zza;
            int i5 = this.i;
            int i6 = this.f18586e;
            int i7 = this.f18584c;
            if (i4 >= 29) {
                try {
                    AudioFormat zzx = zzen.zzx(i7, i6, i5);
                    AudioAttributes audioAttributes2 = zzgVar.zza().zza;
                    dll.a();
                    audioAttributes = dll.d().setAudioAttributes(audioAttributes2);
                    audioFormat = audioAttributes.setAudioFormat(zzx);
                    transferMode = audioFormat.setTransferMode(1);
                    bufferSizeInBytes = transferMode.setBufferSizeInBytes(this.f18582a);
                    sessionId = bufferSizeInBytes.setSessionId(i);
                    offloadedPlayback = sessionId.setOffloadedPlayback(i3 == 1);
                    build = offloadedPlayback.build();
                } catch (IllegalArgumentException | UnsupportedOperationException e2) {
                    exc = e2;
                    i2 = i3;
                    throw new zzpq(0, this.f18584c, this.f18586e, this.f18582a, zzadVar, i2 == 1, exc);
                }
            } else {
                build = new AudioTrack(zzgVar.zza().zza, zzen.zzx(i7, i6, i5), this.f18582a, 1, i);
            }
            int state = build.getState();
            if (state == 1) {
                return build;
            }
            try {
                build.release();
            } catch (Exception unused) {
            }
            throw new zzpq(state, this.f18584c, this.f18586e, this.f18582a, zzadVar, i3 == 1, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e3) {
            i2 = i3;
            exc = e3;
        }
    }
}
