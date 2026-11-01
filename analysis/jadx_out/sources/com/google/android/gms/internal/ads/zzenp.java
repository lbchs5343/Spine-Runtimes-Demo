package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import g.aeh;
import g.agd;
import g.aqo;
import g.edt;
import g.esy;
import g.fbj;
import g.ti;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzenp implements zzeni {

    /* renamed from: a, reason: collision with root package name */
    public final zzenf f7285a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfko f7286b;

    /* renamed from: c, reason: collision with root package name */
    public final zzffm f7287c;

    /* renamed from: d, reason: collision with root package name */
    public zzcsf f7288d;

    /* renamed from: e, reason: collision with root package name */
    public final zzchk f7289e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f7290f;

    public zzenp(zzchk zzchkVar, Context context, zzenf zzenfVar, zzffm zzffmVar) {
        this.f7289e = zzchkVar;
        this.f7290f = context;
        this.f7285a = zzenfVar;
        this.f7287c = zzffmVar;
        this.f7286b = zzchkVar.zzz();
        zzffmVar.zzv(zzenfVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zza() {
        zzcsf zzcsfVar = this.f7288d;
        return zzcsfVar != null && zzcsfVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zzb(aeh aehVar, String str, zzeng zzengVar, zzenh zzenhVar) throws RemoteException {
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        Context context = this.f7290f;
        boolean ab2 = esy.ab(context);
        zzchk zzchkVar = this.f7289e;
        if (ab2 && aehVar.zzs == null) {
            agd.d("Failed to load the ad because app ID is missing.");
            zzchkVar.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzenk
                @Override // java.lang.Runnable
                public final void run() {
                    zzenp.this.f7285a.zza().zzdB(zzfgq.zzd(4, null, null));
                }
            });
            return false;
        }
        if (str == null) {
            agd.d("Ad unit ID should not be null for NativeAdLoader.");
            zzchkVar.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzenl
                @Override // java.lang.Runnable
                public final void run() {
                    zzenp.this.f7285a.zza().zzdB(zzfgq.zzd(6, null, null));
                }
            });
            return false;
        }
        zzfgl.zza(context, aehVar.zzf);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue() && aehVar.zzf) {
            zzchkVar.zzl().zzo(true);
        }
        int i = ((zzenj) zzengVar).zza;
        tiVar.v.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        String zza = zzdrv.PUBLIC_API_CALL.zza();
        Long valueOf = Long.valueOf(currentTimeMillis);
        Bundle zza2 = zzdrx.zza(new Pair(zza, valueOf), new Pair(zzdrv.DYNAMITE_ENTER.zza(), valueOf));
        zzffm zzffmVar = this.f7287c;
        zzffmVar.zzH(aehVar);
        zzffmVar.zzA(zza2);
        zzffmVar.zzC(i);
        zzffo zzJ = zzffmVar.zzJ();
        zzfka zzb = zzfjz.zzb(context, zzfkk.zzf(zzJ), 8, aehVar);
        fbj fbjVar = zzJ.zzn;
        zzenf zzenfVar = this.f7285a;
        if (fbjVar != null) {
            zzenfVar.zzd().zzm(fbjVar);
        }
        zzdhi zzh = zzchkVar.zzh();
        zzcvu zzcvuVar = new zzcvu();
        zzcvuVar.zze(context);
        zzcvuVar.zzi(zzJ);
        zzh.zzf(zzcvuVar.zzj());
        zzdcd zzdcdVar = new zzdcd();
        zzdcdVar.zzk(zzenfVar.zzd(), zzchkVar.zzC());
        zzh.zze(zzdcdVar.zzn());
        zzh.zzd(zzenfVar.zzc());
        zzfkl zzfklVar = null;
        zzh.zzc(new zzcpa(null));
        zzdhj zzh2 = zzh.zzh();
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            zzfklVar = zzh2.zzf();
            zzfklVar.zzi(8);
            zzfklVar.zzb(aehVar.zzp);
            zzfklVar.zzf(aehVar.zzm);
        }
        zzchkVar.zzy().zzc(1);
        zzges zzc = zzfin.zzc();
        ScheduledExecutorService zzD = zzchkVar.zzD();
        zzcsy zza3 = zzh2.zza();
        zzcsf zzcsfVar = new zzcsf(zzc, zzD, zza3.zzi(zza3.zzj()));
        this.f7288d = zzcsfVar;
        zzcsfVar.zze(new aqo(this, zzenhVar, zzfklVar, zzb, zzh2));
        return true;
    }
}
