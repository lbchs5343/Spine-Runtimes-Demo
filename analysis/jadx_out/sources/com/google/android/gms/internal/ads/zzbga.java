package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.dub;

/* loaded from: classes3.dex */
public final class zzbga extends zzayc implements zzbgc {
    public zzbga(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final bjq zzb(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        return dub.e(p(r, 2));
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzc() throws RemoteException {
        s(r(), 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzd(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzdv(String str, bjq bjqVar) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        zzaye.zzf(r, bjqVar);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzdw(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzdx(zzbfv zzbfvVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbfvVar);
        s(r, 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzdy(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 9);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzdz(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zze(bjq bjqVar, int i) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeInt(i);
        s(r, 5);
    }
}
