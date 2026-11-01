package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbag extends zzayc implements zzbai {
    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzb(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzc(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzd(zzbaf zzbafVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbafVar);
        s(r, 1);
    }
}
