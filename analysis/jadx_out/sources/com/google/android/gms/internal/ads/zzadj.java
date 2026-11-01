package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public final class zzadj {
    public int zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public int zzg;

    public zzadj() {
    }

    public zzadj(zzadj zzadjVar) {
        this.zza = zzadjVar.zza;
        this.zzb = zzadjVar.zzb;
        this.zzc = zzadjVar.zzc;
        this.zzd = zzadjVar.zzd;
        this.zze = zzadjVar.zze;
        this.zzf = zzadjVar.zzf;
        this.zzg = zzadjVar.zzg;
    }

    public final boolean zza(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i6 = i4 - 1;
        this.zza = i2;
        this.zzb = zzadk.f4109c[3 - i3];
        int i7 = zzadk.f4111e[i5];
        this.zzd = i7;
        if (i2 == 2) {
            i7 /= 2;
            this.zzd = i7;
        } else if (i2 == 0) {
            i7 /= 4;
            this.zzd = i7;
        }
        int i8 = (i >>> 9) & 1;
        int i9 = 1152;
        if (i3 != 1) {
            if (i3 != 2) {
                i9 = MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
            }
        } else if (i2 != 3) {
            i9 = 576;
        }
        this.zzg = i9;
        if (i3 == 3) {
            int i10 = i2 == 3 ? zzadk.f4112f[i6] : zzadk.f4107a[i6];
            this.zzf = i10;
            this.zzc = (((i10 * 12) / i7) + i8) * 4;
        } else {
            if (i2 == 3) {
                int i11 = i3 == 2 ? zzadk.f4108b[i6] : zzadk.f4110d[i6];
                this.zzf = i11;
                this.zzc = ((i11 * 144) / i7) + i8;
            } else {
                int i12 = zzadk.f4113g[i6];
                this.zzf = i12;
                this.zzc = (((i3 == 1 ? 72 : 144) * i12) / i7) + i8;
            }
        }
        this.zze = ((i >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }
}
