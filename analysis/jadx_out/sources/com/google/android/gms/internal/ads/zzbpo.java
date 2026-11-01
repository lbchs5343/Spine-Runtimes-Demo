package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;

/* loaded from: classes3.dex */
public abstract class zzbpo extends zzayd implements zzbpp {
    public zzbpo() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    public static zzbpp zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
        return queryLocalInterface instanceof zzbpp ? (zzbpp) queryLocalInterface : new zzbpn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            bjq zze = zze();
            parcel2.writeNoException();
            zzaye.zzf(parcel2, zze);
            return true;
        }
        if (i != 2) {
            return false;
        }
        boolean zzf = zzf();
        parcel2.writeNoException();
        ClassLoader classLoader = zzaye.f4608a;
        parcel2.writeInt(zzf ? 1 : 0);
        return true;
    }
}
