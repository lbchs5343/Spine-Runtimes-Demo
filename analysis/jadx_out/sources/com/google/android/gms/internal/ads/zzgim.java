package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes3.dex */
public final class zzgim {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8356a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzgin f8357b = zzgin.zzc;

    public final zzgim zza(int i) throws GeneralSecurityException {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8356a = Integer.valueOf(i);
        return this;
    }

    public final zzgim zzb(zzgin zzginVar) {
        this.f8357b = zzginVar;
        return this;
    }

    public final zzgip zzc() throws GeneralSecurityException {
        Integer num = this.f8356a;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.f8357b != null) {
            return new zzgip(num.intValue(), this.f8357b);
        }
        throw new GeneralSecurityException("Variant is not set");
    }
}
