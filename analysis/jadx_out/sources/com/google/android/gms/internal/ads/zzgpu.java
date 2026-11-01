package com.google.android.gms.internal.ads;

import g.awf;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgpu extends zzgqo {

    /* renamed from: a, reason: collision with root package name */
    public final int f8573a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8574b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgps f8575c;

    public /* synthetic */ zzgpu(int i, int i2, zzgps zzgpsVar) {
        this.f8573a = i;
        this.f8574b = i2;
        this.f8575c = zzgpsVar;
    }

    public static zzgpr zze() {
        return new zzgpr();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpu)) {
            return false;
        }
        zzgpu zzgpuVar = (zzgpu) obj;
        return zzgpuVar.f8573a == this.f8573a && zzgpuVar.zzd() == zzd() && zzgpuVar.f8575c == this.f8575c;
    }

    public final int hashCode() {
        return Objects.hash(zzgpu.class, Integer.valueOf(this.f8573a), Integer.valueOf(this.f8574b), this.f8575c);
    }

    public final String toString() {
        StringBuilder p = awf.p("AES-CMAC Parameters (variant: ", String.valueOf(this.f8575c), ", ");
        p.append(this.f8574b);
        p.append("-byte tags, and ");
        return awf.x(p, this.f8573a, "-byte key)");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8575c != zzgps.zzd;
    }

    public final int zzb() {
        return this.f8574b;
    }

    public final int zzc() {
        return this.f8573a;
    }

    public final int zzd() {
        zzgps zzgpsVar = zzgps.zzd;
        int i = this.f8574b;
        zzgps zzgpsVar2 = this.f8575c;
        if (zzgpsVar2 == zzgpsVar) {
            return i;
        }
        if (zzgpsVar2 == zzgps.zza || zzgpsVar2 == zzgps.zzb || zzgpsVar2 == zzgps.zzc) {
            return i + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgps zzf() {
        return this.f8575c;
    }
}
