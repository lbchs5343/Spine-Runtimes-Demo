package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbth extends zzayc implements zzbtj {
    public zzbth(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final IBinder zze(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        p.recycle();
        return readStrongBinder;
    }
}
