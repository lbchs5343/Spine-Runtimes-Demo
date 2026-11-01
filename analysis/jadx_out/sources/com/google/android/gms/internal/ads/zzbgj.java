package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbgj extends zzayc implements zzbgl {
    public zzbgj(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final IBinder zze(bjq bjqVar, bjq bjqVar2, bjq bjqVar3) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        zzaye.zzf(r, bjqVar3);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        p.recycle();
        return readStrongBinder;
    }
}
