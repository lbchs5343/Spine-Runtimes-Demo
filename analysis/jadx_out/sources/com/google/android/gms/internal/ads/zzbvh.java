package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbvh extends zzayc implements zzbvj {
    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zze(zzbvb zzbvbVar, zzbvm zzbvmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbvbVar);
        zzaye.zzf(r, zzbvmVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzf(zzbuv zzbuvVar, zzbvm zzbvmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbuvVar);
        zzaye.zzf(r, zzbvmVar);
        s(r, 1);
    }
}
