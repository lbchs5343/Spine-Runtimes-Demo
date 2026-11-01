package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbqx extends zzayc implements zzbqz {
    public zzbqx(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbqz
    public final void zze(String str) throws RemoteException {
        Parcel r = r();
        r.writeString("Adapter returned null.");
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbqz
    public final void zzf(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbqz
    public final void zzg(zzbpv zzbpvVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbpvVar);
        s(r, 1);
    }
}
