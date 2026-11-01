package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzggy {

    /* renamed from: b, reason: collision with root package name */
    public zzghj f8281b = null;

    /* renamed from: c, reason: collision with root package name */
    public zzgwv f8282c = null;

    /* renamed from: d, reason: collision with root package name */
    public zzgwv f8283d = null;

    /* renamed from: a, reason: collision with root package name */
    public Integer f8280a = null;

    public final zzggy zza(zzgwv zzgwvVar) {
        this.f8282c = zzgwvVar;
        return this;
    }

    public final zzggy zzb(zzgwv zzgwvVar) {
        this.f8283d = zzgwvVar;
        return this;
    }

    public final zzggy zzc(Integer num) {
        this.f8280a = num;
        return this;
    }

    public final zzggy zzd(zzghj zzghjVar) {
        this.f8281b = zzghjVar;
        return this;
    }

    public final zzgha zze() throws GeneralSecurityException {
        zzgwu zzb;
        zzghj zzghjVar = this.f8281b;
        if (zzghjVar == null) {
            throw new GeneralSecurityException("Cannot build without parameters");
        }
        zzgwv zzgwvVar = this.f8282c;
        if (zzgwvVar == null || this.f8283d == null) {
            throw new GeneralSecurityException("Cannot build without key material");
        }
        if (zzghjVar.zzb() != zzgwvVar.zza()) {
            throw new GeneralSecurityException("AES key size mismatch");
        }
        if (zzghjVar.zzc() != this.f8283d.zza()) {
            throw new GeneralSecurityException("HMAC key size mismatch");
        }
        if (this.f8281b.zza() && this.f8280a == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.f8281b.zza() && this.f8280a != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.f8281b.zzh() == zzghh.zzc) {
            zzb = zzgoa.zza;
        } else if (this.f8281b.zzh() == zzghh.zzb) {
            zzb = zzgoa.zza(this.f8280a.intValue());
        } else {
            if (this.f8281b.zzh() != zzghh.zza) {
                throw new IllegalStateException("Unknown AesCtrHmacAeadParameters.Variant: ".concat(String.valueOf(this.f8281b.zzh())));
            }
            zzb = zzgoa.zzb(this.f8280a.intValue());
        }
        return new zzgha(this.f8281b, this.f8282c, this.f8283d, zzb, this.f8280a);
    }
}
