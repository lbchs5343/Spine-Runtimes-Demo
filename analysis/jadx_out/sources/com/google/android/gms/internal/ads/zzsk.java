package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;

/* loaded from: classes3.dex */
public final class zzsk {
    public final zzsq zza;
    public final MediaFormat zzb;
    public final zzad zzc;
    public final Surface zzd;
    public final MediaCrypto zze = null;
    public final zzsj zzf;

    public zzsk(zzsq zzsqVar, MediaFormat mediaFormat, zzad zzadVar, Surface surface, zzsj zzsjVar) {
        this.zza = zzsqVar;
        this.zzb = mediaFormat;
        this.zzc = zzadVar;
        this.zzd = surface;
        this.zzf = zzsjVar;
    }

    public static zzsk zza(zzsq zzsqVar, MediaFormat mediaFormat, zzad zzadVar, MediaCrypto mediaCrypto, zzsj zzsjVar) {
        return new zzsk(zzsqVar, mediaFormat, zzadVar, null, zzsjVar);
    }

    public static zzsk zzb(zzsq zzsqVar, MediaFormat mediaFormat, zzad zzadVar, Surface surface, MediaCrypto mediaCrypto) {
        return new zzsk(zzsqVar, mediaFormat, zzadVar, surface, null);
    }
}
