package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbtt extends zzayc implements zzbtv {
    @Override // com.google.android.gms.internal.ads.zzbtv
    public final void zze(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbtv
    public final void zzf(List list) throws RemoteException {
        Parcel r = r();
        r.writeTypedList(list);
        s(r, 1);
    }
}
