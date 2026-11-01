package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.aeh;
import g.agd;
import g.fnq;

/* loaded from: classes3.dex */
public final class zzend {

    /* renamed from: a, reason: collision with root package name */
    public final zzeni f7279a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7280b;

    /* renamed from: c, reason: collision with root package name */
    public zzcwf f7281c;

    public zzend(zzeni zzeniVar, String str) {
        this.f7279a = zzeniVar;
        this.f7280b = str;
    }

    public final synchronized String zza() {
        zzcwf zzcwfVar;
        try {
            zzcwfVar = this.f7281c;
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return null;
        }
        return zzcwfVar != null ? zzcwfVar.zzg() : null;
    }

    public final synchronized String zzb() {
        zzcwf zzcwfVar;
        try {
            zzcwfVar = this.f7281c;
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return null;
        }
        return zzcwfVar != null ? zzcwfVar.zzg() : null;
    }

    public final synchronized void zzd(aeh aehVar, int i) throws RemoteException {
        this.f7281c = null;
        zzenj zzenjVar = new zzenj(i);
        fnq fnqVar = new fnq(28, this);
        this.f7279a.zzb(aehVar, this.f7280b, zzenjVar, fnqVar);
    }

    public final synchronized boolean zze() throws RemoteException {
        return this.f7279a.zza();
    }
}
