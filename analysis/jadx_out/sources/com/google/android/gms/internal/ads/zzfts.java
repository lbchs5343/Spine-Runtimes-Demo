package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzfts extends zzayc implements zzftu {
    @Override // com.google.android.gms.internal.ads.zzftu
    public final void zze(Bundle bundle, zzftw zzftwVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        zzaye.zzf(r, zzftwVar);
        q(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final void zzf(String str, Bundle bundle, zzftw zzftwVar) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        zzaye.zzd(r, bundle);
        zzaye.zzf(r, zzftwVar);
        q(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final void zzg(Bundle bundle, zzftw zzftwVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        zzaye.zzf(r, zzftwVar);
        q(r, 3);
    }
}
