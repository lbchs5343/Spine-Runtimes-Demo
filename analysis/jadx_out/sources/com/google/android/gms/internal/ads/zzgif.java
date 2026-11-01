package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgif {

    /* renamed from: a, reason: collision with root package name */
    public zzgip f8345a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzgwv f8346b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8347c = null;

    public final zzgif zza(Integer num) {
        this.f8347c = num;
        return this;
    }

    public final zzgif zzb(zzgwv zzgwvVar) {
        this.f8346b = zzgwvVar;
        return this;
    }

    public final zzgif zzc(zzgip zzgipVar) {
        this.f8345a = zzgipVar;
        return this;
    }

    public final zzgih zzd() throws GeneralSecurityException {
        zzgwv zzgwvVar;
        zzgwu zzb;
        zzgip zzgipVar = this.f8345a;
        if (zzgipVar == null || (zzgwvVar = this.f8346b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgipVar.zzb() != zzgwvVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgipVar.zza() && this.f8347c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f8345a.zza() && this.f8347c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f8345a.zzd() == zzgin.zzc) {
            zzb = zzgoa.zza;
        } else if (this.f8345a.zzd() == zzgin.zzb) {
            zzb = zzgoa.zza(this.f8347c.intValue());
        } else {
            if (this.f8345a.zzd() != zzgin.zza) {
                throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(this.f8345a.zzd())));
            }
            zzb = zzgoa.zzb(this.f8347c.intValue());
        }
        return new zzgih(this.f8345a, this.f8346b, zzb, this.f8347c);
    }
}
