package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import g.abz;
import g.aeh;
import g.agd;
import g.dcy;
import g.dyo;
import g.edt;
import g.eno;
import g.esy;
import g.gkr;
import g.ti;
import j$.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfbf implements zzeni {

    /* renamed from: a, reason: collision with root package name */
    public final zzcze f7759a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffm f7760b;

    /* renamed from: c, reason: collision with root package name */
    public zzenh f7761c;

    /* renamed from: d, reason: collision with root package name */
    public abz f7762d;

    /* renamed from: e, reason: collision with root package name */
    public final zzems f7763e;

    /* renamed from: f, reason: collision with root package name */
    public dcy f7764f;

    /* renamed from: g, reason: collision with root package name */
    public final zzemw f7765g;
    public final Context h;
    public final FrameLayout i;
    public boolean j;
    public final zzfko k;
    public final Executor l;
    public final zzdbk m;
    public final zzchk n;
    public zzbdi o;

    public zzfbf(Context context, Executor executor, eno enoVar, zzchk zzchkVar, zzems zzemsVar, zzemw zzemwVar, zzffm zzffmVar, zzdbk zzdbkVar) {
        this.h = context;
        this.l = executor;
        this.n = zzchkVar;
        this.f7763e = zzemsVar;
        this.f7765g = zzemwVar;
        this.f7760b = zzffmVar;
        this.f7759a = zzchkVar.zzf();
        this.k = zzchkVar.zzz();
        this.i = new FrameLayout(context);
        this.m = zzdbkVar;
        zzffmVar.zzs(enoVar);
        this.j = true;
        this.f7762d = null;
        this.f7761c = null;
    }

    public final void p() {
        this.f7764f = null;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhO)).booleanValue()) {
            this.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbb
                @Override // java.lang.Runnable
                public final void run() {
                    zzfbf zzfbfVar = zzfbf.this;
                    zzfbfVar.f7763e.zzdB(zzfbfVar.f7762d);
                }
            });
        }
        zzenh zzenhVar = this.f7761c;
        if (zzenhVar != null) {
            zzenhVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zza() {
        dcy dcyVar = this.f7764f;
        return (dcyVar == null || dcyVar.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeni
    public final boolean zzb(aeh aehVar, String str, zzeng zzengVar, zzenh zzenhVar) throws RemoteException {
        zzcqh zzh;
        Executor executor = this.l;
        if (str == null) {
            agd.d("Ad unit ID should not be null for banner ad.");
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbd
                @Override // java.lang.Runnable
                public final void run() {
                    zzfbf.this.f7763e.zzdB(zzfgq.zzd(6, null, null));
                }
            });
            return false;
        }
        boolean zza = zza();
        zzffm zzffmVar = this.f7760b;
        if (!zza) {
            zzbce zzbceVar = zzbcn.zziz;
            edt edtVar = edt.f15376a;
            boolean booleanValue = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
            zzchk zzchkVar = this.n;
            if (booleanValue && aehVar.zzf) {
                zzchkVar.zzl().zzo(true);
            }
            Pair pair = new Pair(zzdrv.PUBLIC_API_CALL.zza(), Long.valueOf(aehVar.zzz));
            String zza2 = zzdrv.DYNAMITE_ENTER.zza();
            ti.f20033a.v.getClass();
            Bundle zza3 = zzdrx.zza(pair, new Pair(zza2, Long.valueOf(System.currentTimeMillis())));
            zzffmVar.zzt(str);
            zzffmVar.zzH(aehVar);
            zzffmVar.zzA(zza3);
            zzffo zzJ = zzffmVar.zzJ();
            int zzf = zzfkk.zzf(zzJ);
            Context context = this.h;
            zzfka zzb = zzfjz.zzb(context, zzf, 3, aehVar);
            boolean booleanValue2 = ((Boolean) zzbet.zze.zze()).booleanValue();
            zzfkl zzfklVar = null;
            zzems zzemsVar = this.f7763e;
            if (!booleanValue2 || !zzffmVar.zzh().zzk) {
                boolean booleanValue3 = ((Boolean) edtVar.f15379d.zza(zzbcn.zzhO)).booleanValue();
                FrameLayout frameLayout = this.i;
                zzdbk zzdbkVar = this.m;
                zzcze zzczeVar = this.f7759a;
                if (booleanValue3) {
                    zzcqg zze = zzchkVar.zze();
                    zzcvu zzcvuVar = new zzcvu();
                    zzcvuVar.zze(context);
                    zzcvuVar.zzi(zzJ);
                    zze.zzi(zzcvuVar.zzj());
                    zzdcd zzdcdVar = new zzdcd();
                    zzdcdVar.zzj(zzemsVar, executor);
                    zzdcdVar.zzk(zzemsVar, executor);
                    zze.zzf(zzdcdVar.zzn());
                    zze.zze(new zzelb(this.o));
                    zze.zzd(new zzdhe(zzdjj.zza, null));
                    zze.zzg(new zzcri(zzczeVar, zzdbkVar));
                    zze.zzc(new zzcpa(frameLayout));
                    zzh = zze.zzh();
                } else {
                    zzcqg zze2 = zzchkVar.zze();
                    zzcvu zzcvuVar2 = new zzcvu();
                    zzcvuVar2.zze(context);
                    zzcvuVar2.zzi(zzJ);
                    zze2.zzi(zzcvuVar2.zzj());
                    zzdcd zzdcdVar2 = new zzdcd();
                    zzdcdVar2.zzj(zzemsVar, executor);
                    zzdcdVar2.zza(zzemsVar, executor);
                    zzdcdVar2.zza(this.f7765g, executor);
                    zzdcdVar2.zzl(zzemsVar, executor);
                    zzdcdVar2.zzd(zzemsVar, executor);
                    zzdcdVar2.zze(zzemsVar, executor);
                    zzdcdVar2.zzf(zzemsVar, executor);
                    zzdcdVar2.zzb(zzemsVar, executor);
                    zzdcdVar2.zzk(zzemsVar, executor);
                    zzdcdVar2.zzi(zzemsVar, executor);
                    zze2.zzf(zzdcdVar2.zzn());
                    zze2.zze(new zzelb(this.o));
                    zze2.zzd(new zzdhe(zzdjj.zza, null));
                    zze2.zzg(new zzcri(zzczeVar, zzdbkVar));
                    zze2.zzc(new zzcpa(frameLayout));
                    zzh = zze2.zzh();
                }
                if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
                    zzfklVar = zzh.zzj();
                    zzfklVar.zzi(3);
                    zzfklVar.zzb(aehVar.zzp);
                    zzfklVar.zzf(aehVar.zzm);
                }
                this.f7761c = zzenhVar;
                zzcsy zzd = zzh.zzd();
                dcy zzi = zzd.zzi(zzd.zzj());
                this.f7764f = zzi;
                zzgei.zzr(zzi, new gkr(this, zzfklVar, zzb, zzh, 10, false), executor);
                return true;
            }
            if (zzemsVar != null) {
                zzemsVar.zzdB(zzfgq.zzd(7, null, null));
            }
        } else if (!zzffmVar.zzS()) {
            this.j = true;
            return false;
        }
        return false;
    }

    public final ViewGroup zzc() {
        return this.i;
    }

    public final zzffm zzg() {
        return this.f7760b;
    }

    public final void zzm() {
        this.f7759a.zzd(this.m.zzc());
    }

    public final void zzn() {
        this.f7759a.zze(this.m.zzd());
    }

    public final void zzo(dyo dyoVar) {
        this.f7765g.zza(dyoVar);
    }

    public final void zzp(zzcyy zzcyyVar) {
        this.f7759a.zzo(zzcyyVar, this.l);
    }

    public final void zzq(zzbdi zzbdiVar) {
        this.o = zzbdiVar;
    }

    public final void zzr() {
        synchronized (this) {
            try {
                dcy dcyVar = this.f7764f;
                if (dcyVar != null && dcyVar.isDone()) {
                    try {
                        zzcpd zzcpdVar = (zzcpd) this.f7764f.get();
                        this.f7764f = null;
                        this.i.removeAllViews();
                        if (zzcpdVar.zzd() != null) {
                            ViewParent parent = zzcpdVar.zzd().getParent();
                            if (parent instanceof ViewGroup) {
                                agd.b("Banner view provided from " + (zzcpdVar.zzm() != null ? zzcpdVar.zzm().zzg() : "") + " already has a parent view. Removing its old parent.");
                                ((ViewGroup) parent).removeView(zzcpdVar.zzd());
                            }
                        }
                        zzbce zzbceVar = zzbcn.zzhO;
                        edt edtVar = edt.f15376a;
                        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                            zzdas zzo = zzcpdVar.zzo();
                            zzo.zza(this.f7763e);
                            zzo.zzc(this.f7765g);
                        }
                        this.i.addView(zzcpdVar.zzd());
                        this.f7761c.zzb(zzcpdVar);
                        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                            Executor executor = this.l;
                            final zzems zzemsVar = this.f7763e;
                            Objects.requireNonNull(zzemsVar);
                            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbc
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzems.this.zzs();
                                }
                            });
                        }
                        if (zzcpdVar.zza() >= 0) {
                            this.j = false;
                            this.f7759a.zzd(zzcpdVar.zza());
                            this.f7759a.zze(zzcpdVar.zzc());
                        } else {
                            this.j = true;
                            this.f7759a.zzd(zzcpdVar.zzc());
                        }
                    } catch (InterruptedException | ExecutionException unused) {
                        p();
                        agd.h();
                        this.j = true;
                        this.f7759a.zza();
                    }
                } else if (this.f7764f != null) {
                    agd.e("Show timer went off but there is an ongoing ad request.");
                    this.j = true;
                } else {
                    agd.e("No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad.");
                    this.j = true;
                    this.f7759a.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzt() {
        Object parent = this.i.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        esy esyVar = ti.f20033a.z;
        Context context = view.getContext();
        Context applicationContext = context.getApplicationContext();
        KeyguardManager keyguardManager = null;
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return esy.p(view, powerManager, keyguardManager);
    }
}
