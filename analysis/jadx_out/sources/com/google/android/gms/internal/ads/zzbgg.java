package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbgg extends zzayc implements zzbgi {
    public zzbgg(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final void zzb(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final void zzc(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final void zzd() throws RemoteException {
        s(r(), 2);
    }
}
