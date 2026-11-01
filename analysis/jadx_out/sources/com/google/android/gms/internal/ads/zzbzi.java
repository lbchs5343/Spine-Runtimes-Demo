package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbzi extends zzayc implements zzbzk {
    @Override // com.google.android.gms.internal.ads.zzbzk
    public final zzbzh zze(bjq bjqVar, zzbpg zzbpgVar, int i) throws RemoteException {
        zzbzh zzbzfVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 2);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbzfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzbzfVar = queryLocalInterface instanceof zzbzh ? (zzbzh) queryLocalInterface : new zzbzf(readStrongBinder);
        }
        p.recycle();
        return zzbzfVar;
    }
}
