package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.ckd;
import g.coc;
import g.ezz;

/* loaded from: classes3.dex */
public final class zzbxs {

    /* renamed from: a, reason: collision with root package name */
    public final zzbpm f5042a;

    public zzbxs(zzbpm zzbpmVar) {
        this.f5042a = zzbpmVar;
    }

    public final void onAdClosed() {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdClosed.");
        try {
            this.f5042a.zzf();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdFailedToShow(ezz ezzVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToShow.");
        agd.b("Mediation ad failed to show: Error Code = " + ezzVar.g() + ". Error Message = " + ezzVar.f16448e + " Error Domain = " + ezzVar.f16449f);
        try {
            this.f5042a.zzk(ezzVar.h());
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdFailedToShow(String str) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToShow.");
        agd.b("Mediation ad failed to show: ".concat(String.valueOf(str)));
        try {
            this.f5042a.zzl(str);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdOpened() {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdOpened.");
        try {
            this.f5042a.zzp();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onUserEarnedReward(coc cocVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onUserEarnedReward.");
        try {
            this.f5042a.zzt(new zzbxt(cocVar));
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onVideoComplete() {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onVideoComplete.");
        try {
            this.f5042a.zzu();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onVideoStart() {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onVideoStart.");
        try {
            this.f5042a.zzy();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void reportAdClicked() {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called reportAdClicked.");
        try {
            this.f5042a.zze();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void reportAdImpression() {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called reportAdImpression.");
        try {
            this.f5042a.zzm();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
