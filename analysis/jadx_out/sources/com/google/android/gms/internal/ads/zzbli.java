package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbli extends zzayc implements IInterface {
    public final void zze(zzblc zzblcVar, zzblh zzblhVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzblcVar);
        zzaye.zzf(r, zzblhVar);
        q(r, 2);
    }
}
