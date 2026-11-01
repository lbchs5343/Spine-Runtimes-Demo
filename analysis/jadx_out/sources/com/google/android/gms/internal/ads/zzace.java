package com.google.android.gms.internal.ads;

import g.awf;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzace implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final long f4069a;
    public final int zza;
    public final int[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    public final long[] zze;

    public zzace(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzb = iArr;
        this.zzc = jArr;
        this.zzd = jArr2;
        this.zze = jArr3;
        int length = iArr.length;
        this.zza = length;
        if (length <= 0) {
            this.f4069a = 0L;
        } else {
            int i = length - 1;
            this.f4069a = jArr2[i] + jArr3[i];
        }
    }

    public final String toString() {
        long[] jArr = this.zzd;
        long[] jArr2 = this.zze;
        long[] jArr3 = this.zzc;
        String arrays = Arrays.toString(this.zzb);
        String arrays2 = Arrays.toString(jArr3);
        String arrays3 = Arrays.toString(jArr2);
        String arrays4 = Arrays.toString(jArr);
        StringBuilder sb = new StringBuilder("ChunkIndex(length=");
        sb.append(this.zza);
        sb.append(", sizes=");
        sb.append(arrays);
        sb.append(", offsets=");
        awf.y(sb, arrays2, ", timeUs=", arrays3, ", durationsUs=");
        return awf.ad(sb, arrays4, ")");
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f4069a;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        long[] jArr = this.zze;
        int zzd = zzen.zzd(jArr, j, true, true);
        zzadr zzadrVar = new zzadr(jArr[zzd], this.zzc[zzd]);
        if (zzadrVar.zzb >= j || zzd == this.zza - 1) {
            return new zzado(zzadrVar, zzadrVar);
        }
        int i = zzd + 1;
        return new zzado(zzadrVar, new zzadr(this.zze[i], this.zzc[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
