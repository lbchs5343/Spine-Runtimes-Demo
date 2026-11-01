package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes3.dex */
public final class zzghq {

    /* renamed from: b, reason: collision with root package name */
    public Integer f8319b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8320c = null;

    /* renamed from: d, reason: collision with root package name */
    public Integer f8321d = null;

    /* renamed from: a, reason: collision with root package name */
    public zzghr f8318a = zzghr.zzc;

    public final zzghq zza(int i) throws GeneralSecurityException {
        if (i != 12 && i != 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i)));
        }
        this.f8320c = Integer.valueOf(i);
        return this;
    }

    public final zzghq zzb(int i) throws GeneralSecurityException {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8319b = Integer.valueOf(i);
        return this;
    }

    public final zzghq zzc(int i) throws GeneralSecurityException {
        this.f8321d = 16;
        return this;
    }

    public final zzghq zzd(zzghr zzghrVar) {
        this.f8318a = zzghrVar;
        return this;
    }

    public final zzght zze() throws GeneralSecurityException {
        Integer num = this.f8319b;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.f8320c == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (this.f8318a == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (this.f8321d == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int intValue = num.intValue();
        int intValue2 = this.f8320c.intValue();
        this.f8321d.getClass();
        return new zzght(intValue, intValue2, this.f8318a);
    }
}
