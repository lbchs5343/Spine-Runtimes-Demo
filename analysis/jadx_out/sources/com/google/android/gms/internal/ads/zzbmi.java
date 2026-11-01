package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbmi extends zzayc implements zzbmk {
    @Override // com.google.android.gms.internal.ads.zzbmk
    public final void zze(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmk
    public final void zzf(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbmk
    public final void zzg(zzbme zzbmeVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbmeVar);
        s(r, 1);
    }
}
