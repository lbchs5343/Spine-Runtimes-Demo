package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbvd extends zzayc implements zzbvf {
    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zze(zzbvx zzbvxVar, zzbvp zzbvpVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbvxVar);
        zzaye.zzf(r, zzbvpVar);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzf(zzbvx zzbvxVar, zzbvp zzbvpVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbvxVar);
        zzaye.zzf(r, zzbvpVar);
        s(r, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzg(zzbvx zzbvxVar, zzbvp zzbvpVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbvxVar);
        zzaye.zzf(r, zzbvpVar);
        s(r, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzh(String str, zzbvp zzbvpVar) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        zzaye.zzf(r, zzbvpVar);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzi(zzbuz zzbuzVar, zzbvq zzbvqVar) throws RemoteException {
        throw null;
    }
}
