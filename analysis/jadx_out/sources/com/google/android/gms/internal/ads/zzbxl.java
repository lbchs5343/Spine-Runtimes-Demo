package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.agd;
import g.ao;
import g.bli;
import g.bmt;
import g.bof;
import g.bpp;
import g.byk;
import g.cbv;
import g.coc;
import g.dhb;
import g.dpt;
import g.dth;
import g.dyi;
import g.dzg;
import g.fas;
import g.fmh;
import g.fqz;
import g.gci;
import g.gcq;
import g.ph;
import g.qo;

/* loaded from: classes3.dex */
public final class zzbxl extends dth {

    /* renamed from: a, reason: collision with root package name */
    public final long f5032a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbxu f5033b;

    /* renamed from: c, reason: collision with root package name */
    public dzg f5034c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5035d;

    /* renamed from: e, reason: collision with root package name */
    public dhb f5036e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f5037f;

    /* renamed from: g, reason: collision with root package name */
    public final zzbxc f5038g;
    public final Context h;
    public fas i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbxl(Context context, String str) {
        this(r0, str, (zzbxc) new gci(context, str, r2).j(context, false), new zzbxu());
        Context applicationContext = context.getApplicationContext();
        ph phVar = cbv.f12612a.f12616e;
        zzbpc zzbpcVar = new zzbpc();
        phVar.getClass();
    }

    public zzbxl(Context context, String str, zzbxc zzbxcVar, zzbxu zzbxuVar) {
        this.f5032a = System.currentTimeMillis();
        this.f5037f = new Object();
        this.h = context.getApplicationContext();
        this.f5035d = str;
        this.f5038g = zzbxcVar;
        this.f5033b = zzbxuVar;
    }

    public final Bundle getAdMetadata() {
        try {
            zzbxc zzbxcVar = this.f5038g;
            if (zzbxcVar != null) {
                return zzbxcVar.zzb();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        return new Bundle();
    }

    public final String getAdUnitId() {
        return this.f5035d;
    }

    public final fas getFullScreenContentCallback() {
        return this.i;
    }

    public final dhb getOnAdMetadataChangedListener() {
        return this.f5036e;
    }

    public final dpt getOnPaidEventListener() {
        return null;
    }

    @Override // g.dth
    public final bof getResponseInfo() {
        gcq gcqVar = null;
        try {
            zzbxc zzbxcVar = this.f5038g;
            if (zzbxcVar != null) {
                gcqVar = zzbxcVar.zzc();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        return new bof(gcqVar);
    }

    public final coc getRewardItem() {
        bli bliVar = coc.f13215ab;
        try {
            zzbxc zzbxcVar = this.f5038g;
            zzbwz zzd = zzbxcVar != null ? zzbxcVar.zzd() : null;
            return zzd == null ? bliVar : new zzbxm(zzd);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return bliVar;
        }
    }

    public final void j(Context context, zzbpc zzbpcVar) {
        synchronized (this.f5037f) {
            try {
                if (this.f5034c == null) {
                    this.f5034c = cbv.f12612a.f12616e.k(context, zzbpcVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setFullScreenContentCallback(fas fasVar) {
        this.i = fasVar;
        this.f5033b.zzb(fasVar);
    }

    public final void setImmersiveMode(boolean z) {
        try {
            zzbxc zzbxcVar = this.f5038g;
            if (zzbxcVar != null) {
                zzbxcVar.zzh(z);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setOnAdMetadataChangedListener(dhb dhbVar) {
        try {
            this.f5036e = dhbVar;
            zzbxc zzbxcVar = this.f5038g;
            if (zzbxcVar != null) {
                zzbxcVar.zzi(new dyi(dhbVar));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setOnPaidEventListener(dpt dptVar) {
        try {
            zzbxc zzbxcVar = this.f5038g;
            if (zzbxcVar != null) {
                zzbxcVar.zzj(new bmt());
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setServerSideVerificationOptions(fmh fmhVar) {
    }

    @Override // g.dth
    public final void show(Activity activity, fqz fqzVar) {
        zzbxu zzbxuVar = this.f5033b;
        zzbxuVar.zzc(fqzVar);
        if (activity == null) {
            agd.b("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        zzbxc zzbxcVar = this.f5038g;
        if (zzbxcVar != null) {
            try {
                zzbxcVar.zzk(zzbxuVar);
                zzbxcVar.zzm(new bpp(activity));
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
    }

    public final dth zza() {
        String str = this.f5035d;
        Context context = this.h;
        try {
            j(context, new zzbpc());
            zzbxc zzg = this.f5034c.zzg(str);
            if (zzg != null) {
                return new zzbxl(context, str, zzg, this.f5033b);
            }
            agd.g("Failed to obtain a Rewarded Ad from the preloader.", null);
            return null;
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public final void zzb(qo qoVar, byk bykVar) {
        try {
            zzbxc zzbxcVar = this.f5038g;
            if (zzbxcVar != null) {
                qoVar.h = this.f5032a;
                zzbxcVar.zzf(ao.ai(this.h, qoVar), new zzbxp(bykVar, this));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final boolean zzc() {
        try {
            j(this.h, new zzbpc());
            return this.f5034c.zzl(this.f5035d);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return false;
        }
    }
}
