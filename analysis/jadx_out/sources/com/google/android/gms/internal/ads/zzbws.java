package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbws extends zzayc implements zzbwu {
    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zze(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzf(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzg(bjq bjqVar, int i) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeInt(i);
        s(r, 9);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzh(bjq bjqVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzi(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzj(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzk(bjq bjqVar, int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzl(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzm(bjq bjqVar, zzbwv zzbwvVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, zzbwvVar);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzn(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 11);
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final void zzo(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 5);
    }
}
