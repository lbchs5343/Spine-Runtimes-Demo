package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import g.awf;

/* loaded from: classes3.dex */
public final class zzsu extends Exception {
    public final String zza;
    public final boolean zzb;
    public final zzsq zzc;
    public final String zzd;

    public zzsu(zzad zzadVar, Throwable th, boolean z, int i) {
        this("Decoder init failed: [" + i + "], " + zzadVar.toString(), th, zzadVar.zzo, null, awf.ac(Math.abs(i), "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_"));
    }

    public zzsu(zzad zzadVar, Throwable th, boolean z, zzsq zzsqVar) {
        this(awf.t("Decoder init failed: ", zzsqVar.zza, ", ", zzadVar.toString()), th, zzadVar.zzo, zzsqVar, th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null);
    }

    public zzsu(String str, Throwable th, String str2, zzsq zzsqVar, String str3) {
        super(str, th);
        this.zza = str2;
        this.zzb = false;
        this.zzc = zzsqVar;
        this.zzd = str3;
    }
}
