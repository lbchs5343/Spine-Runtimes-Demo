package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class zzlv implements zzkp {

    /* renamed from: a, reason: collision with root package name */
    public long f8794a;

    /* renamed from: b, reason: collision with root package name */
    public zzbj f8795b = zzbj.zza;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8796c;

    /* renamed from: d, reason: collision with root package name */
    public long f8797d;

    public zzlv(zzdc zzdcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final long zza() {
        long j = this.f8797d;
        if (!this.f8796c) {
            return j;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f8794a;
        zzbj zzbjVar = this.f8795b;
        return (zzbjVar.zzb == 1.0f ? zzen.zzs(elapsedRealtime) : zzbjVar.zza(elapsedRealtime)) + j;
    }

    public final void zzb(long j) {
        this.f8797d = j;
        if (this.f8796c) {
            this.f8794a = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final zzbj zzc() {
        return this.f8795b;
    }

    public final void zzd() {
        if (this.f8796c) {
            return;
        }
        this.f8794a = SystemClock.elapsedRealtime();
        this.f8796c = true;
    }

    public final void zze() {
        if (this.f8796c) {
            zzb(zza());
            this.f8796c = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzg(zzbj zzbjVar) {
        if (this.f8796c) {
            zzb(zza());
        }
        this.f8795b = zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final /* synthetic */ boolean zzj() {
        return false;
    }
}
