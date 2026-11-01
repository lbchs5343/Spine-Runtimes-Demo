package com.google.android.gms.internal.ads;

import g.awf;
import g.tn;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgkg extends zzggs {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f8413a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgkm f8414b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgwv f8415c;

    /* renamed from: d, reason: collision with root package name */
    public final zzgwu f8416d;

    public zzgkg(zzgkm zzgkmVar, zzgwv zzgwvVar, zzgwu zzgwuVar, Integer num) {
        this.f8414b = zzgkmVar;
        this.f8415c = zzgwvVar;
        this.f8416d = zzgwuVar;
        this.f8413a = num;
    }

    public static zzgkg zza(zzgkl zzgklVar, zzgwv zzgwvVar, Integer num) throws GeneralSecurityException {
        zzgwu zzb;
        zzgkl zzgklVar2 = zzgkl.zzc;
        if (zzgklVar != zzgklVar2 && num == null) {
            throw new GeneralSecurityException(tn.ad("For given Variant ", zzgklVar.toString(), " the value of idRequirement must be non-null"));
        }
        if (zzgklVar == zzgklVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzgwvVar.zza() != 32) {
            throw new GeneralSecurityException(awf.ac(zzgwvVar.zza(), "XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "));
        }
        zzgkm zzc = zzgkm.zzc(zzgklVar);
        if (zzc.zzb() == zzgklVar2) {
            zzb = zzgoa.zza;
        } else if (zzc.zzb() == zzgkl.zzb) {
            zzb = zzgoa.zza(num.intValue());
        } else {
            if (zzc.zzb() != zzgkl.zza) {
                throw new IllegalStateException("Unknown Variant: ".concat(zzc.zzb().toString()));
            }
            zzb = zzgoa.zzb(num.intValue());
        }
        return new zzgkg(zzc, zzgwvVar, zzb, num);
    }

    public final zzgkm zzb() {
        return this.f8414b;
    }

    public final zzgwu zzc() {
        return this.f8416d;
    }

    public final zzgwv zzd() {
        return this.f8415c;
    }

    public final Integer zze() {
        return this.f8413a;
    }
}
