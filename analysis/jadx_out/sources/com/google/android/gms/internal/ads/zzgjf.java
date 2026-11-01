package com.google.android.gms.internal.ads;

import g.awf;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgjf extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final String f8386a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgje f8387b;

    public zzgjf(String str, zzgje zzgjeVar) {
        this.f8386a = str;
        this.f8387b = zzgjeVar;
    }

    public static zzgjf zzc(String str, zzgje zzgjeVar) {
        return new zzgjf(str, zzgjeVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgjf)) {
            return false;
        }
        zzgjf zzgjfVar = (zzgjf) obj;
        return zzgjfVar.f8386a.equals(this.f8386a) && zzgjfVar.f8387b.equals(this.f8387b);
    }

    public final int hashCode() {
        return Objects.hash(zzgjf.class, this.f8386a, this.f8387b);
    }

    public final String toString() {
        return awf.r(new StringBuilder("LegacyKmsAead Parameters (keyUri: "), this.f8386a, ", variant: ", this.f8387b.toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8387b != zzgje.zzb;
    }

    public final zzgje zzb() {
        return this.f8387b;
    }

    public final String zzd() {
        return this.f8386a;
    }
}
