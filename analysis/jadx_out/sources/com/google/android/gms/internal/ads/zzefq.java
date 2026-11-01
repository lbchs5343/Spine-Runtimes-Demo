package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzefq implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6900a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcor f6901b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6902c;

    public zzefq(Context context, zzcor zzcorVar, zzges zzgesVar) {
        this.f6900a = context;
        this.f6901b = zzcorVar;
        this.f6902c = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final /* bridge */ /* synthetic */ Object zza(zzfff zzfffVar, zzfet zzfetVar, final zzefe zzefeVar) throws zzffv, zzeiz {
        zzcoo zza = this.f6901b.zza(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdfn(new zzdgv() { // from class: com.google.android.gms.internal.ads.zzefp
            @Override // com.google.android.gms.internal.ads.zzdgv
            public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
                zzefe zzefeVar2 = zzefe.this;
                try {
                    ((zzfgm) zzefeVar2.zzb).zzv(z);
                    ((zzfgm) zzefeVar2.zzb).zzw(context);
                } catch (zzffv e2) {
                    throw new zzdgu(e2.getCause());
                }
            }
        }, null), new zzcop(zzfetVar.zzaa));
        zza.zzd().zzo(new zzcmr((zzfgm) zzefeVar.zzb), this.f6902c);
        ((zzegx) zzefeVar.zzc).zzc(zza.zzk());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        zzfgm zzfgmVar = (zzfgm) zzefeVar.zzb;
        zzffo zzffoVar = zzfffVar.zza.zza;
        String jSONObject = zzfetVar.zzv.toString();
        zzbpm zzbpmVar = (zzbpm) zzefeVar.zzc;
        zzfgmVar.zzl(this.f6900a, zzffoVar.zzd, jSONObject, zzbpmVar);
    }
}
