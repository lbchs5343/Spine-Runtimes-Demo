package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.MobileAds;
import g.agd;
import g.alu;
import g.ao;
import g.ban;
import g.bfi;
import g.bmt;
import g.bof;
import g.bpp;
import g.cbv;
import g.deq;
import g.df;
import g.dnv;
import g.dpt;
import g.eno;
import g.eus;
import g.ezj;
import g.fas;
import g.gcq;
import g.ph;
import g.qo;

/* loaded from: classes3.dex */
public final class zzbml extends ban {

    /* renamed from: a, reason: collision with root package name */
    public final String f4873a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4874b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4875c;

    /* renamed from: d, reason: collision with root package name */
    public eus f4876d;

    /* renamed from: e, reason: collision with root package name */
    public final ao f4877e;

    /* renamed from: f, reason: collision with root package name */
    public final deq f4878f;

    /* renamed from: g, reason: collision with root package name */
    public fas f4879g;

    public zzbml(Context context, String str) {
        zzbpc zzbpcVar = new zzbpc();
        this.f4874b = System.currentTimeMillis();
        this.f4875c = context;
        this.f4873a = str;
        this.f4877e = ao.af;
        ph phVar = cbv.f12612a.f12616e;
        eno enoVar = new eno();
        phVar.getClass();
        this.f4878f = (deq) new ezj(phVar, context, enoVar, str, zzbpcVar).j(context, false);
    }

    public zzbml(Context context, String str, deq deqVar) {
        new zzbpc();
        this.f4874b = System.currentTimeMillis();
        this.f4875c = context;
        this.f4873a = str;
        this.f4877e = ao.af;
        this.f4878f = deqVar;
    }

    public final String getAdUnitId() {
        return this.f4873a;
    }

    public final eus getAppEventListener() {
        return this.f4876d;
    }

    public final fas getFullScreenContentCallback() {
        return this.f4879g;
    }

    public final dpt getOnPaidEventListener() {
        return null;
    }

    @Override // g.eti
    public final bof getResponseInfo() {
        gcq gcqVar = null;
        try {
            deq deqVar = this.f4878f;
            if (deqVar != null) {
                gcqVar = deqVar.zzk();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        return new bof(gcqVar);
    }

    public final void setAppEventListener(eus eusVar) {
        try {
            this.f4876d = eusVar;
            deq deqVar = this.f4878f;
            if (deqVar != null) {
                deqVar.zzG(eusVar != null ? new zzaza(eusVar) : null);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eti
    public final void setFullScreenContentCallback(fas fasVar) {
        try {
            this.f4879g = fasVar;
            deq deqVar = this.f4878f;
            if (deqVar != null) {
                deqVar.zzJ(new dnv(fasVar));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eti
    public final void setImmersiveMode(boolean z) {
        try {
            deq deqVar = this.f4878f;
            if (deqVar != null) {
                deqVar.zzL(z);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setOnPaidEventListener(dpt dptVar) {
        try {
            deq deqVar = this.f4878f;
            if (deqVar != null) {
                deqVar.zzP(new bmt());
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eti
    public final void show(Activity activity) {
        if (activity == null) {
            agd.b("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            deq deqVar = this.f4878f;
            if (deqVar != null) {
                deqVar.zzW(new bpp(activity));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void zza(qo qoVar, df dfVar) {
        try {
            deq deqVar = this.f4878f;
            if (deqVar != null) {
                qoVar.h = this.f4874b;
                ao aoVar = this.f4877e;
                Context context = this.f4875c;
                aoVar.getClass();
                deqVar.zzy(ao.ai(context, qoVar), new alu(dfVar, this));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            dfVar.c(new bfi(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }
}
