package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public class zzadp implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final long f4114a;

    /* renamed from: b, reason: collision with root package name */
    public final zzado f4115b;

    public zzadp(long j, long j2) {
        this.f4114a = j;
        zzadr zzadrVar = j2 == 0 ? zzadr.zza : new zzadr(0L, j2);
        this.f4115b = new zzado(zzadrVar, zzadrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f4114a;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        return this.f4115b;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return false;
    }
}
