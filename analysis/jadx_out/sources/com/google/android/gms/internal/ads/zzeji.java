package com.google.android.gms.internal.ads;

import android.content.Context;
import g.agd;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzeji implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7116a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f7117b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdow f7118c;

    public zzeji(Context context, Executor executor, zzdow zzdowVar) {
        this.f7116a = context;
        this.f7117b = executor;
        this.f7118c = zzdowVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final /* bridge */ /* synthetic */ Object zza(zzfff zzfffVar, zzfet zzfetVar, final zzefe zzefeVar) throws zzffv, zzeiz {
        zzdos zze = this.f7118c.zze(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdot(new zzdgv() { // from class: com.google.android.gms.internal.ads.zzejh
            @Override // com.google.android.gms.internal.ads.zzdgv
            public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
                zzefe zzefeVar2 = zzefe.this;
                try {
                    ((zzfgm) zzefeVar2.zzb).zzv(z);
                    ((zzfgm) zzefeVar2.zzb).zzz(context);
                } catch (zzffv e2) {
                    throw new zzdgu(e2.getCause());
                }
            }
        }));
        zze.zzd().zzo(new zzcmr((zzfgm) zzefeVar.zzb), this.f7117b);
        ((zzegx) zzefeVar.zzc).zzc(zze.zzn());
        return zze.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        try {
            zzffo zzffoVar = zzfffVar.zza.zza;
            int i = zzffoVar.zzo.zza;
            Context context = this.f7116a;
            if (i == 3) {
                ((zzfgm) zzefeVar.zzb).zzr(context, zzffoVar.zzd, zzfetVar.zzv.toString(), (zzbpm) zzefeVar.zzc);
            } else {
                ((zzfgm) zzefeVar.zzb).zzq(context, zzffoVar.zzd, zzfetVar.zzv.toString(), (zzbpm) zzefeVar.zzc);
            }
        } catch (Exception unused) {
            "Fail to load ad from adapter ".concat(String.valueOf(zzefeVar.zza));
            zzfxd zzfxdVar = agd.f10175a;
        }
    }
}
