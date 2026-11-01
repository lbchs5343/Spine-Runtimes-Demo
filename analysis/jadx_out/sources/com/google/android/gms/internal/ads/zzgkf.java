package com.google.android.gms.internal.ads;

import g.tn;
import j$.util.Objects;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgkf extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final zzgke f8412a;

    public zzgkf(zzgke zzgkeVar) {
        this.f8412a = zzgkeVar;
    }

    public static zzgkf zzb(zzgke zzgkeVar, int i) throws GeneralSecurityException {
        return new zzgkf(zzgkeVar);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgkf) && ((zzgkf) obj).f8412a == this.f8412a;
    }

    public final int hashCode() {
        return Objects.hash(zzgkf.class, this.f8412a, 8);
    }

    public final String toString() {
        return tn.ad("X-AES-GCM Parameters (variant: ", this.f8412a.toString(), "salt_size_bytes: 8)");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8412a != zzgke.zza;
    }
}
