package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgjl extends zzggs {

    /* renamed from: a, reason: collision with root package name */
    public final zzgjq f8388a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgwu f8389b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f8390c;

    public zzgjl(zzgjq zzgjqVar, zzgwu zzgwuVar, Integer num) {
        this.f8388a = zzgjqVar;
        this.f8389b = zzgwuVar;
        this.f8390c = num;
    }

    public static zzgjl zza(zzgjq zzgjqVar, Integer num) throws GeneralSecurityException {
        zzgwu zzb;
        if (zzgjqVar.zzc() == zzgjo.zzb) {
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            zzb = zzgoa.zza;
        } else {
            if (zzgjqVar.zzc() != zzgjo.zza) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(zzgjqVar.zzc())));
            }
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            zzb = zzgoa.zzb(num.intValue());
        }
        return new zzgjl(zzgjqVar, zzb, num);
    }

    public final zzgjq zzb() {
        return this.f8388a;
    }

    public final zzgwu zzc() {
        return this.f8389b;
    }

    public final Integer zzd() {
        return this.f8390c;
    }
}
