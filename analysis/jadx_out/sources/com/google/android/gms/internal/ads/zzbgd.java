package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbgd extends zzayc implements zzbgf {
    public zzbgd(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbgf
    public final IBinder zze(bjq bjqVar, bjq bjqVar2, bjq bjqVar3, int i) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        zzaye.zzf(r, bjqVar3);
        r.writeInt(243799000);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        p.recycle();
        return readStrongBinder;
    }
}
