package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.bjq;
import g.bpp;
import g.ckd;
import g.ecv;
import g.edt;
import g.gb;
import g.gcq;
import g.giz;
import g.ti;

/* loaded from: classes3.dex */
public final class zzfeq extends zzbwl {

    /* renamed from: a, reason: collision with root package name */
    public final zzffg f7841a;

    /* renamed from: b, reason: collision with root package name */
    public zzdor f7842b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7843c = false;

    /* renamed from: d, reason: collision with root package name */
    public final zzfeg f7844d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfdw f7845e;

    public zzfeq(zzfeg zzfegVar, zzfdw zzfdwVar, zzffg zzffgVar) {
        this.f7844d = zzfegVar;
        this.f7845e = zzfdwVar;
        this.f7841a = zzffgVar;
    }

    public final synchronized boolean f() {
        zzdor zzdorVar = this.f7842b;
        if (zzdorVar != null) {
            if (!zzdorVar.zze()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final Bundle zzb() {
        ckd.aj("getAdMetadata can only be called from the UI thread.");
        zzdor zzdorVar = this.f7842b;
        return zzdorVar != null ? zzdorVar.zza() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized gcq zzc() throws RemoteException {
        zzdor zzdorVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgD)).booleanValue() && (zzdorVar = this.f7842b) != null) {
            return zzdorVar.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized String zzd() throws RemoteException {
        zzdor zzdorVar = this.f7842b;
        if (zzdorVar == null || zzdorVar.zzm() == null) {
            return null;
        }
        return zzdorVar.zzm().zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zze() throws RemoteException {
        zzf(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzf(bjq bjqVar) {
        ckd.aj("destroy must be called on the main UI thread.");
        Context context = null;
        this.f7845e.zzg(null);
        if (this.f7842b != null) {
            if (bjqVar != null) {
                context = (Context) bpp.b(bjqVar);
            }
            this.f7842b.zzn().zza(context);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0045, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzfs)).booleanValue() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
    
        if (java.util.regex.Pattern.matches(r1, r0) != false) goto L18;
     */
    @Override // com.google.android.gms.internal.ads.zzbwm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzg(zzbwq zzbwqVar) throws RemoteException {
        ckd.aj("loadAd must be called on the main UI thread.");
        String str = zzbwqVar.zzb;
        String str2 = (String) edt.f15376a.f15379d.zza(zzbcn.zzfq);
        if (str2 != null && str != null) {
            try {
            } catch (RuntimeException e2) {
                ti.f20033a.f20034ab.zzw(e2, "NonagonUtil.isPatternMatched");
            }
        }
        if (f()) {
        }
        zzfdy zzfdyVar = new zzfdy(null);
        this.f7842b = null;
        this.f7844d.f7814a.zzp().zza(1);
        this.f7844d.zzb(zzbwqVar.zza, zzbwqVar.zzb, zzfdyVar, new ecv(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzh() {
        zzi(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzi(bjq bjqVar) {
        ckd.aj("pause must be called on the main UI thread.");
        if (this.f7842b != null) {
            this.f7842b.zzn().zzb(bjqVar == null ? null : (Context) bpp.b(bjqVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzj() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzk(bjq bjqVar) {
        ckd.aj("resume must be called on the main UI thread.");
        if (this.f7842b != null) {
            this.f7842b.zzn().zzc(bjqVar == null ? null : (Context) bpp.b(bjqVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzl(gb gbVar) {
        ckd.aj("setAdMetadataListener can only be called from the UI thread.");
        zzfdw zzfdwVar = this.f7845e;
        if (gbVar == null) {
            zzfdwVar.zzg(null);
        } else {
            zzfdwVar.zzg(new giz(this, gbVar, 1));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzm(String str) throws RemoteException {
        ckd.aj("#008 Must be called on the main UI thread.: setCustomData");
        this.f7841a.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzn(boolean z) {
        ckd.aj("setImmersiveMode must be called on the main UI thread.");
        this.f7843c = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzo(zzbwp zzbwpVar) throws RemoteException {
        ckd.aj("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f7845e.zzm(zzbwpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzp(String str) throws RemoteException {
        ckd.aj("setUserId must be called on the main UI thread.");
        this.f7841a.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzq() throws RemoteException {
        zzr(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final synchronized void zzr(bjq bjqVar) throws RemoteException {
        try {
            ckd.aj("showAd must be called on the main UI thread.");
            if (this.f7842b != null) {
                Activity activity = null;
                if (bjqVar != null) {
                    Object b2 = bpp.b(bjqVar);
                    if (b2 instanceof Activity) {
                        activity = (Activity) b2;
                    }
                }
                this.f7842b.zzh(this.f7843c, activity);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final boolean zzs() throws RemoteException {
        ckd.aj("isLoaded must be called on the main UI thread.");
        return f();
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final boolean zzt() {
        zzdor zzdorVar = this.f7842b;
        return zzdorVar != null && zzdorVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzu(zzbwk zzbwkVar) {
        ckd.aj("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f7845e.zzn(zzbwkVar);
    }
}
