package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public final class zzada implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final zzadc f4097a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4098b;

    public zzada(zzadc zzadcVar, long j) {
        this.f4097a = zzadcVar;
        this.f4098b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f4097a.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        zzadc zzadcVar = this.f4097a;
        zzdb.zzb(zzadcVar.zzk);
        zzadb zzadbVar = zzadcVar.zzk;
        long[] jArr = zzadbVar.zza;
        long[] jArr2 = zzadbVar.zzb;
        int zzd = zzen.zzd(jArr, zzadcVar.zzb(j), true, false);
        long j2 = zzd == -1 ? 0L : jArr[zzd];
        long j3 = zzd != -1 ? jArr2[zzd] : 0L;
        long j4 = (j2 * C.MICROS_PER_SECOND) / zzadcVar.zze;
        long j5 = this.f4098b;
        zzadr zzadrVar = new zzadr(j4, j3 + j5);
        if (zzadrVar.zzb == j || zzd == jArr.length - 1) {
            return new zzado(zzadrVar, zzadrVar);
        }
        int i = zzd + 1;
        return new zzado(zzadrVar, new zzadr((jArr[i] * C.MICROS_PER_SECOND) / zzadcVar.zze, j5 + jArr2[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
