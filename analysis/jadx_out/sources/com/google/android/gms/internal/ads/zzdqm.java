package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbbs;
import g.akx;

/* loaded from: classes3.dex */
public final class zzdqm implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6387a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6388b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6389c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6390d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f6391e;

    public zzdqm(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5) {
        this.f6389c = zzhgpVar;
        this.f6390d = zzhgpVar2;
        this.f6391e = zzhgpVar3;
        this.f6387a = zzhgpVar4;
        this.f6388b = zzhgpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzchq) this.f6389c).zza();
        final String zzb = ((zzdxj) this.f6390d).zzb();
        akx zza2 = ((zzcid) this.f6391e).zza();
        final zzbbs.zza.EnumC0207zza enumC0207zza = (zzbbs.zza.EnumC0207zza) this.f6387a.zzb();
        final String str = (String) this.f6388b.zzb();
        zzbbl zzbblVar = new zzbbl(new zzbbr(zza));
        zzbbs.zzar.zza zzd = zzbbs.zzar.zzd();
        zzd.zzg(zza2.buddyApkVersion);
        zzd.zzi(zza2.clientJarVersion);
        zzd.zzh(true != zza2.isClientJar ? 2 : 0);
        final zzbbs.zzar zzbr = zzd.zzbr();
        zzbblVar.zzb(new zzbbk() { // from class: com.google.android.gms.internal.ads.zzdql
            @Override // com.google.android.gms.internal.ads.zzbbk
            public final void zza(zzbbs.zzt.zza zzaVar) {
                zzbbs.zza.zzb zzbM = zzaVar.zze().zzbM();
                zzbM.zzH(zzbbs.zza.EnumC0207zza.this);
                zzaVar.zzG(zzbM);
                zzbbs.zzm.zza zzbM2 = zzaVar.zzg().zzbM();
                zzbM2.zzm(zzb);
                zzbM2.zzw(zzbr);
                zzaVar.zzK(zzbM2);
                zzaVar.zzO(str);
            }
        });
        return zzbblVar;
    }
}
