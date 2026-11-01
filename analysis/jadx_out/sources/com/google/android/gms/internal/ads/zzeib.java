package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.akx;
import g.bpp;
import g.edt;
import g.gjo;

/* loaded from: classes3.dex */
public final class zzeib implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final akx f7002a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7003b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdhj f7004c;

    /* renamed from: d, reason: collision with root package name */
    public zzbpv f7005d;

    public zzeib(Context context, zzdhj zzdhjVar, akx akxVar) {
        this.f7003b = context;
        this.f7004c = zzdhjVar;
        this.f7002a = akxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final /* bridge */ /* synthetic */ Object zza(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv, zzeiz {
        if (!zzfffVar.zza.zza.zzg.contains(Integer.toString(6))) {
            throw new zzeiz(2, "Unified must be used for RTB.");
        }
        zzdiy zzt = zzdiy.zzt(this.f7005d);
        zzffo zzffoVar = zzfffVar.zza.zza;
        if (!zzffoVar.zzg.contains(Integer.toString(zzt.zzc()))) {
            throw new zzeiz(1, "No corresponding native ad listener");
        }
        zzdja zze = this.f7004c.zze(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdjk(zzt), new zzdlb(null, null, this.f7005d));
        ((zzegx) zzefeVar.zzc).zzc(zze.zzj());
        return zze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        try {
            ((zzbrf) zzefeVar.zzb).zzq(zzfetVar.zzZ);
            int i = this.f7002a.clientJarVersion;
            int intValue = ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzbN)).intValue();
            Context context = this.f7003b;
            if (i < intValue) {
                ((zzbrf) zzefeVar.zzb).zzm(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(context), new gjo(this, zzefeVar), (zzbpm) zzefeVar.zzc);
            } else {
                ((zzbrf) zzefeVar.zzb).zzn(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(context), new gjo(this, zzefeVar), (zzbpm) zzefeVar.zzc, zzfffVar.zza.zza.zzi);
            }
        } catch (RemoteException e2) {
            throw new zzffv(e2);
        }
    }
}
