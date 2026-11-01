package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbrg extends zzayc implements zzbri {
    @Override // com.google.android.gms.internal.ads.zzbri
    public final void zze(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final void zzf(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final void zzg(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 3);
    }
}
