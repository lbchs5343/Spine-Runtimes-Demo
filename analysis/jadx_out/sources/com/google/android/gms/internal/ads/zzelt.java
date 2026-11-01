package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import g.aeh;
import g.afk;
import g.agd;
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

/* loaded from: classes3.dex */
public final class zzelt extends afk {

    /* renamed from: a, reason: collision with root package name */
    public final zzffo f7224a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcpd f7225b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f7226c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7227d;

    /* renamed from: e, reason: collision with root package name */
    public final ejp f7228e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdsm f7229f;

    public zzelt(Context context, ejp ejpVar, zzffo zzffoVar, zzcpd zzcpdVar, zzdsm zzdsmVar) {
        this.f7227d = context;
        this.f7228e = ejpVar;
        this.f7224a = zzffoVar;
        this.f7225b = zzcpdVar;
        this.f7229f = zzdsmVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        View zzd = zzcpdVar.zzd();
        esy esyVar = ti.f20033a.z;
        frameLayout.addView(zzd, new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setMinimumHeight(zzg().zzc);
        frameLayout.setMinimumWidth(zzg().zzf);
        this.f7226c = frameLayout;
    }

    @Override // g.deq
    public final void zzA() throws RemoteException {
        this.f7225b.zzh();
    }

    @Override // g.deq
    public final void zzB() throws RemoteException {
        ckd.aj("destroy must be called on the main UI thread.");
        this.f7225b.zzn().zzc(null);
    }

    @Override // g.deq
    public final void zzC(dyo dyoVar) throws RemoteException {
        agd.k("setAdClickListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // g.deq
    public final void zzD(ejp ejpVar) throws RemoteException {
        agd.k("setAdListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // g.deq
    public final void zzE(gb gbVar) throws RemoteException {
        agd.k("setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // g.deq
    public final void zzF(eno enoVar) throws RemoteException {
        ckd.aj("setAdSize must be called on the main UI thread.");
        zzcpd zzcpdVar = this.f7225b;
        if (zzcpdVar != null) {
            zzcpdVar.zzi(this.f7226c, enoVar);
        }
    }

    @Override // g.deq
    public final void zzG(fbj fbjVar) throws RemoteException {
        zzems zzemsVar = this.f7224a.zzc;
        if (zzemsVar != null) {
            zzemsVar.zzm(fbjVar);
        }
    }

    @Override // g.deq
    public final void zzH(zzbai zzbaiVar) throws RemoteException {
    }

    @Override // g.deq
    public final void zzI(gby gbyVar) throws RemoteException {
    }

    @Override // g.deq
    public final void zzJ(bzx bzxVar) {
    }

    @Override // g.deq
    public final void zzK(fsf fsfVar) throws RemoteException {
    }

    @Override // g.deq
    public final void zzL(boolean z) throws RemoteException {
    }

    @Override // g.deq
    public final void zzM(zzbtp zzbtpVar) throws RemoteException {
    }

    @Override // g.deq
    public final void zzN(boolean z) throws RemoteException {
        agd.k("setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // g.deq
    public final void zzO(zzbdi zzbdiVar) throws RemoteException {
        agd.k("setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // g.deq
    public final void zzP(gwt gwtVar) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzll)).booleanValue()) {
            agd.k("setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader.");
            return;
        }
        zzems zzemsVar = this.f7224a.zzc;
        if (zzemsVar != null) {
            try {
                if (!gwtVar.zzf()) {
                    this.f7229f.zze();
                }
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
            zzemsVar.zzl(gwtVar);
        }
    }

    @Override // g.deq
    public final void zzQ(zzbts zzbtsVar, String str) throws RemoteException {
    }

    @Override // g.deq
    public final void zzR(String str) throws RemoteException {
    }

    @Override // g.deq
    public final void zzS(zzbwp zzbwpVar) throws RemoteException {
    }

    @Override // g.deq
    public final void zzT(String str) throws RemoteException {
    }

    @Override // g.deq
    public final void zzU(cpm cpmVar) throws RemoteException {
        agd.k("setVideoOptions is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // g.deq
    public final void zzW(bjq bjqVar) {
    }

    @Override // g.deq
    public final void zzX() throws RemoteException {
    }

    @Override // g.deq
    public final boolean zzY() throws RemoteException {
        zzcpd zzcpdVar = this.f7225b;
        return zzcpdVar != null && zzcpdVar.zzs();
    }

    @Override // g.deq
    public final boolean zzZ() throws RemoteException {
        return false;
    }

    @Override // g.deq
    public final boolean zzaa() throws RemoteException {
        return false;
    }

    @Override // g.deq
    public final boolean zzab(aeh aehVar) throws RemoteException {
        agd.k("loadAd is not supported for an Ad Manager AdView returned from AdLoader.");
        return false;
    }

    @Override // g.deq
    public final void zzac(atu atuVar) throws RemoteException {
        agd.k("setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // g.deq
    public final Bundle zzd() throws RemoteException {
        agd.k("getAdMetadata is not supported in Ad Manager AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // g.deq
    public final eno zzg() {
        ckd.aj("getAdSize must be called on the main UI thread.");
        return zzffu.zza(this.f7227d, Collections.singletonList(this.f7225b.zzf()));
    }

    @Override // g.deq
    public final ejp zzi() throws RemoteException {
        return this.f7228e;
    }

    @Override // g.deq
    public final fbj zzj() throws RemoteException {
        return this.f7224a.zzn;
    }

    @Override // g.deq
    public final gcq zzk() {
        return this.f7225b.zzm();
    }

    @Override // g.deq
    public final cbz zzl() throws RemoteException {
        return this.f7225b.zze();
    }

    @Override // g.deq
    public final bjq zzn() throws RemoteException {
        return new bpp(this.f7226c);
    }

    @Override // g.deq
    public final String zzr() throws RemoteException {
        return this.f7224a.zzf;
    }

    @Override // g.deq
    public final String zzs() throws RemoteException {
        zzcpd zzcpdVar = this.f7225b;
        if (zzcpdVar.zzm() != null) {
            return zzcpdVar.zzm().zzg();
        }
        return null;
    }

    @Override // g.deq
    public final String zzt() throws RemoteException {
        zzcpd zzcpdVar = this.f7225b;
        if (zzcpdVar.zzm() != null) {
            return zzcpdVar.zzm().zzg();
        }
        return null;
    }

    @Override // g.deq
    public final void zzx() throws RemoteException {
        ckd.aj("destroy must be called on the main UI thread.");
        this.f7225b.zzb();
    }

    @Override // g.deq
    public final void zzy(aeh aehVar, gpa gpaVar) {
    }

    @Override // g.deq
    public final void zzz() throws RemoteException {
        ckd.aj("destroy must be called on the main UI thread.");
        this.f7225b.zzn().zzb(null);
    }
}
