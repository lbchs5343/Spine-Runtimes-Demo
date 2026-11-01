package com.google.android.gms.internal.ads;

import g.abz;
import g.aeh;
import g.dcy;
import g.edt;
import g.eie;
import g.evf;
import g.ti;
import j$.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcsy {

    /* renamed from: a, reason: collision with root package name */
    public final zzdzj f5613a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdyt f5614b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeag f5615c;

    /* renamed from: d, reason: collision with root package name */
    public final zzclp f5616d;

    /* renamed from: e, reason: collision with root package name */
    public final zzefg f5617e;

    /* renamed from: f, reason: collision with root package name */
    public final zzejc f5618f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdya f5619g;
    public final zzdbt h;
    public final zzdzz i;
    public final zzcvq j;
    public final zzffo k;
    public final Executor l;
    public final zzfjr m;
    public zzfff n;

    public zzcsy(zzdya zzdyaVar, zzffo zzffoVar, zzfjr zzfjrVar, zzclp zzclpVar, zzejc zzejcVar, zzdbt zzdbtVar, zzfff zzfffVar, zzdzj zzdzjVar, zzcvq zzcvqVar, zzges zzgesVar, zzdyt zzdytVar, zzefg zzefgVar, zzdzz zzdzzVar, zzeag zzeagVar) {
        this.f5619g = zzdyaVar;
        this.k = zzffoVar;
        this.m = zzfjrVar;
        this.f5616d = zzclpVar;
        this.f5618f = zzejcVar;
        this.h = zzdbtVar;
        this.n = zzfffVar;
        this.f5613a = zzdzjVar;
        this.j = zzcvqVar;
        this.l = zzgesVar;
        this.f5614b = zzdytVar;
        this.f5617e = zzefgVar;
        this.i = zzdzzVar;
        this.f5615c = zzeagVar;
    }

    public final abz zza(Throwable th) {
        return zzfgq.zzb(th, this.f5617e);
    }

    public final zzdbt zzc() {
        return this.h;
    }

    public final dcy zze(final zzfhj zzfhjVar) {
        zzfix zza = this.m.zzb(zzfjl.GET_CACHE_KEY, this.j.zzc()).zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcsu
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzcsy zzcsyVar = zzcsy.this;
                zzfhj zzfhjVar2 = zzfhjVar;
                zzbvx zzbvxVar = (zzbvx) obj;
                zzcsyVar.getClass();
                zzbvxVar.zzi = zzfhjVar2;
                return zzcsyVar.f5613a.zza(zzbvxVar);
            }
        }).zza();
        zzgei.zzr(zza, new evf(27, this), this.l);
        return zza;
    }

    public final dcy zzh(zzbvx zzbvxVar) {
        zzfix zza = this.m.zzb(zzfjl.NOTIFY_CACHE_HIT, this.f5613a.zzg(zzbvxVar)).zza();
        zzgei.zzr(zza, new eie(28, this), this.l);
        return zza;
    }

    public final dcy zzi(dcy dcyVar) {
        zzfjh zzf = this.m.zzb(zzfjl.RENDERER, dcyVar).zze(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzcsp
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                zzfff zzfffVar = (zzfff) obj;
                zzcsy.this.f5616d.zza(zzfffVar);
                return zzfffVar;
            }
        }).zzf(this.f5618f);
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfw)).booleanValue()) {
            zzf = zzf.zzi(((Integer) r1.f15379d.zza(zzbcn.zzfx)).intValue(), TimeUnit.SECONDS);
        }
        return zzf.zza();
    }

    public final dcy zzj() {
        aeh aehVar = this.k.zzd;
        if (aehVar.zzx == null && aehVar.zzs == null) {
            return zzk(this.j.zzc());
        }
        return zzfjb.zzc(this.f5619g.zza(), zzfjl.PRELOADED_LOADER, this.m).zza();
    }

    public final dcy zzk(final dcy dcyVar) {
        zzfff zzfffVar = this.n;
        zzfjr zzfjrVar = this.m;
        if (zzfffVar != null) {
            return zzfjb.zzc(zzgei.zzh(zzfffVar), zzfjl.SERVER_TRANSACTION, zzfjrVar).zza();
        }
        ti.f20033a.t.zzj();
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzli)).booleanValue() || ((Boolean) zzbet.zzc.zze()).booleanValue()) {
            zzfjh zzb = zzfjrVar.zzb(zzfjl.SERVER_TRANSACTION, dcyVar);
            final zzdyt zzdytVar = this.f5614b;
            Objects.requireNonNull(zzdytVar);
            return zzb.zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcsv
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    return zzdyt.this.zzb((zzbvx) obj);
                }
            }).zza();
        }
        final zzdzz zzdzzVar = this.i;
        Objects.requireNonNull(zzdzzVar);
        final dcy zzn = zzgei.zzn(dcyVar, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcsq
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzdzz.this.zza((zzbvx) obj);
            }
        }, this.l);
        zzfjh zzb2 = zzfjrVar.zzb(zzfjl.BUILD_URL, zzn);
        final zzdzj zzdzjVar = this.f5613a;
        Objects.requireNonNull(zzdzjVar);
        final zzfix zza = zzb2.zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcsr
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzdzj.this.zzb((JSONObject) obj);
            }
        }).zza();
        return zzfjrVar.zza(zzfjl.SERVER_TRANSACTION, dcyVar, zzn, zza).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzcss
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcsy zzcsyVar = zzcsy.this;
                dcy dcyVar2 = dcyVar;
                dcy dcyVar3 = zzn;
                dcy dcyVar4 = zza;
                zzcsyVar.getClass();
                return zzcsyVar.f5615c.zzc((zzbvx) dcyVar2.get(), (JSONObject) dcyVar3.get(), (zzbvz) dcyVar4.get());
            }
        }).zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcst
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return (dcy) obj;
            }
        }).zza();
    }

    public final void zzl(zzfff zzfffVar) {
        this.n = zzfffVar;
    }
}
