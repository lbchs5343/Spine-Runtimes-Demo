package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbha extends zzayc implements zzbhc {
    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zze(zzbgs zzbgsVar, String str) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbgsVar);
        r.writeString(str);
        s(r, 1);
    }
}
