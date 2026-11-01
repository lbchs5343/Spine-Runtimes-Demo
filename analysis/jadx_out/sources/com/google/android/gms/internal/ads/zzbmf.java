package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbmf extends zzayc implements zzbmh {
    @Override // com.google.android.gms.internal.ads.zzbmh
    public final void zze(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmh
    public final void zzf() throws RemoteException {
        s(r(), 1);
    }
}
