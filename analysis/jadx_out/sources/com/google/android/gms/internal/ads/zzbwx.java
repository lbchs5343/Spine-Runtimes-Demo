package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbwx extends zzayc implements zzbwz {
    public zzbwx(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbwz
    public final int zze() throws RemoteException {
        Parcel p = p(r(), 2);
        int readInt = p.readInt();
        p.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbwz
    public final String zzf() throws RemoteException {
        Parcel p = p(r(), 1);
        String readString = p.readString();
        p.recycle();
        return readString;
    }
}
