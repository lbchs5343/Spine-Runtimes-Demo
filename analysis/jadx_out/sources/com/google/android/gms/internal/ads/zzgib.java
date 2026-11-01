package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes3.dex */
public final class zzgib {

    /* renamed from: b, reason: collision with root package name */
    public Integer f8339b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8340c = null;

    /* renamed from: d, reason: collision with root package name */
    public Integer f8341d = null;

    /* renamed from: a, reason: collision with root package name */
    public zzgic f8338a = zzgic.zzc;

    public final zzgib zza(int i) throws GeneralSecurityException {
        this.f8340c = 12;
        return this;
    }

    public final zzgib zzb(int i) throws GeneralSecurityException {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8339b = Integer.valueOf(i);
        return this;
    }

    public final zzgib zzc(int i) throws GeneralSecurityException {
        this.f8341d = 16;
        return this;
    }

    public final zzgib zzd(zzgic zzgicVar) {
        this.f8338a = zzgicVar;
        return this;
    }

    public final zzgie zze() throws GeneralSecurityException {
        Integer num = this.f8339b;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.f8338a == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (this.f8340c == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (this.f8341d == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int intValue = num.intValue();
        this.f8340c.getClass();
        this.f8341d.getClass();
        return new zzgie(intValue, this.f8338a);
    }
}
