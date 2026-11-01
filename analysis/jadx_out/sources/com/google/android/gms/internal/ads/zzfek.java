package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.aeh;
import g.agd;
import g.akx;
import g.bjq;
import g.bpp;
import g.ckd;
import g.eap;
import g.edt;
import g.esy;
import g.gag;
import g.gcq;
import g.giz;
import g.gwt;
import g.ti;

/* loaded from: classes3.dex */
public final class zzfek extends zzbxb {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsm f7827a;

    /* renamed from: b, reason: collision with root package name */
    public final zzavc f7828b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7829c = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaL)).booleanValue();

    /* renamed from: d, reason: collision with root package name */
    public final String f7830d;

    /* renamed from: e, reason: collision with root package name */
    public final zzffg f7831e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f7832f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfeg f7833g;
    public zzdor h;
    public final zzfdw i;
    public final akx j;

    public zzfek(String str, zzfeg zzfegVar, Context context, zzfdw zzfdwVar, zzffg zzffgVar, akx akxVar, zzavc zzavcVar, zzdsm zzdsmVar) {
        this.f7830d = str;
        this.f7833g = zzfegVar;
        this.i = zzfdwVar;
        this.f7831e = zzffgVar;
        this.f7832f = context;
        this.j = akxVar;
        this.f7828b = zzavcVar;
        this.f7827a = zzdsmVar;
    }

    public final synchronized void k(aeh aehVar, zzbxj zzbxjVar, int i) {
        try {
            if (!aehVar.zzb()) {
                boolean z = false;
                if (((Boolean) zzbel.zzk.zze()).booleanValue()) {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                        z = true;
                    }
                }
                if (this.j.clientJarVersion < ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkQ)).intValue() || !z) {
                    ckd.aj("#008 Must be called on the main UI thread.");
                }
            }
            this.i.zzk(zzbxjVar);
            esy esyVar = ti.f20033a.z;
            if (esy.ab(this.f7832f) && aehVar.zzs == null) {
                agd.d("Failed to load the ad because app ID is missing.");
                this.i.zzdB(zzfgq.zzd(4, null, null));
                return;
            }
            if (this.h != null) {
                return;
            }
            zzfdy zzfdyVar = new zzfdy(null);
            this.f7833g.f7814a.zzp().zza(i);
            this.f7833g.zzb(aehVar, this.f7830d, zzfdyVar, new eap(2, this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final Bundle zzb() {
        ckd.aj("#008 Must be called on the main UI thread.");
        zzdor zzdorVar = this.h;
        return zzdorVar != null ? zzdorVar.zza() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final gcq zzc() {
        zzdor zzdorVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgD)).booleanValue() && (zzdorVar = this.h) != null) {
            return zzdorVar.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final zzbwz zzd() {
        ckd.aj("#008 Must be called on the main UI thread.");
        zzdor zzdorVar = this.h;
        if (zzdorVar != null) {
            return zzdorVar.zzc();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final synchronized String zze() throws RemoteException {
        zzdor zzdorVar = this.h;
        if (zzdorVar == null || zzdorVar.zzm() == null) {
            return null;
        }
        return zzdorVar.zzm().zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final synchronized void zzf(aeh aehVar, zzbxj zzbxjVar) throws RemoteException {
        k(aehVar, zzbxjVar, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final synchronized void zzg(aeh aehVar, zzbxj zzbxjVar) throws RemoteException {
        k(aehVar, zzbxjVar, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final synchronized void zzh(boolean z) {
        ckd.aj("setImmersiveMode must be called on the main UI thread.");
        this.f7829c = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzi(gag gagVar) {
        zzfdw zzfdwVar = this.i;
        if (gagVar == null) {
            zzfdwVar.zzg(null);
        } else {
            zzfdwVar.zzg(new giz(this, gagVar, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzj(gwt gwtVar) {
        ckd.aj("setOnPaidEventListener must be called on the main UI thread.");
        try {
            if (!gwtVar.zzf()) {
                this.f7827a.zze();
            }
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
        this.i.zzi(gwtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzk(zzbxf zzbxfVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        this.i.zzj(zzbxfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final synchronized void zzl(zzbxq zzbxqVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        zzffg zzffgVar = this.f7831e;
        zzffgVar.zza = zzbxqVar.zza;
        zzffgVar.zzb = zzbxqVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final synchronized void zzm(bjq bjqVar) throws RemoteException {
        zzn(bjqVar, this.f7829c);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final synchronized void zzn(bjq bjqVar, boolean z) throws RemoteException {
        ckd.aj("#008 Must be called on the main UI thread.");
        if (this.h == null) {
            agd.b("Rewarded can not be shown before loaded");
            this.i.zzq(zzfgq.zzd(9, null, null));
            return;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcS)).booleanValue()) {
            this.f7828b.zzc().zzn(new Throwable().getStackTrace());
        }
        this.h.zzh(z, (Activity) bpp.b(bjqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final boolean zzo() {
        ckd.aj("#008 Must be called on the main UI thread.");
        zzdor zzdorVar = this.h;
        return (zzdorVar == null || zzdorVar.zzf()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzp(zzbxk zzbxkVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        this.i.zzo(zzbxkVar);
    }
}
