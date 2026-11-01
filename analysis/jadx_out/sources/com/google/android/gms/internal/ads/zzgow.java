package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgow implements zzgpb {

    /* renamed from: a, reason: collision with root package name */
    public final zzgty f8540a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgve f8541b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8542c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f8543d;

    /* renamed from: e, reason: collision with root package name */
    public final zzgwu f8544e;

    /* renamed from: f, reason: collision with root package name */
    public final zzgxp f8545f;

    public zzgow(String str, zzgwu zzgwuVar, zzgxp zzgxpVar, zzgty zzgtyVar, zzgve zzgveVar, Integer num) {
        this.f8542c = str;
        this.f8544e = zzgwuVar;
        this.f8545f = zzgxpVar;
        this.f8540a = zzgtyVar;
        this.f8541b = zzgveVar;
        this.f8543d = num;
    }

    public static zzgow zza(String str, zzgxp zzgxpVar, zzgty zzgtyVar, zzgve zzgveVar, Integer num) throws GeneralSecurityException {
        if (zzgveVar == zzgve.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new zzgow(str, zzgpj.zza(str), zzgxpVar, zzgtyVar, zzgveVar, num);
    }

    public final zzgty zzb() {
        return this.f8540a;
    }

    public final zzgve zzc() {
        return this.f8541b;
    }

    @Override // com.google.android.gms.internal.ads.zzgpb
    public final zzgwu zzd() {
        return this.f8544e;
    }

    public final zzgxp zze() {
        return this.f8545f;
    }

    public final Integer zzf() {
        return this.f8543d;
    }

    public final String zzg() {
        return this.f8542c;
    }
}
