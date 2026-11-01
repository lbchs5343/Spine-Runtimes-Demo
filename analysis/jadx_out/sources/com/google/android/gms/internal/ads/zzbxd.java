package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbxd extends zzayc implements zzbxf {
    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zze() throws RemoteException {
        s(r(), 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzf() throws RemoteException {
        s(r(), 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzg() throws RemoteException {
        s(r(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzh(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzi(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzj() throws RemoteException {
        s(r(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzk(zzbwz zzbwzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbwzVar);
        s(r, 3);
    }
}
