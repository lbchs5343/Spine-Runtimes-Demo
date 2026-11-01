package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgjd extends zzggs {

    /* renamed from: a, reason: collision with root package name */
    public final zzgjf f8382a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgwu f8383b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f8384c;

    public zzgjd(zzgjf zzgjfVar, zzgwu zzgwuVar, Integer num) {
        this.f8382a = zzgjfVar;
        this.f8383b = zzgwuVar;
        this.f8384c = num;
    }

    public static zzgjd zza(zzgjf zzgjfVar, Integer num) throws GeneralSecurityException {
        zzgwu zzb;
        if (zzgjfVar.zzb() == zzgje.zza) {
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            zzb = zzgwu.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        } else {
            if (zzgjfVar.zzb() != zzgje.zzb) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(zzgjfVar.zzb().toString()));
            }
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            zzb = zzgwu.zzb(new byte[0]);
        }
        return new zzgjd(zzgjfVar, zzb, num);
    }

    public final zzgjf zzb() {
        return this.f8382a;
    }

    public final zzgwu zzc() {
        return this.f8383b;
    }

    public final Integer zzd() {
        return this.f8384c;
    }
}
