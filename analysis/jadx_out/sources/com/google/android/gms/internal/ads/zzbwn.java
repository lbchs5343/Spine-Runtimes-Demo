package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbwn extends zzayc implements zzbwp {
    public zzbwn(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zze(zzbwj zzbwjVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbwjVar);
        s(r, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzf() throws RemoteException {
        s(r(), 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzg(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzh() throws RemoteException {
        s(r(), 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzi() throws RemoteException {
        s(r(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzj() throws RemoteException {
        s(r(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzk() throws RemoteException {
        s(r(), 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzl() throws RemoteException {
        s(r(), 3);
    }
}
