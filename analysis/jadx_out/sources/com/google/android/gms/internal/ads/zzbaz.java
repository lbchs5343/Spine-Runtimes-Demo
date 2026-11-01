package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbaz extends zzayc implements IInterface {
    public final long zze(zzbax zzbaxVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbaxVar);
        Parcel p = p(r, 3);
        long readLong = p.readLong();
        p.recycle();
        return readLong;
    }

    public final zzbau zzf(zzbax zzbaxVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbaxVar);
        Parcel p = p(r, 1);
        zzbau zzbauVar = (zzbau) zzaye.zza(p, zzbau.CREATOR);
        p.recycle();
        return zzbauVar;
    }

    public final zzbau zzg(zzbax zzbaxVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbaxVar);
        Parcel p = p(r, 2);
        zzbau zzbauVar = (zzbau) zzaye.zza(p, zzbau.CREATOR);
        p.recycle();
        return zzbauVar;
    }
}
