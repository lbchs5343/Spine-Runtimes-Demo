package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.agd;
import g.ao;
import g.bmt;
import g.bof;
import g.bpp;
import g.cbv;
import g.coc;
import g.dhb;
import g.dpt;
import g.dyi;
import g.eks;
import g.fas;
import g.fmh;
import g.fqz;
import g.gci;
import g.gcq;
import g.gsq;
import g.ph;
import g.qo;

/* loaded from: classes3.dex */
public final class zzbxw extends eks {

    /* renamed from: a, reason: collision with root package name */
    public final zzbxu f5049a;

    /* renamed from: b, reason: collision with root package name */
    public fas f5050b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5051c;

    /* renamed from: d, reason: collision with root package name */
    public dhb f5052d;

    /* renamed from: e, reason: collision with root package name */
    public final zzbxc f5053e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f5054f;

    /* renamed from: g, reason: collision with root package name */
    public final long f5055g = System.currentTimeMillis();

    public zzbxw(Context context, String str) {
        this.f5051c = str;
        this.f5054f = context.getApplicationContext();
        ph phVar = cbv.f12612a.f12616e;
        zzbpc zzbpcVar = new zzbpc();
        phVar.getClass();
        this.f5053e = (zzbxc) new gci(context, str, zzbpcVar).j(context, false);
        this.f5049a = new zzbxu();
    }

    public final Bundle getAdMetadata() {
        try {
            zzbxc zzbxcVar = this.f5053e;
            if (zzbxcVar != null) {
                return zzbxcVar.zzb();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        return new Bundle();
    }

    public final String getAdUnitId() {
        return this.f5051c;
    }

    public final fas getFullScreenContentCallback() {
        return this.f5050b;
    }

    public final dhb getOnAdMetadataChangedListener() {
        return this.f5052d;
    }

    public final dpt getOnPaidEventListener() {
        return null;
    }

    @Override // g.eks
    public final bof getResponseInfo() {
        gcq gcqVar = null;
        try {
            zzbxc zzbxcVar = this.f5053e;
            if (zzbxcVar != null) {
                gcqVar = zzbxcVar.zzc();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        return new bof(gcqVar);
    }

    public final coc getRewardItem() {
        try {
            zzbxc zzbxcVar = this.f5053e;
            zzbwz zzd = zzbxcVar != null ? zzbxcVar.zzd() : null;
            if (zzd != null) {
                return new zzbxm(zzd);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        return coc.f13215ab;
    }

    public final void setFullScreenContentCallback(fas fasVar) {
        this.f5050b = fasVar;
        this.f5049a.zzb(fasVar);
    }

    public final void setImmersiveMode(boolean z) {
        try {
            zzbxc zzbxcVar = this.f5053e;
            if (zzbxcVar != null) {
                zzbxcVar.zzh(z);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setOnAdMetadataChangedListener(dhb dhbVar) {
        this.f5052d = dhbVar;
        try {
            zzbxc zzbxcVar = this.f5053e;
            if (zzbxcVar != null) {
                zzbxcVar.zzi(new dyi(dhbVar));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setOnPaidEventListener(dpt dptVar) {
        try {
            zzbxc zzbxcVar = this.f5053e;
            if (zzbxcVar != null) {
                zzbxcVar.zzj(new bmt());
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setServerSideVerificationOptions(fmh fmhVar) {
        try {
            zzbxc zzbxcVar = this.f5053e;
            if (zzbxcVar != null) {
                zzbxcVar.zzl(new zzbxq(fmhVar));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eks
    public final void show(Activity activity, fqz fqzVar) {
        zzbxu zzbxuVar = this.f5049a;
        zzbxuVar.zzc(fqzVar);
        zzbxc zzbxcVar = this.f5053e;
        if (zzbxcVar != null) {
            try {
                zzbxcVar.zzk(zzbxuVar);
                zzbxcVar.zzm(new bpp(activity));
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
    }

    public final void zza(qo qoVar, gsq gsqVar) {
        try {
            zzbxc zzbxcVar = this.f5053e;
            if (zzbxcVar != null) {
                qoVar.h = this.f5055g;
                zzbxcVar.zzg(ao.ai(this.f5054f, qoVar), new zzbxv(gsqVar, this));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
