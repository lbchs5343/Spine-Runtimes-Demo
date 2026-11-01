package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.abz;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbqr extends zzayc implements zzbqt {
    public zzbqr(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zze(String str) throws RemoteException {
        Parcel r = r();
        r.writeString("Adapter returned null.");
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zzf(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zzg(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zzh(zzbpp zzbppVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbppVar);
        s(r, 4);
    }
}
