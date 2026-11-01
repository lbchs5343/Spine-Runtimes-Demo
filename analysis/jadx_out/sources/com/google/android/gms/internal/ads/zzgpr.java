package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes3.dex */
public final class zzgpr {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8569a = null;

    /* renamed from: b, reason: collision with root package name */
    public Integer f8570b = null;

    /* renamed from: c, reason: collision with root package name */
    public zzgps f8571c = zzgps.zzd;

    public final zzgpr zza(int i) throws GeneralSecurityException {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i * 8)));
        }
        this.f8569a = Integer.valueOf(i);
        return this;
    }

    public final zzgpr zzb(int i) throws GeneralSecurityException {
        if (i < 10 || i > 16) {
            throw new GeneralSecurityException(awf.ac(i, "Invalid tag size for AesCmacParameters: "));
        }
        this.f8570b = Integer.valueOf(i);
        return this;
    }

    public final zzgpr zzc(zzgps zzgpsVar) {
        this.f8571c = zzgpsVar;
        return this;
    }

    public final zzgpu zzd() throws GeneralSecurityException {
        Integer num = this.f8569a;
        if (num == null) {
            throw new GeneralSecurityException("key size not set");
        }
        if (this.f8570b == null) {
            throw new GeneralSecurityException("tag size not set");
        }
        if (this.f8571c != null) {
            return new zzgpu(num.intValue(), this.f8570b.intValue(), this.f8571c);
        }
        throw new GeneralSecurityException("variant not set");
    }
}
