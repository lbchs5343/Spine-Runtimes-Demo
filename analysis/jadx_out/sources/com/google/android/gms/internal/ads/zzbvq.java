package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.gvi;

/* loaded from: classes3.dex */
public final class zzbvq extends zzayc implements IInterface {
    public final void zze(gvi gviVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, gviVar);
        s(r, 2);
    }

    public final void zzf(String str, zzbuz zzbuzVar) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        zzaye.zzd(r, zzbuzVar);
        s(r, 1);
    }
}
