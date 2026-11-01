package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public class zzacf implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final long f4070a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4071b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4072c;

    /* renamed from: d, reason: collision with root package name */
    public final long f4073d;

    /* renamed from: e, reason: collision with root package name */
    public final long f4074e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4075f;

    public zzacf(long j, long j2, int i, int i2, boolean z) {
        long max;
        this.f4072c = j;
        this.f4074e = j2;
        this.f4075f = i2 == -1 ? 1 : i2;
        this.f4071b = i;
        if (j == -1) {
            this.f4070a = -1L;
            max = -9223372036854775807L;
        } else {
            long j3 = j - j2;
            this.f4070a = j3;
            max = (Math.max(0L, j3) * 8000000) / i;
        }
        this.f4073d = max;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f4073d;
    }

    public final long zzb(long j) {
        return (Math.max(0L, j - this.f4074e) * 8000000) / this.f4071b;
    }

    public long zze(long j) {
        return zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        long j2 = this.f4074e;
        long j3 = this.f4070a;
        if (j3 == -1) {
            zzadr zzadrVar = new zzadr(0L, j2);
            return new zzado(zzadrVar, zzadrVar);
        }
        int i = this.f4075f;
        long j4 = i;
        long j5 = (((this.f4071b * j) / 8000000) / j4) * j4;
        if (j3 != -1) {
            j5 = Math.min(j5, j3 - j4);
        }
        long max = j2 + Math.max(j5, 0L);
        long zzb = zzb(max);
        zzadr zzadrVar2 = new zzadr(zzb, max);
        if (j3 != -1 && zzb < j) {
            long j6 = max + i;
            if (j6 < this.f4072c) {
                return new zzado(zzadrVar2, new zzadr(zzb(j6), j6));
            }
        }
        return new zzado(zzadrVar2, zzadrVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return this.f4070a != -1;
    }
}
