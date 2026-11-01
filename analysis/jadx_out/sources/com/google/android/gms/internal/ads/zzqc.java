package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.emc;
import g.gpd;

/* loaded from: classes3.dex */
public final class zzqc {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8840a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f8841b;

    public zzqc() {
        this.f8840a = null;
    }

    public zzqc(Context context) {
        this.f8840a = context;
    }

    public final zzoz zza(zzad zzadVar, zzg zzgVar) {
        boolean booleanValue;
        zzadVar.getClass();
        zzgVar.getClass();
        int i = zzen.zza;
        if (i < 29 || zzadVar.zzD == -1) {
            return zzoz.zza;
        }
        Boolean bool = this.f8841b;
        if (bool != null) {
            booleanValue = bool.booleanValue();
        } else {
            Context context = this.f8840a;
            if (context != null) {
                AudioManager audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
                if (audioManager != null) {
                    String parameters = audioManager.getParameters("offloadVariableRateSupported");
                    boolean z = false;
                    if (parameters != null && parameters.equals("offloadVariableRateSupported=1")) {
                        z = true;
                    }
                    this.f8841b = Boolean.valueOf(z);
                } else {
                    this.f8841b = Boolean.FALSE;
                }
            } else {
                this.f8841b = Boolean.FALSE;
            }
            booleanValue = this.f8841b.booleanValue();
        }
        String str = zzadVar.zzo;
        str.getClass();
        int zza = zzbg.zza(str, zzadVar.zzk);
        if (zza == 0 || i < zzen.zzh(zza)) {
            return zzoz.zza;
        }
        int zzi = zzen.zzi(zzadVar.zzC);
        if (zzi == 0) {
            return zzoz.zza;
        }
        try {
            AudioFormat zzx = zzen.zzx(zzadVar.zzD, zzi, zza);
            return i >= 31 ? gpd.a(zzx, zzgVar.zza().zza, booleanValue) : emc.a(zzx, zzgVar.zza().zza, booleanValue);
        } catch (IllegalArgumentException unused) {
            return zzoz.zza;
        }
    }
}
