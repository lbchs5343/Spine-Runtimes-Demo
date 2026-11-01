package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.agd;
import g.bme;
import g.bpp;
import g.btz;
import g.gkr;

/* loaded from: classes3.dex */
public final class zzejm implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7122a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdow f7123b;

    public zzejm(Context context, zzdow zzdowVar) {
        this.f7122a = context;
        this.f7123b = zzdowVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final Object zza(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv, zzeiz {
        gkr gkrVar = new gkr(zzfetVar, (zzbrf) zzefeVar.zzb, bme.REWARDED);
        zzdos zze = this.f7123b.zze(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdot(gkrVar));
        gkrVar.f18323c = zze.zzc();
        ((zzegx) zzefeVar.zzc).zzc(zze.zzo());
        return zze.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        try {
            ((zzbrf) zzefeVar.zzb).zzq(zzfetVar.zzZ);
            int i = zzfffVar.zza.zza.zzo.zza;
            Context context = this.f7122a;
            if (i == 3) {
                ((zzbrf) zzefeVar.zzb).zzo(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(context), new btz(zzefeVar), (zzbpm) zzefeVar.zzc);
            } else {
                ((zzbrf) zzefeVar.zzb).zzp(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(context), new btz(zzefeVar), (zzbpm) zzefeVar.zzc);
            }
        } catch (RemoteException unused) {
            agd.h();
        }
    }
}
