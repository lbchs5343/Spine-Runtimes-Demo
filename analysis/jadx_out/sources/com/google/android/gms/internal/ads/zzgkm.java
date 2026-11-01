package com.google.android.gms.internal.ads;

import g.tn;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgkm extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final zzgkl f8422a;

    public zzgkm(zzgkl zzgklVar) {
        this.f8422a = zzgklVar;
    }

    public static zzgkm zzc(zzgkl zzgklVar) {
        return new zzgkm(zzgklVar);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgkm) && ((zzgkm) obj).f8422a == this.f8422a;
    }

    public final int hashCode() {
        return Objects.hash(zzgkm.class, this.f8422a);
    }

    public final String toString() {
        return tn.ad("XChaCha20Poly1305 Parameters (variant: ", this.f8422a.toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8422a != zzgkl.zzc;
    }

    public final zzgkl zzb() {
        return this.f8422a;
    }
}
