package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbxh extends zzayc implements zzbxj {
    public zzbxh(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zze(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzf(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzg() throws RemoteException {
        s(r(), 1);
    }
}
