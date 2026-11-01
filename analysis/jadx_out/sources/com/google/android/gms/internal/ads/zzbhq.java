package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbhq extends zzayc implements zzbhs {
    @Override // com.google.android.gms.internal.ads.zzbhs
    public final void zze() throws RemoteException {
        s(r(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbhs
    public final void zzf(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 1);
    }
}
