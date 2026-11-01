package com.google.android.gms.internal.ads;

import android.content.Context;
import g.fso;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzehx implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6996a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdhj f6997b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6998c;

    public zzehx(Context context, zzdhj zzdhjVar, Executor executor) {
        this.f6996a = context;
        this.f6997b = zzdhjVar;
        this.f6998c = executor;
    }

    public static final boolean d(zzfff zzfffVar, int i) {
        return zzfffVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final /* bridge */ /* synthetic */ Object zza(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv, zzeiz {
        zzdiy zzah;
        zzbpr zzD = ((zzfgm) zzefeVar.zzb).zzD();
        zzbps zzE = ((zzfgm) zzefeVar.zzb).zzE();
        zzbpv zzd = ((zzfgm) zzefeVar.zzb).zzd();
        if (zzd != null && d(zzfffVar, 6)) {
            zzah = zzdiy.zzt(zzd);
        } else if (zzD != null && d(zzfffVar, 6)) {
            zzah = zzdiy.zzai(zzD);
        } else if (zzD != null && d(zzfffVar, 2)) {
            zzah = zzdiy.zzag(zzD);
        } else if (zzE != null && d(zzfffVar, 6)) {
            zzah = zzdiy.zzaj(zzE);
        } else {
            if (zzE == null || !d(zzfffVar, 1)) {
                throw new zzeiz(1, "No native ad mappers");
            }
            zzah = zzdiy.zzah(zzE);
        }
        zzffo zzffoVar = zzfffVar.zza.zza;
        if (!zzffoVar.zzg.contains(Integer.toString(zzah.zzc()))) {
            throw new zzeiz(1, "No corresponding native ad listener");
        }
        zzdja zze = this.f6997b.zze(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdjk(zzah), new zzdlb(zzE, zzD, zzd));
        ((zzegx) zzefeVar.zzc).zzc(zze.zzk());
        zze.zzd().zzo(new zzcmr((zzfgm) zzefeVar.zzb), this.f6998c);
        return zze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        zzfgm zzfgmVar = (zzfgm) zzefeVar.zzb;
        zzffo zzffoVar = zzfffVar.zza.zza;
        String jSONObject = zzfetVar.zzv.toString();
        String aj = fso.aj(zzfetVar.zzs);
        zzbpm zzbpmVar = (zzbpm) zzefeVar.zzc;
        zzffo zzffoVar2 = zzfffVar.zza.zza;
        zzbfn zzbfnVar = zzffoVar2.zzi;
        ArrayList arrayList = zzffoVar2.zzg;
        zzfgmVar.zzp(this.f6996a, zzffoVar.zzd, jSONObject, aj, zzbpmVar, zzbfnVar, arrayList);
    }
}
