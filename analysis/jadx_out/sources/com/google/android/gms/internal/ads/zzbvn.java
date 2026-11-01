package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import g.gvi;

/* loaded from: classes3.dex */
public final class zzbvn extends zzayc implements zzbvp {
    public zzbvn(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zze(gvi gviVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, gviVar);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, parcelFileDescriptor);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvx zzbvxVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, parcelFileDescriptor);
        zzaye.zzd(r, zzbvxVar);
        s(r, 3);
    }
}
