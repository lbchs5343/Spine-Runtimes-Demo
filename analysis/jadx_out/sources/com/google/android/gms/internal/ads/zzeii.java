package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;
import g.edt;

/* loaded from: classes3.dex */
public final class zzeii extends zzeik {

    /* renamed from: a, reason: collision with root package name */
    public final zzdcf f7020a;

    /* renamed from: b, reason: collision with root package name */
    public final zzeiv f7021b;

    /* renamed from: c, reason: collision with root package name */
    public final zzchk f7022c;

    /* renamed from: d, reason: collision with root package name */
    public final zzefg f7023d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdhe f7024e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcvu f7025f;

    public zzeii(zzchk zzchkVar, zzdhe zzdheVar, zzcvu zzcvuVar, zzdcf zzdcfVar, zzeiv zzeivVar, zzefg zzefgVar) {
        this.f7022c = zzchkVar;
        this.f7024e = zzdheVar;
        this.f7025f = zzcvuVar;
        this.f7020a = zzdcfVar;
        this.f7021b = zzeivVar;
        this.f7023d = zzefgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeik
    public final dcy g(zzffo zzffoVar, Bundle bundle, zzfet zzfetVar, zzfff zzfffVar) {
        zzcvu zzcvuVar = this.f7025f;
        zzcvuVar.zzi(zzffoVar);
        zzcvuVar.zzf(bundle);
        zzcvuVar.zzg(new zzcvo(zzfffVar, zzfetVar, this.f7021b));
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdG)).booleanValue()) {
            zzcvuVar.zzd(this.f7023d);
        }
        zzdhi zzh = this.f7022c.zzh();
        zzh.zzf(zzcvuVar.zzj());
        zzh.zze(this.f7020a);
        zzh.zzd(this.f7024e);
        zzh.zzc(new zzcpa(null));
        zzcsy zza = zzh.zzh().zza();
        return zza.zzi(zza.zzj());
    }
}
