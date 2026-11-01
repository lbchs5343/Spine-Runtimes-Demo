package com.google.android.gms.internal.ads;

import g.awf;
import g.tn;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgiq extends zzggs {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f8361a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgiv f8362b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgwv f8363c;

    /* renamed from: d, reason: collision with root package name */
    public final zzgwu f8364d;

    public zzgiq(zzgiv zzgivVar, zzgwv zzgwvVar, zzgwu zzgwuVar, Integer num) {
        this.f8362b = zzgivVar;
        this.f8363c = zzgwvVar;
        this.f8364d = zzgwuVar;
        this.f8361a = num;
    }

    public static zzgiq zza(zzgiu zzgiuVar, zzgwv zzgwvVar, Integer num) throws GeneralSecurityException {
        zzgwu zzb;
        zzgiu zzgiuVar2 = zzgiu.zzc;
        if (zzgiuVar != zzgiuVar2 && num == null) {
            throw new GeneralSecurityException(tn.ad("For given Variant ", zzgiuVar.toString(), " the value of idRequirement must be non-null"));
        }
        if (zzgiuVar == zzgiuVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzgwvVar.zza() != 32) {
            throw new GeneralSecurityException(awf.ac(zzgwvVar.zza(), "ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "));
        }
        zzgiv zzc = zzgiv.zzc(zzgiuVar);
        if (zzc.zzb() == zzgiuVar2) {
            zzb = zzgoa.zza;
        } else if (zzc.zzb() == zzgiu.zzb) {
            zzb = zzgoa.zza(num.intValue());
        } else {
            if (zzc.zzb() != zzgiu.zza) {
                throw new IllegalStateException("Unknown Variant: ".concat(zzc.zzb().toString()));
            }
            zzb = zzgoa.zzb(num.intValue());
        }
        return new zzgiq(zzc, zzgwvVar, zzb, num);
    }

    public final zzgiv zzb() {
        return this.f8362b;
    }

    public final zzgwu zzc() {
        return this.f8364d;
    }

    public final zzgwv zzd() {
        return this.f8363c;
    }

    public final Integer zze() {
        return this.f8361a;
    }
}
