package com.google.android.gms.internal.ads;

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
import g.eap;
import g.edt;
import g.ejp;
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
import java.util.Collections;
import java.util.concurrent.ExecutionException;

/* loaded from: classes3.dex */
public final class zzely extends afk implements zzcyy {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsm f7241a;

    /* renamed from: b, reason: collision with root package name */
    public final akx f7242b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7243c;

    /* renamed from: d, reason: collision with root package name */
    public final zzems f7244d;

    /* renamed from: e, reason: collision with root package name */
    public eno f7245e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f7246f;

    /* renamed from: g, reason: collision with root package name */
    public zzcpd f7247g;
    public final zzfbf h;
    public final zzffm i;

    public zzely(Context context, eno enoVar, String str, zzfbf zzfbfVar, zzems zzemsVar, akx akxVar, zzdsm zzdsmVar) {
        this.f7246f = context;
        this.h = zzfbfVar;
        this.f7245e = enoVar;
        this.f7243c = str;
        this.f7244d = zzemsVar;
        this.i = zzfbfVar.zzg();
        this.f7242b = akxVar;
        this.f7241a = zzdsmVar;
        zzfbfVar.zzp(this);
    }

    public final synchronized void j(eno enoVar) {
        this.i.zzs(enoVar);
        this.i.zzy(this.f7245e.zzn);
    }

    public final boolean k() {
        boolean z;
        if (((Boolean) zzbel.zzf.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                z = true;
                return this.f7242b.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue() || !z;
            }
        }
        z = false;
        if (this.f7242b.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue()) {
        }
    }

    public final synchronized boolean m(aeh aehVar) {
        try {
            if (k()) {
                ckd.aj("loadAd must be called on the main UI thread.");
            }
            esy esyVar = ti.f20033a.z;
            if (!esy.ab(this.f7246f) || aehVar.zzs != null) {
                zzfgl.zza(this.f7246f, aehVar.zzf);
                return this.h.zzb(aehVar, this.f7243c, null, new eap(1, this));
            }
            agd.d("Failed to load the ad because app ID is missing.");
            zzems zzemsVar = this.f7244d;
            if (zzemsVar != null) {
                zzemsVar.zzdB(zzfgq.zzd(4, null, null));
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final synchronized void zzA() {
        ckd.aj("recordManualImpression must be called on the main UI thread.");
        zzcpd zzcpdVar = this.f7247g;
        if (zzcpdVar != null) {
            zzcpdVar.zzh();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003d, B:12:0x0041, B:19:0x0038), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b A[DONT_GENERATE] */
    @Override // g.deq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzB() {
        zzcpd zzcpdVar;
        try {
            if (((Boolean) zzbel.zzh.zze()).booleanValue()) {
                zzbce zzbceVar = zzbcn.zzkL;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    if (this.f7242b.clientJarVersion < ((Integer) edtVar.f15379d.zza(zzbcn.zzkR)).intValue()) {
                    }
                    zzcpdVar = this.f7247g;
                    if (zzcpdVar == null) {
                        zzcpdVar.zzn().zzc(null);
                        return;
                    }
                    return;
                }
            }
            ckd.aj("resume must be called on the main UI thread.");
            zzcpdVar = this.f7247g;
            if (zzcpdVar == null) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final void zzC(dyo dyoVar) {
        if (k()) {
            ckd.aj("setAdListener must be called on the main UI thread.");
        }
        this.h.zzo(dyoVar);
    }

    @Override // g.deq
    public final void zzD(ejp ejpVar) {
        if (k()) {
            ckd.aj("setAdListener must be called on the main UI thread.");
        }
        this.f7244d.zzj(ejpVar);
    }

    @Override // g.deq
    public final void zzE(gb gbVar) {
        ckd.aj("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // g.deq
    public final synchronized void zzF(eno enoVar) {
        ckd.aj("setAdSize must be called on the main UI thread.");
        this.i.zzs(enoVar);
        this.f7245e = enoVar;
        zzcpd zzcpdVar = this.f7247g;
        if (zzcpdVar != null) {
            zzcpdVar.zzi(this.h.zzc(), enoVar);
        }
    }

    @Override // g.deq
    public final void zzG(fbj fbjVar) {
        if (k()) {
            ckd.aj("setAppEventListener must be called on the main UI thread.");
        }
        this.f7244d.zzm(fbjVar);
    }

    @Override // g.deq
    public final void zzH(zzbai zzbaiVar) {
    }

    @Override // g.deq
    public final void zzI(gby gbyVar) {
    }

    @Override // g.deq
    public final void zzJ(bzx bzxVar) {
    }

    @Override // g.deq
    public final void zzK(fsf fsfVar) {
    }

    @Override // g.deq
    public final void zzL(boolean z) {
    }

    @Override // g.deq
    public final void zzM(zzbtp zzbtpVar) {
    }

    @Override // g.deq
    public final synchronized void zzN(boolean z) {
        try {
            if (k()) {
                ckd.aj("setManualImpressionsEnabled must be called from the main thread.");
            }
            this.i.zzB(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final synchronized void zzO(zzbdi zzbdiVar) {
        ckd.aj("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.h.zzq(zzbdiVar);
    }

    @Override // g.deq
    public final void zzP(gwt gwtVar) {
        if (k()) {
            ckd.aj("setPaidEventListener must be called on the main UI thread.");
        }
        try {
            if (!gwtVar.zzf()) {
                this.f7241a.zze();
            }
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
        this.f7244d.zzl(gwtVar);
    }

    @Override // g.deq
    public final void zzQ(zzbts zzbtsVar, String str) {
    }

    @Override // g.deq
    public final void zzR(String str) {
    }

    @Override // g.deq
    public final void zzS(zzbwp zzbwpVar) {
    }

    @Override // g.deq
    public final void zzT(String str) {
    }

    @Override // g.deq
    public final synchronized void zzU(cpm cpmVar) {
        try {
            if (k()) {
                ckd.aj("setVideoOptions must be called on the main UI thread.");
            }
            this.i.zzI(cpmVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final void zzW(bjq bjqVar) {
    }

    @Override // g.deq
    public final void zzX() {
    }

    @Override // g.deq
    public final synchronized boolean zzY() {
        zzcpd zzcpdVar = this.f7247g;
        if (zzcpdVar != null) {
            if (zzcpdVar.zzs()) {
                return true;
            }
        }
        return false;
    }

    @Override // g.deq
    public final synchronized boolean zzZ() {
        return this.h.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcyy
    public final synchronized void zza() {
        try {
            if (!this.h.zzt()) {
                this.h.zzm();
                return;
            }
            eno zzh = this.i.zzh();
            zzcpd zzcpdVar = this.f7247g;
            if (zzcpdVar != null && zzcpdVar.zzg() != null && this.i.zzT()) {
                zzh = zzffu.zza(this.f7246f, Collections.singletonList(this.f7247g.zzg()));
            }
            j(zzh);
            this.i.zzx(true);
            try {
                m(this.i.zzf());
            } catch (RemoteException unused) {
                agd.b("Failed to refresh the banner ad.");
            }
            this.i.zzx(false);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final boolean zzaa() {
        return false;
    }

    @Override // g.deq
    public final synchronized boolean zzab(aeh aehVar) throws RemoteException {
        j(this.f7245e);
        return m(aehVar);
    }

    @Override // g.deq
    public final synchronized void zzac(atu atuVar) {
        ckd.aj("setCorrelationIdProvider must be called on the main UI thread");
        this.i.zzV(atuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcyy
    public final synchronized void zzb() throws ExecutionException, InterruptedException {
        if (this.h.zzt()) {
            this.h.zzr();
        } else {
            this.h.zzn();
        }
    }

    @Override // g.deq
    public final Bundle zzd() {
        ckd.aj("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // g.deq
    public final synchronized eno zzg() {
        ckd.aj("getAdSize must be called on the main UI thread.");
        zzcpd zzcpdVar = this.f7247g;
        if (zzcpdVar != null) {
            return zzffu.zza(this.f7246f, Collections.singletonList(zzcpdVar.zzf()));
        }
        return this.i.zzh();
    }

    @Override // g.deq
    public final ejp zzi() {
        return this.f7244d.zzg();
    }

    @Override // g.deq
    public final fbj zzj() {
        return this.f7244d.zzi();
    }

    @Override // g.deq
    public final synchronized gcq zzk() {
        zzcpd zzcpdVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgD)).booleanValue() && (zzcpdVar = this.f7247g) != null) {
            return zzcpdVar.zzm();
        }
        return null;
    }

    @Override // g.deq
    public final synchronized cbz zzl() {
        ckd.aj("getVideoController must be called from the main thread.");
        zzcpd zzcpdVar = this.f7247g;
        if (zzcpdVar == null) {
            return null;
        }
        return zzcpdVar.zze();
    }

    @Override // g.deq
    public final bjq zzn() {
        if (k()) {
            ckd.aj("getAdFrame must be called on the main UI thread.");
        }
        return new bpp(this.h.zzc());
    }

    @Override // g.deq
    public final synchronized String zzr() {
        return this.f7243c;
    }

    @Override // g.deq
    public final synchronized String zzs() {
        zzcpd zzcpdVar = this.f7247g;
        if (zzcpdVar == null || zzcpdVar.zzm() == null) {
            return null;
        }
        return zzcpdVar.zzm().zzg();
    }

    @Override // g.deq
    public final synchronized String zzt() {
        zzcpd zzcpdVar = this.f7247g;
        if (zzcpdVar == null || zzcpdVar.zzm() == null) {
            return null;
        }
        return zzcpdVar.zzm().zzg();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003d, B:12:0x0041, B:19:0x0038), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046 A[DONT_GENERATE] */
    @Override // g.deq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzx() {
        zzcpd zzcpdVar;
        try {
            if (((Boolean) zzbel.zze.zze()).booleanValue()) {
                zzbce zzbceVar = zzbcn.zzkM;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    if (this.f7242b.clientJarVersion < ((Integer) edtVar.f15379d.zza(zzbcn.zzkR)).intValue()) {
                    }
                    zzcpdVar = this.f7247g;
                    if (zzcpdVar == null) {
                        zzcpdVar.zzb();
                        return;
                    }
                    return;
                }
            }
            ckd.aj("destroy must be called on the main UI thread.");
            zzcpdVar = this.f7247g;
            if (zzcpdVar == null) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final void zzy(aeh aehVar, gpa gpaVar) {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003d, B:12:0x0041, B:19:0x0038), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b A[DONT_GENERATE] */
    @Override // g.deq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzz() {
        zzcpd zzcpdVar;
        try {
            if (((Boolean) zzbel.zzg.zze()).booleanValue()) {
                zzbce zzbceVar = zzbcn.zzkN;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    if (this.f7242b.clientJarVersion < ((Integer) edtVar.f15379d.zza(zzbcn.zzkR)).intValue()) {
                    }
                    zzcpdVar = this.f7247g;
                    if (zzcpdVar == null) {
                        zzcpdVar.zzn().zzb(null);
                        return;
                    }
                    return;
                }
            }
            ckd.aj("pause must be called on the main UI thread.");
            zzcpdVar = this.f7247g;
            if (zzcpdVar == null) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
