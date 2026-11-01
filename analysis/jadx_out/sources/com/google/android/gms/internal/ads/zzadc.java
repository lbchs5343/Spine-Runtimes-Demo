package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzadc {

    /* renamed from: a, reason: collision with root package name */
    public final zzbd f4099a;
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;
    public final zzadb zzk;

    public zzadc(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, zzadb zzadbVar, zzbd zzbdVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = c(i5);
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = b(i7);
        this.zzj = j;
        this.zzk = zzadbVar;
        this.f4099a = zzbdVar;
    }

    public zzadc(byte[] bArr, int i) {
        zzec zzecVar = new zzec(bArr, bArr.length);
        zzecVar.zzl(i * 8);
        this.zza = zzecVar.zzd(16);
        this.zzb = zzecVar.zzd(16);
        this.zzc = zzecVar.zzd(24);
        this.zzd = zzecVar.zzd(24);
        int zzd = zzecVar.zzd(20);
        this.zze = zzd;
        this.zzf = c(zzd);
        this.zzg = zzecVar.zzd(3) + 1;
        int zzd2 = zzecVar.zzd(5) + 1;
        this.zzh = zzd2;
        this.zzi = b(zzd2);
        this.zzj = zzecVar.zze(36);
        this.zzk = null;
        this.f4099a = null;
    }

    public static int b(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i != 20) {
            return i != 24 ? -1 : 6;
        }
        return 5;
    }

    public static int c(int i) {
        switch (i) {
            case AVMDLDataLoader.KeyIsLiveSetLoaderType /* 8000 */:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long zza() {
        long j = this.zzj;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * C.MICROS_PER_SECOND) / this.zze;
    }

    public final long zzb(long j) {
        return Math.max(0L, Math.min((j * this.zze) / C.MICROS_PER_SECOND, this.zzj - 1));
    }

    public final zzad zzc(byte[] bArr, zzbd zzbdVar) {
        bArr[4] = Byte.MIN_VALUE;
        zzbd zzd = zzd(zzbdVar);
        zzab zzabVar = new zzab();
        zzabVar.zzZ("audio/flac");
        int i = this.zzd;
        if (i <= 0) {
            i = -1;
        }
        zzabVar.zzQ(i);
        zzabVar.zzz(this.zzg);
        zzabVar.zzaa(this.zze);
        zzabVar.zzT(zzen.zzn(this.zzh));
        zzabVar.zzM(Collections.singletonList(bArr));
        zzabVar.zzS(zzd);
        return zzabVar.zzaf();
    }

    public final zzbd zzd(zzbd zzbdVar) {
        zzbd zzbdVar2 = this.f4099a;
        return zzbdVar2 == null ? zzbdVar : zzbdVar2.zzd(zzbdVar);
    }

    public final zzadc zze(List list) {
        return new zzadc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(new zzbd(list)));
    }

    public final zzadc zzf(zzadb zzadbVar) {
        return new zzadc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzadbVar, this.f4099a);
    }

    public final zzadc zzg(List list) {
        return new zzadc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzaed.zzb(list)));
    }
}
