package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import g.dcy;
import g.edt;

/* loaded from: classes3.dex */
public final class zzein extends zzeik {

    /* renamed from: a, reason: collision with root package name */
    public final zzdbk f7042a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdcf f7043b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdhe f7044c;

    /* renamed from: d, reason: collision with root package name */
    public final zzchk f7045d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcze f7046e;

    /* renamed from: f, reason: collision with root package name */
    public final zzeiv f7047f;
    public final zzcvu h;
    public final zzefg i;
    public final zzelb j;
    public final ViewGroup k;

    public zzein(zzchk zzchkVar, zzcvu zzcvuVar, zzelb zzelbVar, zzdcf zzdcfVar, zzdhe zzdheVar, zzcze zzczeVar, ViewGroup viewGroup, zzdbk zzdbkVar, zzeiv zzeivVar, zzefg zzefgVar) {
        this.f7045d = zzchkVar;
        this.h = zzcvuVar;
        this.j = zzelbVar;
        this.f7043b = zzdcfVar;
        this.f7044c = zzdheVar;
        this.f7046e = zzczeVar;
        this.k = viewGroup;
        this.f7042a = zzdbkVar;
        this.f7047f = zzeivVar;
        this.i = zzefgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeik
    public final dcy g(zzffo zzffoVar, Bundle bundle, zzfet zzfetVar, zzfff zzfffVar) {
        zzcvu zzcvuVar = this.h;
        zzcvuVar.zzi(zzffoVar);
        zzcvuVar.zzf(bundle);
        zzcvuVar.zzg(new zzcvo(zzfffVar, zzfetVar, this.f7047f));
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdG)).booleanValue()) {
            zzcvuVar.zzd(this.i);
        }
        zzcqg zze = this.f7045d.zze();
        zze.zzi(zzcvuVar.zzj());
        zze.zzf(this.f7043b);
        zze.zze(this.j);
        zze.zzd(this.f7044c);
        zze.zzg(new zzcri(this.f7046e, this.f7042a));
        zze.zzc(new zzcpa(this.k));
        zzcsy zzd = zze.zzk().zzd();
        return zzd.zzi(zzd.zzj());
    }
}
