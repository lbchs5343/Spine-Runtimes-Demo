package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.deq;

/* loaded from: classes3.dex */
public final class zzbhh extends zzayc implements zzbhj {
    @Override // com.google.android.gms.internal.ads.zzbhj
    public final void zze(deq deqVar, bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, deqVar);
        zzaye.zzf(r, bjqVar);
        s(r, 1);
    }
}
