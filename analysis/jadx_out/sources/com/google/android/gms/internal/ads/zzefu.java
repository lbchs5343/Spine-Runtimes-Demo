package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.agd;
import g.bme;
import g.bpp;
import g.dvg;
import g.gkr;

/* loaded from: classes3.dex */
public final class zzefu implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6905a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcor f6906b;

    public zzefu(Context context, zzcor zzcorVar) {
        this.f6905a = context;
        this.f6906b = zzcorVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final Object zza(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv, zzeiz {
        gkr gkrVar = new gkr(zzfetVar, (zzbrf) zzefeVar.zzb, bme.APP_OPEN_AD);
        zzcoo zza = this.f6906b.zza(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdfn(gkrVar, null), new zzcop(zzfetVar.zzaa));
        gkrVar.f18323c = zza.zzc();
        ((zzegx) zzefeVar.zzc).zzc(zza.zzj());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        try {
            ((zzbrf) zzefeVar.zzb).zzq(zzfetVar.zzZ);
            ((zzbrf) zzefeVar.zzb).zzi(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(this.f6905a), new dvg(zzefeVar), (zzbpm) zzefeVar.zzc);
        } catch (RemoteException e2) {
            agd.h();
            throw new zzffv(e2);
        }
    }
}
