package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.bkm;
import g.ti;

/* loaded from: classes3.dex */
public final class zzcps implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5496a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5497b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcpk f5498c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f5499d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f5500e;

    public zzcps(zzcpk zzcpkVar, zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f5498c = zzcpkVar;
        this.f5499d = zzhgpVar;
        this.f5500e = zzhgpVar2;
        this.f5496a = zzhgpVar3;
        this.f5497b = zzhgpVar4;
    }

    public static zzded zza(zzcpk zzcpkVar, final Context context, final akx akxVar, final zzfet zzfetVar, final zzffo zzffoVar) {
        return new zzded(new zzcya() { // from class: com.google.android.gms.internal.ads.zzcpi
            @Override // com.google.android.gms.internal.ads.zzcya
            public final void zzs() {
                bkm bkmVar = ti.f20033a.f20040g;
                Context context2 = context;
                zzffo zzffoVar2 = zzffoVar;
                bkmVar.o(context2, akxVar.afmaVersion, zzfetVar.zzC.toString(), zzffoVar2.zzf);
            }
        }, zzcaj.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza(this.f5498c, (Context) this.f5499d.zzb(), ((zzcid) this.f5500e).zza(), ((zzcsh) this.f5496a).zza(), ((zzcwd) this.f5497b).zza());
    }
}
