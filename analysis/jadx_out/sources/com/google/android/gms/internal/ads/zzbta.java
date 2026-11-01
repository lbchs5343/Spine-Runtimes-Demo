package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbta extends zzayc implements zzbtc {
    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbsz zze(bjq bjqVar, zzbpg zzbpgVar, int i) throws RemoteException {
        zzbsz zzbsxVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbsxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzbsxVar = queryLocalInterface instanceof zzbsz ? (zzbsz) queryLocalInterface : new zzbsx(readStrongBinder);
        }
        p.recycle();
        return zzbsxVar;
    }
}
