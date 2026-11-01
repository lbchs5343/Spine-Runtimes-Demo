package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.cie;

/* loaded from: classes3.dex */
public final class zzbsx extends zzayc implements zzbsz {
    public zzbsx(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zze(Intent intent) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, intent);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzf(String[] strArr, int[] iArr, bjq bjqVar) throws RemoteException {
        Parcel r = r();
        r.writeStringArray(strArr);
        r.writeIntArray(iArr);
        zzaye.zzf(r, bjqVar);
        s(r, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzg(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzh() throws RemoteException {
        s(r(), 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzi(bjq bjqVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzj(bjq bjqVar, cie cieVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, cieVar);
        s(r, 6);
    }
}
