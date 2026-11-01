package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public final class zzajh {
    public final zzaje zza;
    public final int zzb;
    public final long[] zzc;
    public final int[] zzd;
    public final int zze;
    public final long[] zzf;
    public final int[] zzg;
    public final long zzh;

    public zzajh(zzaje zzajeVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        int length = iArr.length;
        int length2 = jArr2.length;
        zzdb.zzd(length == length2);
        int length3 = jArr.length;
        zzdb.zzd(length3 == length2);
        int length4 = iArr2.length;
        zzdb.zzd(length4 == length2);
        this.zza = zzajeVar;
        this.zzc = jArr;
        this.zzd = iArr;
        this.zze = i;
        this.zzf = jArr2;
        this.zzg = iArr2;
        this.zzh = j;
        this.zzb = length3;
        if (length4 > 0) {
            int i2 = length4 - 1;
            iArr2[i2] = iArr2[i2] | C.ENCODING_PCM_A_LAW;
        }
    }

    public final int zza(long j) {
        for (int zzd = zzen.zzd(this.zzf, j, true, false); zzd >= 0; zzd--) {
            if ((this.zzg[zzd] & 1) != 0) {
                return zzd;
            }
        }
        return -1;
    }

    public final int zzb(long j) {
        for (int zza = zzen.zza(this.zzf, j, true, false); zza < this.zzf.length; zza++) {
            if ((this.zzg[zza] & 1) != 0) {
                return zza;
            }
        }
        return -1;
    }
}
