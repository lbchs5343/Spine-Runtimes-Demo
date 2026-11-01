package com.google.android.gms.internal.ads;

import g.awf;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzght extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final int f8323a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8324b;

    /* renamed from: c, reason: collision with root package name */
    public final zzghr f8325c;

    public /* synthetic */ zzght(int i, int i2, zzghr zzghrVar) {
        this.f8323a = i;
        this.f8324b = i2;
        this.f8325c = zzghrVar;
    }

    public static zzghq zzd() {
        return new zzghq();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzght)) {
            return false;
        }
        zzght zzghtVar = (zzght) obj;
        return zzghtVar.f8323a == this.f8323a && zzghtVar.f8324b == this.f8324b && zzghtVar.f8325c == this.f8325c;
    }

    public final int hashCode() {
        return Objects.hash(zzght.class, Integer.valueOf(this.f8323a), Integer.valueOf(this.f8324b), 16, this.f8325c);
    }

    public final String toString() {
        StringBuilder p = awf.p("AesEax Parameters (variant: ", String.valueOf(this.f8325c), ", ");
        p.append(this.f8324b);
        p.append("-byte IV, 16-byte tag, and ");
        return awf.x(p, this.f8323a, "-byte key)");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8325c != zzghr.zzc;
    }

    public final int zzb() {
        return this.f8324b;
    }

    public final int zzc() {
        return this.f8323a;
    }

    public final zzghr zze() {
        return this.f8325c;
    }
}
