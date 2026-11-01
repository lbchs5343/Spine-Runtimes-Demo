package com.google.android.gms.internal.ads;

import g.tn;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgiv extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final zzgiu f8369a;

    public zzgiv(zzgiu zzgiuVar) {
        this.f8369a = zzgiuVar;
    }

    public static zzgiv zzc(zzgiu zzgiuVar) {
        return new zzgiv(zzgiuVar);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgiv) && ((zzgiv) obj).f8369a == this.f8369a;
    }

    public final int hashCode() {
        return Objects.hash(zzgiv.class, this.f8369a);
    }

    public final String toString() {
        return tn.ad("ChaCha20Poly1305 Parameters (variant: ", this.f8369a.toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8369a != zzgiu.zzc;
    }

    public final zzgiu zzb() {
        return this.f8369a;
    }
}
