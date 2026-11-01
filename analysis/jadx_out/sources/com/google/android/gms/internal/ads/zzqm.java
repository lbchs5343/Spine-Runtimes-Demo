package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzqm {

    /* renamed from: a, reason: collision with root package name */
    public final zzcm[] f8848a;

    /* renamed from: b, reason: collision with root package name */
    public final zzre f8849b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcp f8850c;

    public zzqm(zzcm... zzcmVarArr) {
        zzre zzreVar = new zzre();
        zzcp zzcpVar = new zzcp();
        zzcm[] zzcmVarArr2 = {zzreVar, zzcpVar};
        this.f8848a = zzcmVarArr2;
        System.arraycopy(zzcmVarArr, 0, zzcmVarArr2, 0, 0);
        this.f8849b = zzreVar;
        this.f8850c = zzcpVar;
    }

    public final long zza(long j) {
        zzcp zzcpVar = this.f8850c;
        return zzcpVar.zzg() ? zzcpVar.zzi(j) : j;
    }

    public final long zzb() {
        return this.f8849b.zzo();
    }

    public final zzbj zzc(zzbj zzbjVar) {
        float f2 = zzbjVar.zzb;
        zzcp zzcpVar = this.f8850c;
        zzcpVar.zzk(f2);
        zzcpVar.zzj(zzbjVar.zzc);
        return zzbjVar;
    }

    public final boolean zzd(boolean z) {
        this.f8849b.zzp(z);
        return z;
    }

    public final zzcm[] zze() {
        return this.f8848a;
    }
}
