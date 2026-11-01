package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzghu {

    /* renamed from: a, reason: collision with root package name */
    public zzgie f8326a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzgwv f8327b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8328c = null;

    public final zzghu zza(Integer num) {
        this.f8328c = num;
        return this;
    }

    public final zzghu zzb(zzgwv zzgwvVar) {
        this.f8327b = zzgwvVar;
        return this;
    }

    public final zzghu zzc(zzgie zzgieVar) {
        this.f8326a = zzgieVar;
        return this;
    }

    public final zzghw zzd() throws GeneralSecurityException {
        zzgwv zzgwvVar;
        zzgwu zzb;
        zzgie zzgieVar = this.f8326a;
        if (zzgieVar == null || (zzgwvVar = this.f8327b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgieVar.zzb() != zzgwvVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgieVar.zza() && this.f8328c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f8326a.zza() && this.f8328c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f8326a.zzd() == zzgic.zzc) {
            zzb = zzgoa.zza;
        } else if (this.f8326a.zzd() == zzgic.zzb) {
            zzb = zzgoa.zza(this.f8328c.intValue());
        } else {
            if (this.f8326a.zzd() != zzgic.zza) {
                throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(this.f8326a.zzd())));
            }
            zzb = zzgoa.zzb(this.f8328c.intValue());
        }
        return new zzghw(this.f8326a, this.f8327b, zzb, this.f8328c);
    }
}
