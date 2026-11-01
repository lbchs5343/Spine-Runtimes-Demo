package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzblu extends zzayc implements zzblw {
    @Override // com.google.android.gms.internal.ads.zzblw
    public final void zzb(List list) throws RemoteException {
        Parcel r = r();
        r.writeTypedList(list);
        s(r, 1);
    }
}
