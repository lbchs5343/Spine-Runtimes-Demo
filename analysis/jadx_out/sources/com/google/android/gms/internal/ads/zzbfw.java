package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.dub;

/* loaded from: classes3.dex */
public final class zzbfw extends zzayc implements zzbfy {
    public zzbfw(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final double zzb() throws RemoteException {
        Parcel p = p(r(), 3);
        double readDouble = p.readDouble();
        p.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final int zzc() throws RemoteException {
        Parcel p = p(r(), 5);
        int readInt = p.readInt();
        p.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final int zzd() throws RemoteException {
        Parcel p = p(r(), 4);
        int readInt = p.readInt();
        p.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final Uri zze() throws RemoteException {
        Parcel p = p(r(), 2);
        Uri uri = (Uri) zzaye.zza(p, Uri.CREATOR);
        p.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final bjq zzf() throws RemoteException {
        return dub.e(p(r(), 1));
    }
}
