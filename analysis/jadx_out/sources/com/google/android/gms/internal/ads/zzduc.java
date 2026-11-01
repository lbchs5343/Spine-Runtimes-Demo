package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.aeh;
import g.agd;
import g.bpp;
import g.bwx;
import g.dof;
import g.eef;

/* loaded from: classes3.dex */
public final class zzduc implements bwx {

    /* renamed from: a, reason: collision with root package name */
    public final long f6515a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdtr f6516b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfek f6517c;

    public zzduc(long j, Context context, zzdtr zzdtrVar, zzchk zzchkVar, String str) {
        this.f6515a = j;
        this.f6516b = zzdtrVar;
        zzfem zzw = zzchkVar.zzw();
        zzw.mo18zzb(context);
        zzw.mo17zza(str);
        this.f6517c = zzw.mo19zzc().zza();
    }

    @Override // g.bwx
    public final void zza() {
    }

    @Override // g.bwx
    public final void zzb(aeh aehVar) {
        try {
            this.f6517c.zzf(aehVar, new dof(this));
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.bwx
    public final void zzc() {
        zzfek zzfekVar = this.f6517c;
        try {
            zzfekVar.zzk(new eef(this));
            zzfekVar.zzm(new bpp(null));
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
