package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbko extends zzayc implements zzbkq {
    @Override // com.google.android.gms.internal.ads.zzbkq
    public final void zzb(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 1);
    }
}
