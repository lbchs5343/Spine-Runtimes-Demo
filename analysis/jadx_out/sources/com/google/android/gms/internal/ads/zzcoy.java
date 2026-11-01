package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import g.agd;
import g.bjq;
import g.bpp;
import g.ckd;
import g.deq;
import g.edt;
import g.gcq;
import g.gwt;

/* loaded from: classes3.dex */
public final class zzcoy extends zzbae {

    /* renamed from: a, reason: collision with root package name */
    public final zzfar f5461a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5462b = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaO)).booleanValue();

    /* renamed from: c, reason: collision with root package name */
    public final zzdsm f5463c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcox f5464d;

    /* renamed from: e, reason: collision with root package name */
    public final deq f5465e;

    public zzcoy(zzcox zzcoxVar, deq deqVar, zzfar zzfarVar, zzdsm zzdsmVar) {
        this.f5464d = zzcoxVar;
        this.f5465e = deqVar;
        this.f5461a = zzfarVar;
        this.f5463c = zzdsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final deq zze() {
        return this.f5465e;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final gcq zzf() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgD)).booleanValue()) {
            return this.f5464d.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzg(boolean z) {
        this.f5462b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzh(gwt gwtVar) {
        ckd.aj("setOnPaidEventListener must be called on the main UI thread.");
        zzfar zzfarVar = this.f5461a;
        if (zzfarVar != null) {
            try {
                if (!gwtVar.zzf()) {
                    this.f5463c.zze();
                }
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
            zzfarVar.zzn(gwtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzi(bjq bjqVar, zzbam zzbamVar) {
        try {
            this.f5461a.zzp(zzbamVar);
            this.f5464d.zzd((Activity) bpp.b(bjqVar), zzbamVar, this.f5462b);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
