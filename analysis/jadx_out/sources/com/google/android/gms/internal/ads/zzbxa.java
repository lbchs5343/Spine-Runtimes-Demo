package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.aeh;
import g.bh;
import g.bjq;
import g.gag;
import g.gcq;
import g.gwt;

/* loaded from: classes3.dex */
public final class zzbxa extends zzayc implements zzbxc {
    public zzbxa(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final Bundle zzb() throws RemoteException {
        Parcel p = p(r(), 9);
        Bundle bundle = (Bundle) zzaye.zza(p, Bundle.CREATOR);
        p.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final gcq zzc() throws RemoteException {
        Parcel p = p(r(), 12);
        gcq zzb = bh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final zzbwz zzd() throws RemoteException {
        zzbwz zzbwxVar;
        Parcel p = p(r(), 11);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzbwxVar = queryLocalInterface instanceof zzbwz ? (zzbwz) queryLocalInterface : new zzbwx(readStrongBinder);
        }
        p.recycle();
        return zzbwxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzf(aeh aehVar, zzbxj zzbxjVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, aehVar);
        zzaye.zzf(r, zzbxjVar);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzg(aeh aehVar, zzbxj zzbxjVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, aehVar);
        zzaye.zzf(r, zzbxjVar);
        s(r, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzh(boolean z) throws RemoteException {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 15);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzi(gag gagVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, gagVar);
        s(r, 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzj(gwt gwtVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, gwtVar);
        s(r, 13);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzk(zzbxf zzbxfVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbxfVar);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzl(zzbxq zzbxqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbxqVar);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzm(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzn(bjq bjqVar, boolean z) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final boolean zzo() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzp(zzbxk zzbxkVar) throws RemoteException {
        throw null;
    }
}
