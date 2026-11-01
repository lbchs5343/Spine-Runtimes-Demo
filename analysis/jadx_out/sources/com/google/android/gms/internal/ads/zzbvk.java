package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import g.gvi;

/* loaded from: classes3.dex */
public final class zzbvk extends zzayc implements zzbvm {
    public zzbvk(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze(gvi gviVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, gviVar);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, parcelFileDescriptor);
        s(r, 1);
    }
}
