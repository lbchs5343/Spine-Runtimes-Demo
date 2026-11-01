package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bh;
import g.bjq;
import g.deq;
import g.gcq;
import g.gwt;

/* loaded from: classes3.dex */
public final class zzbad extends zzayc implements zzbaf {
    public zzbad(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final deq zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final gcq zzf() throws RemoteException {
        Parcel p = p(r(), 5);
        gcq zzb = bh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzg(boolean z) throws RemoteException {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzh(gwt gwtVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, gwtVar);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzi(bjq bjqVar, zzbam zzbamVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbamVar);
        s(r, 4);
    }
}
