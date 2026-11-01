package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzfrb extends zzayc implements IInterface {
    public final zzfqz zze(zzfqx zzfqxVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzfqxVar);
        Parcel p = p(r, 1);
        zzfqz zzfqzVar = (zzfqz) zzaye.zza(p, zzfqz.CREATOR);
        p.recycle();
        return zzfqzVar;
    }

    public final zzfri zzf(zzfrg zzfrgVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzfrgVar);
        Parcel p = p(r, 3);
        zzfri zzfriVar = (zzfri) zzaye.zza(p, zzfri.CREATOR);
        p.recycle();
        return zzfriVar;
    }

    public final void zzg(zzfqu zzfquVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzfquVar);
        s(r, 2);
    }
}
