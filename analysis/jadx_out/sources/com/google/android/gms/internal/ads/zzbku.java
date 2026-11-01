package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbku extends zzayc implements zzbkw {
    @Override // com.google.android.gms.internal.ads.zzbkw
    public final zzbkt zze(bjq bjqVar, zzbpg zzbpgVar, int i, zzbkq zzbkqVar) throws RemoteException {
        zzbkt zzbkrVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        zzaye.zzf(r, zzbkqVar);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbkrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzbkrVar = queryLocalInterface instanceof zzbkt ? (zzbkt) queryLocalInterface : new zzbkr(readStrongBinder);
        }
        p.recycle();
        return zzbkrVar;
    }
}
