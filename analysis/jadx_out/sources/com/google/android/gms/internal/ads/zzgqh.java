package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes3.dex */
public final class zzgqh {

    /* renamed from: b, reason: collision with root package name */
    public Integer f8598b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8599c = null;

    /* renamed from: d, reason: collision with root package name */
    public zzgqi f8600d = null;

    /* renamed from: a, reason: collision with root package name */
    public zzgqj f8597a = zzgqj.zzd;

    public final zzgqh zza(zzgqi zzgqiVar) {
        this.f8600d = zzgqiVar;
        return this;
    }

    public final zzgqh zzb(int i) throws GeneralSecurityException {
        this.f8598b = Integer.valueOf(i);
        return this;
    }

    public final zzgqh zzc(int i) throws GeneralSecurityException {
        this.f8599c = Integer.valueOf(i);
        return this;
    }

    public final zzgqh zzd(zzgqj zzgqjVar) {
        this.f8597a = zzgqjVar;
        return this;
    }

    public final zzgql zze() throws GeneralSecurityException {
        Integer num = this.f8598b;
        if (num == null) {
            throw new GeneralSecurityException("key size is not set");
        }
        if (this.f8599c == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (this.f8600d == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (this.f8597a == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        if (num.intValue() < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.f8598b));
        }
        Integer num2 = this.f8599c;
        int intValue = num2.intValue();
        zzgqi zzgqiVar = this.f8600d;
        if (intValue < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
        }
        if (zzgqiVar == zzgqi.zza) {
            if (intValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
            }
        } else if (zzgqiVar == zzgqi.zzb) {
            if (intValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
            }
        } else if (zzgqiVar == zzgqi.zzc) {
            if (intValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
            }
        } else if (zzgqiVar == zzgqi.zzd) {
            if (intValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
            }
        } else {
            if (zzgqiVar != zzgqi.zze) {
                throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
            }
            if (intValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
            }
        }
        return new zzgql(this.f8598b.intValue(), this.f8599c.intValue(), this.f8597a, this.f8600d);
    }
}
