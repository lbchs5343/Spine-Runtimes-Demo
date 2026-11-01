package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bmt;
import g.bpp;
import g.deq;
import g.gcq;
import g.gwt;

/* loaded from: classes3.dex */
public abstract class zzbae extends zzayd implements zzbaf {
    public zzbae() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    public static zzbaf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
        return queryLocalInterface instanceof zzbaf ? (zzbaf) queryLocalInterface : new zzbad(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbam zzbakVar;
        switch (i) {
            case 2:
                deq zze = zze();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zze);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                }
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbakVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzbakVar = queryLocalInterface instanceof zzbam ? (zzbam) queryLocalInterface : new zzbak("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback", readStrongBinder2);
                }
                zzaye.zzc(parcel);
                zzi(d2, zzbakVar);
                parcel2.writeNoException();
                return true;
            case 5:
                gcq zzf = zzf();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzf);
                return true;
            case 6:
                boolean zzg = zzaye.zzg(parcel);
                zzaye.zzc(parcel);
                zzg(zzg);
                parcel2.writeNoException();
                return true;
            case 7:
                gwt a2 = bmt.a(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzh(a2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
