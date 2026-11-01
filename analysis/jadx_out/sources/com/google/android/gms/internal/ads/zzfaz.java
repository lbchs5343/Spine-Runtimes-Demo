package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import g.aeh;
import g.afk;
import g.agd;
import g.akx;
import g.atu;
import g.bjq;
import g.bzv;
import g.bzx;
import g.cbz;
import g.ckd;
import g.cpm;
import g.cqt;
import g.dyo;
import g.edt;
import g.ejp;
import g.eno;
import g.esy;
import g.fbj;
import g.fim;
import g.fsf;
import g.gb;
import g.gby;
import g.gcq;
import g.gpa;
import g.gwt;
import g.ti;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzfaz extends afk implements fim, zzazz {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsm f7745a;

    /* renamed from: b, reason: collision with root package name */
    public final akx f7746b;

    /* renamed from: c, reason: collision with root package name */
    public zzcok f7747c;

    /* renamed from: e, reason: collision with root package name */
    public zzcox f7749e;

    /* renamed from: f, reason: collision with root package name */
    public final String f7750f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfat f7751g;
    public final zzchk h;
    public final Context j;
    public final zzfar k;

    /* renamed from: d, reason: collision with root package name */
    public AtomicBoolean f7748d = new AtomicBoolean();
    public long i = -1;

    public zzfaz(zzchk zzchkVar, Context context, String str, zzfat zzfatVar, zzfar zzfarVar, akx akxVar, zzdsm zzdsmVar) {
        this.h = zzchkVar;
        this.j = context;
        this.f7750f = str;
        this.f7751g = zzfatVar;
        this.k = zzfarVar;
        this.f7746b = akxVar;
        this.f7745a = zzdsmVar;
        zzfarVar.zzm(this);
    }

    public final synchronized void m(int i) {
        try {
            if (this.f7748d.compareAndSet(false, true)) {
                this.k.zzj();
                zzcok zzcokVar = this.f7747c;
                if (zzcokVar != null) {
                    ti.f20033a.p.zze(zzcokVar);
                }
                if (this.f7749e != null) {
                    long j = -1;
                    if (this.i != -1) {
                        ti.f20033a.v.getClass();
                        j = SystemClock.elapsedRealtime() - this.i;
                    }
                    this.f7749e.zze(j, i);
                }
                zzx();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final synchronized void zzA() {
    }

    @Override // g.deq
    public final synchronized void zzB() {
        ckd.aj("resume must be called on the main UI thread.");
    }

    @Override // g.deq
    public final void zzC(dyo dyoVar) {
    }

    @Override // g.deq
    public final void zzD(ejp ejpVar) {
    }

    @Override // g.deq
    public final void zzE(gb gbVar) {
    }

    @Override // g.deq
    public final synchronized void zzF(eno enoVar) {
        ckd.aj("setAdSize must be called on the main UI thread.");
    }

    @Override // g.deq
    public final void zzG(fbj fbjVar) {
    }

    @Override // g.deq
    public final void zzH(zzbai zzbaiVar) {
        this.k.zzo(zzbaiVar);
    }

    @Override // g.deq
    public final void zzI(gby gbyVar) {
        this.f7751g.zzl(gbyVar);
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
    }

    @Override // g.deq
    public final synchronized void zzO(zzbdi zzbdiVar) {
    }

    @Override // g.deq
    public final void zzP(gwt gwtVar) {
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
    }

    @Override // g.deq
    public final void zzW(bjq bjqVar) {
    }

    @Override // g.deq
    public final synchronized void zzX() {
    }

    @Override // g.deq
    public final synchronized boolean zzY() {
        return false;
    }

    @Override // g.deq
    public final synchronized boolean zzZ() {
        return this.f7751g.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzazz
    public final void zza() {
        m(3);
    }

    @Override // g.deq
    public final boolean zzaa() {
        return false;
    }

    @Override // g.deq
    public final synchronized boolean zzab(aeh aehVar) throws RemoteException {
        boolean z;
        try {
            if (!aehVar.zzb()) {
                if (((Boolean) zzbel.zzd.zze()).booleanValue()) {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                        z = true;
                        if (this.f7746b.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue() || !z) {
                            ckd.aj("loadAd must be called on the main UI thread.");
                        }
                    }
                }
                z = false;
                if (this.f7746b.clientJarVersion >= ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue()) {
                }
                ckd.aj("loadAd must be called on the main UI thread.");
            }
            esy esyVar = ti.f20033a.z;
            if (esy.ab(this.j) && aehVar.zzs == null) {
                agd.d("Failed to load the ad because app ID is missing.");
                this.k.zzdB(zzfgq.zzd(4, null, null));
                return false;
            }
            if (zzZ()) {
                return false;
            }
            this.f7748d = new AtomicBoolean();
            return this.f7751g.zzb(aehVar, this.f7750f, new cqt(), new bzv(2, this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.deq
    public final synchronized void zzac(atu atuVar) {
    }

    @Override // g.deq
    public final Bundle zzd() {
        return new Bundle();
    }

    @Override // g.fim
    public final void zzdH() {
    }

    @Override // g.fim
    public final void zzdk() {
    }

    @Override // g.fim
    public final void zzdq() {
    }

    @Override // g.fim
    public final synchronized void zzdr() {
        if (this.f7749e != null) {
            ti tiVar = ti.f20033a;
            tiVar.v.getClass();
            this.i = SystemClock.elapsedRealtime();
            int zza = this.f7749e.zza();
            if (zza > 0) {
                zzcok zzcokVar = new zzcok(this.h.zzD(), tiVar.v);
                this.f7747c = zzcokVar;
                zzcokVar.zzd(zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzfaw
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfaz.this.zzp();
                    }
                });
            }
        }
    }

    @Override // g.fim
    public final synchronized void zzdt() {
        zzcox zzcoxVar = this.f7749e;
        if (zzcoxVar != null) {
            ti.f20033a.v.getClass();
            zzcoxVar.zze(SystemClock.elapsedRealtime() - this.i, 1);
        }
    }

    @Override // g.fim
    public final void zzdu(int i) {
        if (i == 0) {
            throw null;
        }
        int i2 = i - 1;
        if (i2 == 0) {
            m(2);
            return;
        }
        if (i2 == 1) {
            m(4);
        } else if (i2 != 2) {
            m(6);
        } else {
            m(3);
        }
    }

    @Override // g.deq
    public final synchronized eno zzg() {
        return null;
    }

    @Override // g.deq
    public final ejp zzi() {
        return null;
    }

    @Override // g.deq
    public final fbj zzj() {
        return null;
    }

    @Override // g.deq
    public final synchronized gcq zzk() {
        return null;
    }

    @Override // g.deq
    public final synchronized cbz zzl() {
        return null;
    }

    @Override // g.deq
    public final bjq zzn() {
        return null;
    }

    public final void zzp() {
        this.h.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfav
            @Override // java.lang.Runnable
            public final void run() {
                zzfaz.this.m(5);
            }
        });
    }

    @Override // g.deq
    public final synchronized String zzr() {
        return this.f7750f;
    }

    @Override // g.deq
    public final synchronized String zzs() {
        return null;
    }

    @Override // g.deq
    public final synchronized String zzt() {
        return null;
    }

    @Override // g.deq
    public final synchronized void zzx() {
        ckd.aj("destroy must be called on the main UI thread.");
        zzcox zzcoxVar = this.f7749e;
        if (zzcoxVar != null) {
            zzcoxVar.zzb();
        }
    }

    @Override // g.deq
    public final void zzy(aeh aehVar, gpa gpaVar) {
    }

    @Override // g.deq
    public final synchronized void zzz() {
        ckd.aj("pause must be called on the main UI thread.");
    }
}
