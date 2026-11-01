package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbkr extends zzayc implements zzbkt {
    public zzbkr(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsManager", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbkt
    public final void zze() throws RemoteException {
        s(r(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbkt
    public final void zzf(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 1);
    }
}
