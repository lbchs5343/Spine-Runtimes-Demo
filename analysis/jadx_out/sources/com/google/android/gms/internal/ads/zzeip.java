package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;
import g.edt;

/* loaded from: classes3.dex */
public final class zzeip extends zzeik {

    /* renamed from: a, reason: collision with root package name */
    public final zzdcf f7055a;

    /* renamed from: b, reason: collision with root package name */
    public final zzeiv f7056b;

    /* renamed from: c, reason: collision with root package name */
    public final zzchk f7057c;

    /* renamed from: d, reason: collision with root package name */
    public final zzefg f7058d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcvu f7059e;

    /* renamed from: f, reason: collision with root package name */
    public final zzelb f7060f;

    public zzeip(zzchk zzchkVar, zzcvu zzcvuVar, zzelb zzelbVar, zzdcf zzdcfVar, zzeiv zzeivVar, zzefg zzefgVar) {
        this.f7057c = zzchkVar;
        this.f7059e = zzcvuVar;
        this.f7060f = zzelbVar;
        this.f7055a = zzdcfVar;
        this.f7056b = zzeivVar;
        this.f7058d = zzefgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeik
    public final dcy g(zzffo zzffoVar, Bundle bundle, zzfet zzfetVar, zzfff zzfffVar) {
        zzcvu zzcvuVar = this.f7059e;
        zzcvuVar.zzi(zzffoVar);
        zzcvuVar.zzf(bundle);
        zzcvuVar.zzg(new zzcvo(zzfffVar, zzfetVar, this.f7056b));
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdG)).booleanValue()) {
            zzcvuVar.zzd(this.f7058d);
        }
        zzdgm zzg = this.f7057c.zzg();
        zzg.zze(zzcvuVar.zzj());
        zzg.zzd(this.f7055a);
        zzg.zzc(this.f7060f);
        zzcsy zza = zzg.zzh().zza();
        return zza.zzi(zza.zzj());
    }
}
