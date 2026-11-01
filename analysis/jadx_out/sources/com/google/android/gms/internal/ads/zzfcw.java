package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import g.aeh;
import g.agd;
import g.dcy;
import g.edt;
import g.eno;
import g.fhp;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfcw implements zzeni {

    /* renamed from: a, reason: collision with root package name */
    public final zzffm f7794a;

    /* renamed from: b, reason: collision with root package name */
    public final zzems f7795b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfdw f7796c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7797d;

    /* renamed from: e, reason: collision with root package name */
    public zzbdi f7798e;

    /* renamed from: f, reason: collision with root package name */
    public dcy f7799f;

    /* renamed from: g, reason: collision with root package name */
    public final Executor f7800g;
    public final zzchk h;
    public final zzfko i;

    public zzfcw(Context context, Executor executor, zzchk zzchkVar, zzems zzemsVar, zzfdw zzfdwVar, zzffm zzffmVar) {
        this.f7797d = context;
        this.f7800g = executor;
        this.h = zzchkVar;
        this.f7795b = zzemsVar;
        this.f7794a = zzffmVar;
        this.f7796c = zzfdwVar;
        this.i = zzchkVar.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zza() {
        dcy dcyVar = this.f7799f;
        return (dcyVar == null || dcyVar.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zzb(aeh aehVar, String str, zzeng zzengVar, zzenh zzenhVar) {
        zzdgn zzh;
        zzfkl zzfklVar;
        Executor executor = this.f7800g;
        if (str == null) {
            agd.d("Ad unit ID should not be null for interstitial ad.");
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcq
                @Override // java.lang.Runnable
                public final void run() {
                    zzfcw.this.f7795b.zzdB(zzfgq.zzd(6, null, null));
                }
            });
            return false;
        }
        if (zza()) {
            return false;
        }
        zzbce zzbceVar = zzbcn.zziz;
        edt edtVar = edt.f15376a;
        boolean booleanValue = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
        zzchk zzchkVar = this.h;
        if (booleanValue && aehVar.zzf) {
            zzchkVar.zzl().zzo(true);
        }
        eno enoVar = ((zzfcp) zzengVar).zza;
        Pair pair = new Pair(zzdrv.PUBLIC_API_CALL.zza(), Long.valueOf(aehVar.zzz));
        String zza = zzdrv.DYNAMITE_ENTER.zza();
        ti.f20033a.v.getClass();
        Bundle zza2 = zzdrx.zza(pair, new Pair(zza, Long.valueOf(System.currentTimeMillis())));
        zzffm zzffmVar = this.f7794a;
        zzffmVar.zzt(str);
        zzffmVar.zzs(enoVar);
        zzffmVar.zzH(aehVar);
        zzffmVar.zzA(zza2);
        zzffo zzJ = zzffmVar.zzJ();
        int zzf = zzfkk.zzf(zzJ);
        Context context = this.f7797d;
        zzfka zzb = zzfjz.zzb(context, zzf, 4, aehVar);
        boolean booleanValue2 = ((Boolean) edtVar.f15379d.zza(zzbcn.zzhQ)).booleanValue();
        zzems zzemsVar = this.f7795b;
        if (booleanValue2) {
            zzdgm zzg = zzchkVar.zzg();
            zzcvu zzcvuVar = new zzcvu();
            zzcvuVar.zze(context);
            zzcvuVar.zzi(zzJ);
            zzg.zze(zzcvuVar.zzj());
            zzdcd zzdcdVar = new zzdcd();
            zzdcdVar.zzj(zzemsVar, executor);
            zzdcdVar.zzk(zzemsVar, executor);
            zzg.zzd(zzdcdVar.zzn());
            zzg.zzc(new zzelb(this.f7798e));
            zzh = zzg.zzh();
        } else {
            zzdcd zzdcdVar2 = new zzdcd();
            zzfdw zzfdwVar = this.f7796c;
            if (zzfdwVar != null) {
                zzdcdVar2.zze(zzfdwVar, executor);
                zzdcdVar2.zzf(zzfdwVar, executor);
                zzdcdVar2.zzb(zzfdwVar, executor);
            }
            zzdgm zzg2 = zzchkVar.zzg();
            zzcvu zzcvuVar2 = new zzcvu();
            zzcvuVar2.zze(context);
            zzcvuVar2.zzi(zzJ);
            zzg2.zze(zzcvuVar2.zzj());
            zzdcdVar2.zzj(zzemsVar, executor);
            zzdcdVar2.zze(zzemsVar, executor);
            zzdcdVar2.zzf(zzemsVar, executor);
            zzdcdVar2.zzb(zzemsVar, executor);
            zzdcdVar2.zza(zzemsVar, executor);
            zzdcdVar2.zzl(zzemsVar, executor);
            zzdcdVar2.zzk(zzemsVar, executor);
            zzdcdVar2.zzi(zzemsVar, executor);
            zzdcdVar2.zzc(zzemsVar, executor);
            zzg2.zzd(zzdcdVar2.zzn());
            zzg2.zzc(new zzelb(this.f7798e));
            zzh = zzg2.zzh();
        }
        zzdgn zzdgnVar = zzh;
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            zzfklVar = zzdgnVar.zzf();
            zzfklVar.zzi(4);
            zzfklVar.zzb(aehVar.zzp);
            zzfklVar.zzf(aehVar.zzm);
        } else {
            zzfklVar = null;
        }
        zzfkl zzfklVar2 = zzfklVar;
        zzcsy zza3 = zzdgnVar.zza();
        dcy zzi = zza3.zzi(zza3.zzj());
        this.f7799f = zzi;
        zzgei.zzr(zzi, new fhp(this, zzenhVar, zzfklVar2, zzb, zzdgnVar), executor);
        return true;
    }

    public final void zzi(zzbdi zzbdiVar) {
        this.f7798e = zzbdiVar;
    }
}
