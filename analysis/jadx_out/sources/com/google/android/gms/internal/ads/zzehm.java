package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.agd;
import g.bme;
import g.bpp;
import g.dbq;
import g.gkr;

/* loaded from: classes3.dex */
public final class zzehm implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6980a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdgn f6981b;

    public zzehm(Context context, zzdgn zzdgnVar) {
        this.f6980a = context;
        this.f6981b = zzdgnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final Object zza(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv, zzeiz {
        gkr gkrVar = new gkr(zzfetVar, (zzbrf) zzefeVar.zzb, bme.INTERSTITIAL);
        zzdfk zze = this.f6981b.zze(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdfn(gkrVar, null));
        gkrVar.f18323c = zze.zzc();
        ((zzegx) zzefeVar.zzc).zzc(zze.zzj());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        try {
            ((zzbrf) zzefeVar.zzb).zzq(zzfetVar.zzZ);
            ((zzbrf) zzefeVar.zzb).zzl(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(this.f6980a), new dbq(zzefeVar), (zzbpm) zzefeVar.zzc);
        } catch (RemoteException e2) {
            agd.h();
            throw new zzffv(e2);
        }
    }
}
