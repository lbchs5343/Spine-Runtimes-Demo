package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgpz {

    /* renamed from: a, reason: collision with root package name */
    public zzgql f8577a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzgwv f8578b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8579c = null;

    public final zzgpz zza(Integer num) {
        this.f8579c = num;
        return this;
    }

    public final zzgpz zzb(zzgwv zzgwvVar) {
        this.f8578b = zzgwvVar;
        return this;
    }

    public final zzgpz zzc(zzgql zzgqlVar) {
        this.f8577a = zzgqlVar;
        return this;
    }

    public final zzgqb zzd() throws GeneralSecurityException {
        zzgwv zzgwvVar;
        zzgwu zza;
        zzgql zzgqlVar = this.f8577a;
        if (zzgqlVar == null || (zzgwvVar = this.f8578b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgqlVar.zzc() != zzgwvVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgqlVar.zza() && this.f8579c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f8577a.zza() && this.f8579c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f8577a.zzg() == zzgqj.zzd) {
            zza = zzgoa.zza;
        } else if (this.f8577a.zzg() == zzgqj.zzc || this.f8577a.zzg() == zzgqj.zzb) {
            zza = zzgoa.zza(this.f8579c.intValue());
        } else {
            if (this.f8577a.zzg() != zzgqj.zza) {
                throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(this.f8577a.zzg())));
            }
            zza = zzgoa.zzb(this.f8579c.intValue());
        }
        return new zzgqb(this.f8577a, this.f8578b, zza, this.f8579c);
    }
}
