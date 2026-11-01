package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbhn extends zzayc implements zzbhp {
    @Override // com.google.android.gms.internal.ads.zzbhp
    public final boolean zze(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        Parcel p = p(r, 2);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
