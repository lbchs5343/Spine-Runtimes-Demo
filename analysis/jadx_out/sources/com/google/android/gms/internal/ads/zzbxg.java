package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbxg extends zzayc implements IInterface {
    public final IBinder zze(bjq bjqVar, String str, zzbpg zzbpgVar, int i) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        p.recycle();
        return readStrongBinder;
    }
}
