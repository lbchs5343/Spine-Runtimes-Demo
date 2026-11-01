package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;
import g.edt;

/* loaded from: classes3.dex */
public final class zzeil extends zzeik {

    /* renamed from: a, reason: collision with root package name */
    public final zzeiv f7032a;

    /* renamed from: b, reason: collision with root package name */
    public final zzefg f7033b;

    /* renamed from: c, reason: collision with root package name */
    public final zzchk f7034c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcvu f7035d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdcf f7036e;

    public zzeil(zzchk zzchkVar, zzcvu zzcvuVar, zzdcf zzdcfVar, zzeiv zzeivVar, zzefg zzefgVar) {
        this.f7034c = zzchkVar;
        this.f7035d = zzcvuVar;
        this.f7036e = zzdcfVar;
        this.f7032a = zzeivVar;
        this.f7033b = zzefgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeik
    public final dcy g(zzffo zzffoVar, Bundle bundle, zzfet zzfetVar, zzfff zzfffVar) {
        zzcvu zzcvuVar = this.f7035d;
        zzcvuVar.zzi(zzffoVar);
        zzcvuVar.zzf(bundle);
        zzcvuVar.zzg(new zzcvo(zzfffVar, zzfetVar, this.f7032a));
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdG)).booleanValue()) {
            zzcvuVar.zzd(this.f7033b);
        }
        zzcoq zzd = this.f7034c.zzd();
        zzd.zzd(zzcvuVar.zzj());
        zzd.zzc(this.f7036e);
        zzcsy zzb = zzd.zze().zzb();
        return zzb.zzi(zzb.zzj());
    }
}
