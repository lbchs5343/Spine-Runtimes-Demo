package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgpk {

    /* renamed from: a, reason: collision with root package name */
    public zzgpu f8558a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzgwv f8559b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8560c = null;

    public final zzgpk zza(zzgwv zzgwvVar) throws GeneralSecurityException {
        this.f8559b = zzgwvVar;
        return this;
    }

    public final zzgpk zzb(Integer num) {
        this.f8560c = num;
        return this;
    }

    public final zzgpk zzc(zzgpu zzgpuVar) {
        this.f8558a = zzgpuVar;
        return this;
    }

    public final zzgpm zzd() throws GeneralSecurityException {
        zzgwv zzgwvVar;
        zzgwu zza;
        zzgpu zzgpuVar = this.f8558a;
        if (zzgpuVar == null || (zzgwvVar = this.f8559b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgpuVar.zzc() != zzgwvVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgpuVar.zza() && this.f8560c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f8558a.zza() && this.f8560c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f8558a.zzf() == zzgps.zzd) {
            zza = zzgoa.zza;
        } else if (this.f8558a.zzf() == zzgps.zzc || this.f8558a.zzf() == zzgps.zzb) {
            zza = zzgoa.zza(this.f8560c.intValue());
        } else {
            if (this.f8558a.zzf() != zzgps.zza) {
                throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(this.f8558a.zzf())));
            }
            zza = zzgoa.zzb(this.f8560c.intValue());
        }
        return new zzgpm(this.f8558a, this.f8559b, zza, this.f8560c);
    }
}
