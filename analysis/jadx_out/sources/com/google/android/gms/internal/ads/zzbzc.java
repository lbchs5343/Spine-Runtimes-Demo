package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbzc extends zzayc implements zzbze {
    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zzb(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zzc(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        r.writeString(str2);
        zzaye.zzd(r, bundle);
        s(r, 3);
    }
}
