package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzghk {

    /* renamed from: a, reason: collision with root package name */
    public zzght f8308a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzgwv f8309b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8310c = null;

    public final zzghk zza(Integer num) {
        this.f8310c = num;
        return this;
    }

    public final zzghk zzb(zzgwv zzgwvVar) {
        this.f8309b = zzgwvVar;
        return this;
    }

    public final zzghk zzc(zzght zzghtVar) {
        this.f8308a = zzghtVar;
        return this;
    }

    public final zzghm zzd() throws GeneralSecurityException {
        zzgwv zzgwvVar;
        zzgwu zzb;
        zzght zzghtVar = this.f8308a;
        if (zzghtVar == null || (zzgwvVar = this.f8309b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzghtVar.zzc() != zzgwvVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzghtVar.zza() && this.f8310c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f8308a.zza() && this.f8310c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f8308a.zze() == zzghr.zzc) {
            zzb = zzgoa.zza;
        } else if (this.f8308a.zze() == zzghr.zzb) {
            zzb = zzgoa.zza(this.f8310c.intValue());
        } else {
            if (this.f8308a.zze() != zzghr.zza) {
                throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(this.f8308a.zze())));
            }
            zzb = zzgoa.zzb(this.f8310c.intValue());
        }
        return new zzghm(this.f8308a, this.f8309b, zzb, this.f8310c);
    }
}
