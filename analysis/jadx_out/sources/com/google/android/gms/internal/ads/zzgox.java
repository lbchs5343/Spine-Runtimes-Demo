package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgox implements zzgpb {

    /* renamed from: a, reason: collision with root package name */
    public final zzgwu f8546a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgue f8547b;

    public zzgox(zzgue zzgueVar, zzgwu zzgwuVar) {
        this.f8547b = zzgueVar;
        this.f8546a = zzgwuVar;
    }

    public static zzgox zza(zzgue zzgueVar) throws GeneralSecurityException {
        return new zzgox(zzgueVar, zzgpj.zza(zzgueVar.zzi()));
    }

    public static zzgox zzb(zzgue zzgueVar) {
        return new zzgox(zzgueVar, zzgpj.zzb(zzgueVar.zzi()));
    }

    public final zzgue zzc() {
        return this.f8547b;
    }

    @Override // com.google.android.gms.internal.ads.zzgpb
    public final zzgwu zzd() {
        return this.f8546a;
    }
}
