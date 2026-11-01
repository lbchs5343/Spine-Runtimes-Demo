package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bpp;

/* loaded from: classes3.dex */
public abstract class zzbgb extends zzayd implements zzbgc {
    public zzbgb() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzbgc zzdA(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return queryLocalInterface instanceof zzbgc ? (zzbgc) queryLocalInterface : new zzbga(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbfv zzbftVar;
        switch (i) {
            case 1:
                String readString = parcel.readString();
                bjq d2 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzdv(readString, d2);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString2 = parcel.readString();
                zzaye.zzc(parcel);
                bjq zzb = zzb(readString2);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzb);
                return true;
            case 3:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzdz(d3);
                parcel2.writeNoException();
                return true;
            case 4:
                zzc();
                parcel2.writeNoException();
                return true;
            case 5:
                bpp.d(parcel.readStrongBinder());
                parcel.readInt();
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 6:
                bjq d4 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzdw(d4);
                parcel2.writeNoException();
                return true;
            case 7:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzd(d5);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbftVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    zzbftVar = queryLocalInterface instanceof zzbfv ? (zzbfv) queryLocalInterface : new zzbft(readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzdx(zzbftVar);
                parcel2.writeNoException();
                return true;
            case 9:
                bjq d6 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzdy(d6);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
