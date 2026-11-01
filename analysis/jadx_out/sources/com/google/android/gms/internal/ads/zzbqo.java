package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbqo extends zzayc implements zzbqq {
    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zze(String str) throws RemoteException {
        Parcel r = r();
        r.writeString("Adapter returned null.");
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zzf(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zzg() throws RemoteException {
        s(r(), 2);
    }
}
