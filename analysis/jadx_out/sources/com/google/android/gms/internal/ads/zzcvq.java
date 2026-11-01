package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import g.akx;
import g.cmo;
import g.dcy;
import g.edt;
import g.gil;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzcvq {

    /* renamed from: a, reason: collision with root package name */
    public final String f5752a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f5753b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5754c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdbx f5755d;

    /* renamed from: e, reason: collision with root package name */
    public final List f5756e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfjr f5757f;

    /* renamed from: g, reason: collision with root package name */
    public final PackageInfo f5758g;
    public final zzewc h;
    public final akx i;
    public final gil j;
    public final ApplicationInfo k;
    public final zzhfr l;

    public zzcvq(zzfjr zzfjrVar, akx akxVar, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, zzhfr zzhfrVar, gil gilVar, String str2, zzewc zzewcVar, zzffo zzffoVar, zzdbx zzdbxVar) {
        this.f5757f = zzfjrVar;
        this.i = akxVar;
        this.k = applicationInfo;
        this.f5754c = str;
        this.f5756e = list;
        this.f5758g = packageInfo;
        this.l = zzhfrVar;
        this.f5752a = str2;
        this.h = zzewcVar;
        this.j = gilVar;
        this.f5753b = zzffoVar;
        this.f5755d = zzdbxVar;
    }

    public final dcy zzb(Bundle bundle) {
        this.f5755d.zza();
        return zzfjb.zzc(this.h.zza(new Bundle(), bundle), zzfjl.SIGNALS, this.f5757f).zza();
    }

    public final dcy zzc() {
        final Bundle bundle = new Bundle();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue()) {
            Bundle bundle2 = this.f5753b.zzs;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            bundle.putBoolean("ls", false);
        }
        final dcy zzb = zzb(bundle);
        return this.f5757f.zza(zzfjl.REQUEST_PARCEL, zzb, (dcy) this.l.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzcvp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcvq zzcvqVar = zzcvq.this;
                dcy dcyVar = zzb;
                Bundle bundle3 = bundle;
                zzcvqVar.getClass();
                Bundle bundle4 = (Bundle) dcyVar.get();
                String str = (String) ((dcy) zzcvqVar.l.zzb()).get();
                boolean z = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgS)).booleanValue() && ((cmo) zzcvqVar.j).ax();
                String str2 = zzcvqVar.f5752a;
                PackageInfo packageInfo = zzcvqVar.f5758g;
                List list = zzcvqVar.f5756e;
                return new zzbvx(bundle4, zzcvqVar.i, zzcvqVar.k, zzcvqVar.f5754c, list, packageInfo, str, str2, null, null, z, zzcvqVar.f5753b.zzb(), bundle3);
            }
        }).zza();
    }
}
