package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzchh extends zzayc implements zzchj {
    @Override // com.google.android.gms.internal.ads.zzchj
    public final void zze(bjq bjqVar, zzchg zzchgVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzchgVar);
        s(r, 2);
    }
}
