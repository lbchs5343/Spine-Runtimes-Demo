package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.aeh;
import g.cpj;
import g.ejp;

/* loaded from: classes3.dex */
public final class zzelw extends cpj {

    /* renamed from: a, reason: collision with root package name */
    public final zzend f7240a;

    public zzelw(Context context, zzchk zzchkVar, zzffm zzffmVar, zzdjj zzdjjVar, ejp ejpVar) {
        zzenf zzenfVar = new zzenf(zzdjjVar, zzchkVar.zzj());
        zzenfVar.zze(ejpVar);
        this.f7240a = new zzend(new zzenp(zzchkVar, context, zzenfVar, zzffmVar), zzffmVar.zzL());
    }

    @Override // g.cpu
    public final synchronized String zze() {
        return this.f7240a.zza();
    }

    @Override // g.cpu
    public final synchronized String zzf() {
        return this.f7240a.zzb();
    }

    @Override // g.cpu
    public final void zzg(aeh aehVar) throws RemoteException {
        this.f7240a.zzd(aehVar, 1);
    }

    @Override // g.cpu
    public final synchronized void zzh(aeh aehVar, int i) throws RemoteException {
        this.f7240a.zzd(aehVar, i);
    }

    @Override // g.cpu
    public final synchronized boolean zzi() throws RemoteException {
        return this.f7240a.zze();
    }
}
