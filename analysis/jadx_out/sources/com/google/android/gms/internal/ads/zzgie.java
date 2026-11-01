package com.google.android.gms.internal.ads;

import g.awf;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgie extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final int f8343a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgic f8344b;

    public /* synthetic */ zzgie(int i, zzgic zzgicVar) {
        this.f8343a = i;
        this.f8344b = zzgicVar;
    }

    public static zzgib zzc() {
        return new zzgib();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgie)) {
            return false;
        }
        zzgie zzgieVar = (zzgie) obj;
        return zzgieVar.f8343a == this.f8343a && zzgieVar.f8344b == this.f8344b;
    }

    public final int hashCode() {
        return Objects.hash(zzgie.class, Integer.valueOf(this.f8343a), 12, 16, this.f8344b);
    }

    public final String toString() {
        return awf.x(awf.p("AesGcm Parameters (variant: ", String.valueOf(this.f8344b), ", 12-byte IV, 16-byte tag, and "), this.f8343a, "-byte key)");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8344b != zzgic.zzc;
    }

    public final int zzb() {
        return this.f8343a;
    }

    public final zzgic zzd() {
        return this.f8344b;
    }
}
