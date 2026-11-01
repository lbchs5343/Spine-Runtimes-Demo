package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import android.widget.FrameLayout;
import g.aeh;
import g.agd;
import g.akx;
import g.ckd;
import g.dcy;
import g.edt;
import g.eno;
import g.gam;
import g.gby;
import g.ti;
import g.wc;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class zzfab implements zzeni {

    /* renamed from: a, reason: collision with root package name */
    public final zzfko f7724a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfar f7725b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfck f7726c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7727d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f7728e;

    /* renamed from: f, reason: collision with root package name */
    public final zzffm f7729f;

    /* renamed from: g, reason: collision with root package name */
    public final Executor f7730g;
    public dcy h;
    public final zzchk i;
    public final FrameLayout j;

    public zzfab(Context context, Executor executor, zzchk zzchkVar, zzfck zzfckVar, zzfar zzfarVar, zzffm zzffmVar, akx akxVar) {
        this.f7727d = context;
        this.f7730g = executor;
        this.i = zzchkVar;
        this.f7726c = zzfckVar;
        this.f7725b = zzfarVar;
        this.f7729f = zzffmVar;
        this.f7728e = akxVar;
        this.j = new FrameLayout(context);
        this.f7724a = zzchkVar.zzz();
    }

    public abstract zzcoq k(zzcvw zzcvwVar, zzdcf zzdcfVar);

    public final synchronized zzcvs l(zzfci zzfciVar) {
        wc wcVar = (wc) zzfciVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhP)).booleanValue()) {
            new zzcpa(this.j);
            zzcvu zzcvuVar = new zzcvu();
            zzcvuVar.zze(this.f7727d);
            zzcvuVar.zzi(wcVar.f20205a);
            zzcvw zzj = zzcvuVar.zzj();
            zzdcd zzdcdVar = new zzdcd();
            zzdcdVar.zzc(this.f7725b, this.f7730g);
            zzdcdVar.zzl(this.f7725b, this.f7730g);
            return k(zzj, zzdcdVar.zzn());
        }
        zzfar zzi = zzfar.zzi(this.f7725b);
        zzdcd zzdcdVar2 = new zzdcd();
        zzdcdVar2.zzb(zzi, this.f7730g);
        zzdcdVar2.zzg(zzi, this.f7730g);
        zzdcdVar2.zzh(zzi, this.f7730g);
        zzdcdVar2.zzi(zzi, this.f7730g);
        zzdcdVar2.zzc(zzi, this.f7730g);
        zzdcdVar2.zzl(zzi, this.f7730g);
        zzdcdVar2.zzm(zzi);
        new zzcpa(this.j);
        zzcvu zzcvuVar2 = new zzcvu();
        zzcvuVar2.zze(this.f7727d);
        zzcvuVar2.zzi(wcVar.f20205a);
        return k(zzcvuVar2.zzj(), zzdcdVar2.zzn());
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zza() {
        dcy dcyVar = this.h;
        return (dcyVar == null || dcyVar.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final synchronized boolean zzb(aeh aehVar, String str, zzeng zzengVar, zzenh zzenhVar) throws RemoteException {
        Throwable th;
        boolean z;
        zzfkl zzfklVar;
        try {
            try {
                if (!aehVar.zzb()) {
                    if (((Boolean) zzbel.zzd.zze()).booleanValue()) {
                        try {
                            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                                z = true;
                                if (this.f7728e.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue() || !z) {
                                    ckd.aj("loadAd must be called on the main UI thread.");
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    z = false;
                    if (this.f7728e.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue()) {
                    }
                    ckd.aj("loadAd must be called on the main UI thread.");
                }
                if (str == null) {
                    agd.d("Ad unit ID should not be null for app open ad.");
                    this.f7730g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezv
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzfab.this.f7725b.zzdB(zzfgq.zzd(6, null, null));
                        }
                    });
                    return false;
                }
                if (this.h != null) {
                    return false;
                }
                if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
                    zzfck zzfckVar = this.f7726c;
                    if (zzfckVar.zzd() != null) {
                        zzfkl zzh = ((zzcon) zzfckVar.zzd()).zzh();
                        zzh.zzi(7);
                        zzh.zzb(aehVar.zzp);
                        zzh.zzf(aehVar.zzm);
                        zzfklVar = zzh;
                        zzfgl.zza(this.f7727d, aehVar.zzf);
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue() && aehVar.zzf) {
                            this.i.zzl().zzo(true);
                        }
                        Pair pair = new Pair(zzdrv.PUBLIC_API_CALL.zza(), Long.valueOf(aehVar.zzz));
                        String zza = zzdrv.DYNAMITE_ENTER.zza();
                        ti.f20033a.v.getClass();
                        Bundle zza2 = zzdrx.zza(pair, new Pair(zza, Long.valueOf(System.currentTimeMillis())));
                        zzffm zzffmVar = this.f7729f;
                        zzffmVar.zzt(str);
                        zzffmVar.zzs(eno.zzb());
                        zzffmVar.zzH(aehVar);
                        zzffmVar.zzA(zza2);
                        Context context = this.f7727d;
                        zzffo zzJ = zzffmVar.zzJ();
                        zzfka zzb = zzfjz.zzb(context, zzfkk.zzf(zzJ), 7, aehVar);
                        wc wcVar = new wc();
                        wcVar.f20205a = zzJ;
                        dcy zzc = this.f7726c.zzc(new zzfcl(wcVar, null), new zzfcj() { // from class: com.google.android.gms.internal.ads.zzezw
                            @Override // com.google.android.gms.internal.ads.zzfcj
                            public final zzcvs zza(zzfci zzfciVar) {
                                zzcvs l;
                                l = zzfab.this.l(zzfciVar);
                                return l;
                            }
                        }, null);
                        this.h = zzc;
                        zzgei.zzr(zzc, new gam(this, zzenhVar, zzfklVar, zzb, wcVar), this.f7730g);
                        return true;
                    }
                }
                zzfklVar = null;
                zzfgl.zza(this.f7727d, aehVar.zzf);
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue()) {
                    this.i.zzl().zzo(true);
                }
                Pair pair2 = new Pair(zzdrv.PUBLIC_API_CALL.zza(), Long.valueOf(aehVar.zzz));
                String zza3 = zzdrv.DYNAMITE_ENTER.zza();
                ti.f20033a.v.getClass();
                Bundle zza22 = zzdrx.zza(pair2, new Pair(zza3, Long.valueOf(System.currentTimeMillis())));
                zzffm zzffmVar2 = this.f7729f;
                zzffmVar2.zzt(str);
                zzffmVar2.zzs(eno.zzb());
                zzffmVar2.zzH(aehVar);
                zzffmVar2.zzA(zza22);
                Context context2 = this.f7727d;
                zzffo zzJ2 = zzffmVar2.zzJ();
                zzfka zzb2 = zzfjz.zzb(context2, zzfkk.zzf(zzJ2), 7, aehVar);
                wc wcVar2 = new wc();
                wcVar2.f20205a = zzJ2;
                dcy zzc2 = this.f7726c.zzc(new zzfcl(wcVar2, null), new zzfcj() { // from class: com.google.android.gms.internal.ads.zzezw
                    @Override // com.google.android.gms.internal.ads.zzfcj
                    public final zzcvs zza(zzfci zzfciVar) {
                        zzcvs l;
                        l = zzfab.this.l(zzfciVar);
                        return l;
                    }
                }, null);
                this.h = zzc2;
                zzgei.zzr(zzc2, new gam(this, zzenhVar, zzfklVar, zzb2, wcVar2), this.f7730g);
                return true;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void zzl(gby gbyVar) {
        this.f7729f.zzu(gbyVar);
    }
}
