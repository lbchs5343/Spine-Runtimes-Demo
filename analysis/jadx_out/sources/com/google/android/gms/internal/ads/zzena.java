package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.aeh;
import g.afk;
import g.agd;
import g.akx;
import g.atu;
import g.bjq;
import g.bpp;
import g.bzx;
import g.cbz;
import g.ckd;
import g.cpm;
import g.dyo;
import g.edt;
import g.ejp;
import g.emr;
import g.eno;
import g.esy;
import g.fbj;
import g.fsf;
import g.gb;
import g.gby;
import g.gcq;
import g.gpa;
import g.gwt;
import g.ti;

/* loaded from: classes3.dex */
public final class zzena extends afk {

    /* renamed from: a, reason: collision with root package name */
    public final zzavc f7265a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfdw f7266b;

    /* renamed from: c, reason: collision with root package name */
    public zzdfj f7267c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfcw f7268d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7269e = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaL)).booleanValue();

    /* renamed from: f, reason: collision with root package name */
    public final String f7270f;

    /* renamed from: g, reason: collision with root package name */
    public final akx f7271g;
    public final eno h;
    public final zzdsm i;
    public final Context j;
    public final zzems k;

    public zzena(Context context, eno enoVar, String str, zzfcw zzfcwVar, zzems zzemsVar, zzfdw zzfdwVar, akx akxVar, zzavc zzavcVar, zzdsm zzdsmVar) {
        this.h = enoVar;
        this.f7270f = str;
        this.j = context;
        this.f7268d = zzfcwVar;
        this.k = zzemsVar;
        this.f7266b = zzfdwVar;
        this.f7271g = akxVar;
        this.f7265a = zzavcVar;
        this.i = zzdsmVar;
    }

    public final synchronized boolean m() {
        zzdfj zzdfjVar = this.f7267c;
        if (zzdfjVar != null) {
            if (!zzdfjVar.zza()) {
                return true;
            }
        }
        return false;
    }

    @Override // g.deq
    public final void zzA() {
    }

    @Override // g.deq
    public final synchronized void zzB() {
        ckd.aj("resume must be called on the main UI thread.");
        zzdfj zzdfjVar = this.f7267c;
        if (zzdfjVar != null) {
            zzdfjVar.zzn().zzc(null);
        }
    }

    @Override // g.deq
    public final void zzC(dyo dyoVar) {
    }

    @Override // g.deq
    public final void zzD(ejp ejpVar) {
        ckd.aj("setAdListener must be called on the main UI thread.");
        this.k.zzj(ejpVar);
    }

    @Override // g.deq
    public final void zzE(gb gbVar) {
        ckd.aj("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // g.deq
    public final void zzF(eno enoVar) {
    }

    @Override // g.deq
    public final void zzG(fbj fbjVar) {
        ckd.aj("setAppEventListener must be called on the main UI thread.");
        this.k.zzm(fbjVar);
    }

    @Override // g.deq
    public final void zzH(zzbai zzbaiVar) {
    }

    @Override // g.deq
    public final void zzI(gby gbyVar) {
    }

    @Override // g.deq
    public final void zzJ(bzx bzxVar) {
        this.k.zzn(bzxVar);
    }

    @Override // g.deq
    public final void zzK(fsf fsfVar) {
    }

    @Override // g.deq
    public final synchronized void zzL(boolean z) {
        ckd.aj("setImmersiveMode must be called on the main UI thread.");
        this.f7269e = z;
    }

    @Override // g.deq
    public final void zzM(zzbtp zzbtpVar) {
    }

    @Override // g.deq
    public final void zzN(boolean z) {
    }

    @Override // g.deq
    public final synchronized void zzO(zzbdi zzbdiVar) {
        ckd.aj("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f7268d.zzi(zzbdiVar);
    }

    @Override // g.deq
    public final void zzP(gwt gwtVar) {
        ckd.aj("setPaidEventListener must be called on the main UI thread.");
        try {
            if (!gwtVar.zzf()) {
                this.i.zze();
            }
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
        this.k.zzl(gwtVar);
    }

    @Override // g.deq
    public final void zzQ(zzbts zzbtsVar, String str) {
    }

    @Override // g.deq
    public final void zzR(String str) {
    }

    @Override // g.deq
    public final void zzS(zzbwp zzbwpVar) {
        this.f7266b.zzm(zzbwpVar);
    }

    @Override // g.deq
    public final void zzT(String str) {
    }

    @Override // g.deq
    public final void zzU(cpm cpmVar) {
    }

    @Override // g.deq
    public final synchronized void zzW(bjq bjqVar) {
        if (this.f7267c == null) {
            agd.b("Interstitial can not be shown before loaded.");
            this.k.zzq(zzfgq.zzd(9, null, null));
            return;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcS)).booleanValue()) {
            this.f7265a.zzc().zzn(new Throwable().getStackTrace());
        }
        this.f7267c.zzc(this.f7269e, (Activity) bpp.b(bjqVar));
    }

    @Override // g.deq
    public final synchronized void zzX() {
        ckd.aj("showInterstitial must be called on the main UI thread.");
        if (this.f7267c == null) {
            agd.b("Interstitial can not be shown before loaded.");
            this.k.zzq(zzfgq.zzd(9, null, null));
        } else {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcS)).booleanValue()) {
                this.f7265a.zzc().zzn(new Throwable().getStackTrace());
            }
            this.f7267c.zzc(this.f7269e, null);
        }
    }

    @Override // g.deq
    public final synchronized boolean zzY() {
        return false;
    }

    @Override // g.deq
    public final synchronized boolean zzZ() {
        return this.f7268d.zza();
    }

    @Override // g.deq
    public final synchronized boolean zzaa() {
        ckd.aj("isLoaded must be called on the main UI thread.");
        return m();
    }

    @Override // g.deq
    public final synchronized boolean zzab(aeh aehVar) {
        boolean z;
        try {
            if (!aehVar.zzb()) {
                if (((Boolean) zzbel.zzi.zze()).booleanValue()) {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                        z = true;
                        if (this.f7271g.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue() || !z) {
                            ckd.aj("loadAd must be called on the main UI thread.");
                        }
                    }
                }
                z = false;
                if (this.f7271g.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue()) {
                }
                ckd.aj("loadAd must be called on the main UI thread.");
            }
            esy esyVar = ti.f20033a.z;
            if (esy.ab(this.j) && aehVar.zzs == null) {
                agd.d("Failed to load the ad because app ID is missing.");
                zzems zzemsVar = this.k;
                if (zzemsVar != null) {
                    zzemsVar.zzdB(zzfgq.zzd(4, null, null));
                }
            } else if (!m()) {
                zzfgl.zza(this.j, aehVar.zzf);
                this.f7267c = null;
                return this.f7268d.zzb(aehVar, this.f7270f, new zzfcp(this.h), new emr(29, this));
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final void zzac(atu atuVar) {
    }

    @Override // g.deq
    public final Bundle zzd() {
        ckd.aj("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // g.deq
    public final eno zzg() {
        return null;
    }

    @Override // g.deq
    public final ejp zzi() {
        return this.k.zzg();
    }

    @Override // g.deq
    public final fbj zzj() {
        return this.k.zzi();
    }

    @Override // g.deq
    public final synchronized gcq zzk() {
        zzdfj zzdfjVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgD)).booleanValue() && (zzdfjVar = this.f7267c) != null) {
            return zzdfjVar.zzm();
        }
        return null;
    }

    @Override // g.deq
    public final cbz zzl() {
        return null;
    }

    @Override // g.deq
    public final bjq zzn() {
        return null;
    }

    @Override // g.deq
    public final synchronized String zzr() {
        return this.f7270f;
    }

    @Override // g.deq
    public final synchronized String zzs() {
        zzdfj zzdfjVar = this.f7267c;
        if (zzdfjVar == null || zzdfjVar.zzm() == null) {
            return null;
        }
        return zzdfjVar.zzm().zzg();
    }

    @Override // g.deq
    public final synchronized String zzt() {
        zzdfj zzdfjVar = this.f7267c;
        if (zzdfjVar == null || zzdfjVar.zzm() == null) {
            return null;
        }
        return zzdfjVar.zzm().zzg();
    }

    @Override // g.deq
    public final synchronized void zzx() {
        ckd.aj("destroy must be called on the main UI thread.");
        zzdfj zzdfjVar = this.f7267c;
        if (zzdfjVar != null) {
            zzdfjVar.zzn().zza(null);
        }
    }

    @Override // g.deq
    public final void zzy(aeh aehVar, gpa gpaVar) {
        this.k.zzk(gpaVar);
        zzab(aehVar);
    }

    @Override // g.deq
    public final synchronized void zzz() {
        ckd.aj("pause must be called on the main UI thread.");
        zzdfj zzdfjVar = this.f7267c;
        if (zzdfjVar != null) {
            zzdfjVar.zzn().zzb(null);
        }
    }
}
