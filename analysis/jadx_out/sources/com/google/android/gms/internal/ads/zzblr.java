package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzblr extends zzayc implements zzblt {
    @Override // com.google.android.gms.internal.ads.zzblt
    public final void zze(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzblt
    public final void zzf() throws RemoteException {
        s(r(), 2);
    }
}
