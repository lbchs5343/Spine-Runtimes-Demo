package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbfp extends zzayc implements zzbfr {
    public zzbfp(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final String zzg() throws RemoteException {
        Parcel p = p(r(), 2);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final List zzh() throws RemoteException {
        Parcel p = p(r(), 3);
        ArrayList zzb = zzaye.zzb(p);
        p.recycle();
        return zzb;
    }
}
