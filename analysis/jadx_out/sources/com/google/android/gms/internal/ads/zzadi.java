package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzadi implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final zzdu f4104a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdu f4105b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4106c;

    public zzadi(long[] jArr, long[] jArr2, long j) {
        int length = jArr.length;
        int length2 = jArr2.length;
        zzdb.zzd(length == length2);
        if (length2 <= 0 || jArr2[0] <= 0) {
            this.f4104a = new zzdu(length2);
            this.f4105b = new zzdu(length2);
        } else {
            int i = length2 + 1;
            zzdu zzduVar = new zzdu(i);
            this.f4104a = zzduVar;
            zzdu zzduVar2 = new zzdu(i);
            this.f4105b = zzduVar2;
            zzduVar.zzc(0L);
            zzduVar2.zzc(0L);
        }
        this.f4104a.zzd(jArr);
        this.f4105b.zzd(jArr2);
        this.f4106c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f4106c;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        zzdu zzduVar = this.f4105b;
        if (zzduVar.zza() == 0) {
            zzadr zzadrVar = zzadr.zza;
            return new zzado(zzadrVar, zzadrVar);
        }
        int zzb = zzen.zzb(zzduVar, j, true, true);
        long zzb2 = zzduVar.zzb(zzb);
        zzdu zzduVar2 = this.f4104a;
        zzadr zzadrVar2 = new zzadr(zzb2, zzduVar2.zzb(zzb));
        if (zzadrVar2.zzb == j || zzb == zzduVar.zza() - 1) {
            return new zzado(zzadrVar2, zzadrVar2);
        }
        int i = zzb + 1;
        return new zzado(zzadrVar2, new zzadr(zzduVar.zzb(i), zzduVar2.zzb(i)));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return this.f4105b.zza() > 0;
    }
}
