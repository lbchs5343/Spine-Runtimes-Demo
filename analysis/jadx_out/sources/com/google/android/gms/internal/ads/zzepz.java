package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.dcy;
import g.edt;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzepz implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7380a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7381b;

    public zzepz(zzges zzgesVar, Context context) {
        this.f7380a = zzgesVar;
        this.f7381b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 13;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7380a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzepy
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i;
                int i2;
                AudioManager audioManager = (AudioManager) zzepz.this.f7381b.getSystemService(MediaFormat.KEY_AUDIO);
                int mode = audioManager.getMode();
                boolean isMusicActive = audioManager.isMusicActive();
                boolean isSpeakerphoneOn = audioManager.isSpeakerphoneOn();
                int streamVolume = audioManager.getStreamVolume(3);
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkF)).booleanValue()) {
                    i = ti.f20033a.k.g(audioManager);
                    i2 = audioManager.getStreamMaxVolume(3);
                } else {
                    i = -1;
                    i2 = -1;
                }
                int ringerMode = audioManager.getRingerMode();
                int streamVolume2 = audioManager.getStreamVolume(2);
                ti tiVar = ti.f20033a;
                return new zzeqa(mode, isMusicActive, isSpeakerphoneOn, streamVolume, i, i2, ringerMode, streamVolume2, tiVar.f20036c.e(), tiVar.f20036c.c());
            }
        });
    }
}
