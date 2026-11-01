package com.google.android.gms.internal.ads;

import g.edt;

/* loaded from: classes3.dex */
public final class zzdhp implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5992a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5993b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5994c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f5995d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f5996e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhgp f5997f;

    public zzdhp(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6) {
        this.f5994c = zzhgpVar;
        this.f5996e = zzhgpVar2;
        this.f5997f = zzhgpVar3;
        this.f5992a = zzhgpVar4;
        this.f5993b = zzhgpVar5;
        this.f5995d = zzhgpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzchk zzchkVar = (zzchk) this.f5994c.zzb();
        zzcvu zza = ((zzcwe) this.f5996e).zza();
        zzdcf zza2 = ((zzdcz) this.f5997f).zza();
        zzdhe zza3 = ((zzdhg) this.f5992a).zza();
        zzcze zzb = ((zzcpc) this.f5993b).zzb();
        zzeiv zzeivVar = (zzeiv) this.f5995d.zzb();
        zzcqg zze = zzchkVar.zze();
        zze.zzi(zza.zzj());
        zze.zzf(zza2);
        zze.zzd(zza3);
        zze.zze(new zzelb(null));
        zze.zzg(new zzcri(zzb, null));
        zze.zzc(new zzcpa(null));
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdJ)).booleanValue()) {
            zze.zzj(zzeje.zzb(zzeivVar));
        }
        zzcrt zzc = zze.zzh().zzc();
        zzhgf.zzb(zzc);
        return zzc;
    }
}
