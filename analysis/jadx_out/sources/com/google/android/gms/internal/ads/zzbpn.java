package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.dub;

/* loaded from: classes3.dex */
public final class zzbpn extends zzayc implements zzbpp {
    public zzbpn(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbpp
    public final bjq zze() throws RemoteException {
        return dub.e(p(r(), 1));
    }

    @Override // com.google.android.gms.internal.ads.zzbpp
    public final boolean zzf() throws RemoteException {
        Parcel p = p(r(), 2);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
