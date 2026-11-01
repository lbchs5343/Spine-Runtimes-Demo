package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes3.dex */
public final class zzghf {

    /* renamed from: c, reason: collision with root package name */
    public Integer f8296c = null;

    /* renamed from: e, reason: collision with root package name */
    public Integer f8298e = null;

    /* renamed from: f, reason: collision with root package name */
    public Integer f8299f = null;

    /* renamed from: a, reason: collision with root package name */
    public Integer f8294a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzghg f8295b = null;

    /* renamed from: d, reason: collision with root package name */
    public zzghh f8297d = zzghh.zzc;

    public final zzghf zza(int i) throws GeneralSecurityException {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8296c = Integer.valueOf(i);
        return this;
    }

    public final zzghf zzb(zzghg zzghgVar) {
        this.f8295b = zzghgVar;
        return this;
    }

    public final zzghf zzc(int i) throws GeneralSecurityException {
        if (i < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; HMAC key must be at least 16 bytes", Integer.valueOf(i)));
        }
        this.f8298e = Integer.valueOf(i);
        return this;
    }

    public final zzghf zzd(int i) throws GeneralSecurityException {
        if (i < 12 || i > 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes", Integer.valueOf(i)));
        }
        this.f8299f = Integer.valueOf(i);
        return this;
    }

    public final zzghf zze(int i) throws GeneralSecurityException {
        if (i < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i)));
        }
        this.f8294a = Integer.valueOf(i);
        return this;
    }

    public final zzghf zzf(zzghh zzghhVar) {
        this.f8297d = zzghhVar;
        return this;
    }

    public final zzghj zzg() throws GeneralSecurityException {
        if (this.f8296c == null) {
            throw new GeneralSecurityException("AES key size is not set");
        }
        if (this.f8298e == null) {
            throw new GeneralSecurityException("HMAC key size is not set");
        }
        if (this.f8299f == null) {
            throw new GeneralSecurityException("iv size is not set");
        }
        Integer num = this.f8294a;
        if (num == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (this.f8295b == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (this.f8297d == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        int intValue = num.intValue();
        zzghg zzghgVar = this.f8295b;
        if (zzghgVar == zzghg.zza) {
            if (intValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num));
            }
        } else if (zzghgVar == zzghg.zzb) {
            if (intValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num));
            }
        } else if (zzghgVar == zzghg.zzc) {
            if (intValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num));
            }
        } else if (zzghgVar == zzghg.zzd) {
            if (intValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num));
            }
        } else {
            if (zzghgVar != zzghg.zze) {
                throw new GeneralSecurityException("unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512");
            }
            if (intValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num));
            }
        }
        return new zzghj(this.f8296c.intValue(), this.f8298e.intValue(), this.f8299f.intValue(), this.f8294a.intValue(), this.f8297d, this.f8295b);
    }
}
