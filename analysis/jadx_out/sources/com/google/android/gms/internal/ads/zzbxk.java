package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbxk extends zzayc implements IInterface {
    public final void zze(zzbwz zzbwzVar, String str, String str2) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbwzVar);
        r.writeString(str);
        r.writeString(str2);
        s(r, 2);
    }
}
