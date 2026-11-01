package com.google.android.gms.internal.ads;

import g.edt;
import java.util.Random;

/* loaded from: classes3.dex */
public final class zzflx {

    /* renamed from: a, reason: collision with root package name */
    public long f7992a;

    /* renamed from: c, reason: collision with root package name */
    public final long f7994c;

    /* renamed from: d, reason: collision with root package name */
    public final long f7995d;

    /* renamed from: b, reason: collision with root package name */
    public final Random f7993b = new Random();

    /* renamed from: e, reason: collision with root package name */
    public long f7996e = 0;

    public zzflx(long j, double d2, long j2, double d3) {
        this.f7994c = j;
        this.f7995d = j2;
        zzc();
    }

    public final long zza() {
        double d2 = this.f7992a;
        double d3 = 0.2d * d2;
        long j = (long) (d2 + d3);
        return ((long) (d2 - d3)) + ((long) (this.f7993b.nextDouble() * ((j - r0) + 1)));
    }

    public final void zzb() {
        double d2 = this.f7992a;
        this.f7992a = Math.min((long) (d2 + d2), this.f7995d);
        this.f7996e++;
    }

    public final void zzc() {
        this.f7992a = this.f7994c;
        this.f7996e = 0L;
    }

    public final boolean zzd() {
        return this.f7996e > ((long) ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzw)).intValue()) && this.f7992a >= this.f7995d;
    }
}
