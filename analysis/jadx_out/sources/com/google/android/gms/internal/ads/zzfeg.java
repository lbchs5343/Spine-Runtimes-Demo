package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import g.aeh;
import g.agd;
import g.dcy;
import g.edt;
import g.eno;
import g.fuc;
import g.no;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfeg implements zzeni {

    /* renamed from: a, reason: collision with root package name */
    public final zzffm f7814a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfdw f7815b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfck f7816c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7817d;

    /* renamed from: e, reason: collision with root package name */
    public final zzffg f7818e;

    /* renamed from: f, reason: collision with root package name */
    public dcy f7819f;

    /* renamed from: g, reason: collision with root package name */
    public final Executor f7820g;
    public final zzchk h;
    public final zzfko i;

    public zzfeg(Context context, Executor executor, zzchk zzchkVar, zzfck zzfckVar, zzfdw zzfdwVar, zzffm zzffmVar, zzffg zzffgVar) {
        this.f7817d = context;
        this.f7820g = executor;
        this.h = zzchkVar;
        this.f7816c = zzfckVar;
        this.f7815b = zzfdwVar;
        this.f7814a = zzffmVar;
        this.f7818e = zzffgVar;
        this.i = zzchkVar.zzz();
    }

    public final zzdov j(zzfci zzfciVar) {
        zzdov zzi = this.h.zzi();
        zzcvu zzcvuVar = new zzcvu();
        zzcvuVar.zze(this.f7817d);
        zzcvuVar.zzi(((fuc) zzfciVar).f17426a);
        zzcvuVar.zzh(this.f7818e);
        zzi.mo5zzd(zzcvuVar.zzj());
        zzi.mo4zzc(new zzdcd().zzn());
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zza() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zzb(aeh aehVar, String str, zzeng zzengVar, zzenh zzenhVar) throws RemoteException {
        zzfkl zzfklVar;
        zzbwq zzbwqVar = new zzbwq(aehVar, str);
        String str2 = zzbwqVar.zzb;
        Executor executor = this.f7820g;
        if (str2 == null) {
            agd.d("Ad unit ID should not be null for rewarded video ad.");
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdz
                @Override // java.lang.Runnable
                public final void run() {
                    zzfeg.this.f7815b.zzdB(zzfgq.zzd(6, null, null));
                }
            });
            return false;
        }
        dcy dcyVar = this.f7819f;
        if (dcyVar != null && !dcyVar.isDone()) {
            return false;
        }
        boolean booleanValue = ((Boolean) zzbeg.zzc.zze()).booleanValue();
        zzfck zzfckVar = this.f7816c;
        if (!booleanValue || zzfckVar.zzd() == null) {
            zzfklVar = null;
        } else {
            zzfkl zzh = ((zzdow) zzfckVar.zzd()).zzh();
            zzh.zzi(5);
            zzh.zzb(zzbwqVar.zza.zzp);
            zzh.zzf(zzbwqVar.zza.zzm);
            zzfklVar = zzh;
        }
        boolean z = zzbwqVar.zza.zzf;
        Context context = this.f7817d;
        zzfgl.zza(context, z);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue() && zzbwqVar.zza.zzf) {
            this.h.zzl().zzo(true);
        }
        Pair pair = new Pair(zzdrv.PUBLIC_API_CALL.zza(), Long.valueOf(zzbwqVar.zza.zzz));
        String zza = zzdrv.DYNAMITE_ENTER.zza();
        ti.f20033a.v.getClass();
        Bundle zza2 = zzdrx.zza(pair, new Pair(zza, Long.valueOf(System.currentTimeMillis())));
        String str3 = zzbwqVar.zzb;
        zzffm zzffmVar = this.f7814a;
        zzffmVar.zzt(str3);
        zzffmVar.zzs(eno.zzd());
        zzffmVar.zzH(zzbwqVar.zza);
        zzffmVar.zzA(zza2);
        zzffo zzJ = zzffmVar.zzJ();
        zzfka zzb = zzfjz.zzb(context, zzfkk.zzf(zzJ), 5, zzbwqVar.zza);
        fuc fucVar = new fuc();
        fucVar.f17426a = zzJ;
        dcy zzc = zzfckVar.zzc(new zzfcl(fucVar, null), new zzfcj() { // from class: com.google.android.gms.internal.ads.zzfea
            @Override // com.google.android.gms.internal.ads.zzfcj
            public final zzcvs zza(zzfci zzfciVar) {
                zzdov j;
                j = zzfeg.this.j(zzfciVar);
                return j;
            }
        }, null);
        this.f7819f = zzc;
        zzgei.zzr(zzc, new no(this, zzenhVar, zzfklVar, zzb, fucVar), executor);
        return true;
    }
}
