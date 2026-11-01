package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzabw implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final long f4049a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4050b;

    /* renamed from: c, reason: collision with root package name */
    public final zzabz f4051c;

    /* renamed from: d, reason: collision with root package name */
    public final long f4052d;

    /* renamed from: e, reason: collision with root package name */
    public final long f4053e;

    /* renamed from: f, reason: collision with root package name */
    public final long f4054f;

    public zzabw(zzabz zzabzVar, long j, long j2, long j3, long j4, long j5, long j6) {
        this.f4051c = zzabzVar;
        this.f4053e = j;
        this.f4054f = j3;
        this.f4049a = j4;
        this.f4050b = j5;
        this.f4052d = j6;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f4053e;
    }

    public final long zzf(long j) {
        return this.f4051c.zza(j);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        zzadr zzadrVar = new zzadr(j, zzaby.i(this.f4051c.zza(j), 0L, this.f4054f, this.f4049a, this.f4050b, this.f4052d));
        return new zzado(zzadrVar, zzadrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
