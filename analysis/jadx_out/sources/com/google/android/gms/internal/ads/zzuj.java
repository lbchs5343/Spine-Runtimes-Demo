package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzuj implements zzup, zzuo {

    /* renamed from: a, reason: collision with root package name */
    public zzup f8901a;

    /* renamed from: b, reason: collision with root package name */
    public zzuo f8902b;

    /* renamed from: c, reason: collision with root package name */
    public long f8903c = -9223372036854775807L;

    /* renamed from: d, reason: collision with root package name */
    public final long f8904d;

    /* renamed from: e, reason: collision with root package name */
    public zzut f8905e;

    /* renamed from: f, reason: collision with root package name */
    public final zzys f8906f;
    public final zzur zza;

    public zzuj(zzur zzurVar, zzys zzysVar, long j) {
        this.zza = zzurVar;
        this.f8906f = zzysVar;
        this.f8904d = j;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zza(long j, zzls zzlsVar) {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        return zzupVar.zza(j, zzlsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzb() {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        return zzupVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzc() {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        return zzupVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzd() {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        return zzupVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zze(long j) {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        return zzupVar.zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzf(zzyd[] zzydVarArr, boolean[] zArr, zzwg[] zzwgVarArr, boolean[] zArr2, long j) {
        long j2 = this.f8903c;
        long j3 = (j2 == -9223372036854775807L || j != this.f8904d) ? j : j2;
        this.f8903c = -9223372036854775807L;
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        return zzupVar.zzf(zzydVarArr, zArr, zzwgVarArr, zArr2, j3);
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final /* bridge */ /* synthetic */ void zzg(zzwi zzwiVar) {
        zzuo zzuoVar = this.f8902b;
        int i = zzen.zza;
        zzuoVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final zzwr zzh() {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        return zzupVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzi(zzup zzupVar) {
        zzuo zzuoVar = this.f8902b;
        int i = zzen.zza;
        zzuoVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzj(long j, boolean z) {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        zzupVar.zzj(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzk() throws IOException {
        zzup zzupVar = this.f8901a;
        if (zzupVar != null) {
            zzupVar.zzk();
            return;
        }
        zzut zzutVar = this.f8905e;
        if (zzutVar != null) {
            zzutVar.zzz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzl(zzuo zzuoVar, long j) {
        this.f8902b = zzuoVar;
        zzup zzupVar = this.f8901a;
        if (zzupVar != null) {
            long j2 = this.f8903c;
            if (j2 == -9223372036854775807L) {
                j2 = this.f8904d;
            }
            zzupVar.zzl(this, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final void zzm(long j) {
        zzup zzupVar = this.f8901a;
        int i = zzen.zza;
        zzupVar.zzm(j);
    }

    public final long zzn() {
        return this.f8903c;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzo(zzko zzkoVar) {
        zzup zzupVar = this.f8901a;
        return zzupVar != null && zzupVar.zzo(zzkoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzp() {
        zzup zzupVar = this.f8901a;
        return zzupVar != null && zzupVar.zzp();
    }

    public final long zzq() {
        return this.f8904d;
    }

    public final void zzr(zzur zzurVar) {
        long j = this.f8903c;
        if (j == -9223372036854775807L) {
            j = this.f8904d;
        }
        zzut zzutVar = this.f8905e;
        zzutVar.getClass();
        zzup zzI = zzutVar.zzI(zzurVar, this.f8906f, j);
        this.f8901a = zzI;
        if (this.f8902b != null) {
            zzI.zzl(this, j);
        }
    }

    public final void zzs(long j) {
        this.f8903c = j;
    }

    public final void zzt() {
        zzup zzupVar = this.f8901a;
        if (zzupVar != null) {
            zzut zzutVar = this.f8905e;
            zzutVar.getClass();
            zzutVar.zzG(zzupVar);
        }
    }

    public final void zzu(zzut zzutVar) {
        zzdb.zzf(this.f8905e == null);
        this.f8905e = zzutVar;
    }
}
