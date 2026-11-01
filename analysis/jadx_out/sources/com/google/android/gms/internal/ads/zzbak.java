package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbak extends zzayc implements zzbam {
    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzb() throws RemoteException {
        s(r(), 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzc() throws RemoteException {
        s(r(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzd(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zze() throws RemoteException {
        s(r(), 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzf() throws RemoteException {
        s(r(), 1);
    }
}
