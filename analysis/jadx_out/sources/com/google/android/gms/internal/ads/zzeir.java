package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;
import g.edt;

/* loaded from: classes3.dex */
public final class zzeir extends zzeik {

    /* renamed from: a, reason: collision with root package name */
    public final zzeiv f7067a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffg f7068b;

    /* renamed from: c, reason: collision with root package name */
    public final zzchk f7069c;

    /* renamed from: d, reason: collision with root package name */
    public final zzefg f7070d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcvu f7071e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdcf f7072f;

    public zzeir(zzchk zzchkVar, zzcvu zzcvuVar, zzdcf zzdcfVar, zzffg zzffgVar, zzeiv zzeivVar, zzefg zzefgVar) {
        this.f7069c = zzchkVar;
        this.f7071e = zzcvuVar;
        this.f7072f = zzdcfVar;
        this.f7068b = zzffgVar;
        this.f7067a = zzeivVar;
        this.f7070d = zzefgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeik
    public final dcy g(zzffo zzffoVar, Bundle bundle, zzfet zzfetVar, zzfff zzfffVar) {
        zzffg zzffgVar;
        zzcvu zzcvuVar = this.f7071e;
        zzcvuVar.zzi(zzffoVar);
        zzcvuVar.zzf(bundle);
        zzcvuVar.zzg(new zzcvo(zzfffVar, zzfetVar, this.f7067a));
        zzbce zzbceVar = zzbcn.zzdF;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && (zzffgVar = this.f7068b) != null) {
            zzcvuVar.zzh(zzffgVar);
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzdG)).booleanValue()) {
            zzcvuVar.zzd(this.f7070d);
        }
        zzdov zzi = this.f7069c.zzi();
        zzi.mo5zzd(zzcvuVar.zzj());
        zzi.mo4zzc(this.f7072f);
        zzcsy zzb = zzi.mo6zze().zzb();
        return zzb.zzi(zzb.zzj());
    }
}
