package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgmx implements zzgfx {

    /* renamed from: a, reason: collision with root package name */
    public final String f8486a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f8487b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgty f8488c;

    public zzgmx(String str, Class cls, zzgty zzgtyVar) {
        this.f8486a = str;
        this.f8487b = cls;
        this.f8488c = zzgtyVar;
    }

    public static zzgfx zzd(String str, Class cls, zzgty zzgtyVar, zzhaq zzhaqVar) {
        return new zzgmx(str, cls, zzgtyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgfx
    public final zzgua zza(zzgxp zzgxpVar) throws GeneralSecurityException {
        zzguc zza = zzgue.zza();
        zza.zzb(this.f8486a);
        zza.zzc(zzgxpVar);
        zza.zza(zzgve.RAW);
        zzgow zzgowVar = (zzgow) zzgnz.zzc().zzd(zzgnp.zzb().zza(zzgnz.zzc().zzb(zzgox.zza((zzgue) zza.zzbr())), null), zzgow.class, zzgfv.zza());
        zzgtx zza2 = zzgua.zza();
        zza2.zzb(zzgowVar.zzg());
        zza2.zzc(zzgowVar.zze());
        zza2.zza(zzgowVar.zzb());
        return (zzgua) zza2.zzbr();
    }

    @Override // com.google.android.gms.internal.ads.zzgfx
    public final Class zzb() {
        return this.f8487b;
    }

    @Override // com.google.android.gms.internal.ads.zzgfx
    public final Object zzc(zzgxp zzgxpVar) throws GeneralSecurityException {
        return zzgnw.zza().zzc(zzgnz.zzc().zza(zzgow.zza(this.f8486a, zzgxpVar, this.f8488c, zzgve.RAW, null), zzgfv.zza()), this.f8487b);
    }
}
