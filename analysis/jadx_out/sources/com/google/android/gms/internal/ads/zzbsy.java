package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bpp;
import g.cie;

/* loaded from: classes3.dex */
public abstract class zzbsy extends zzayd implements zzbsz {
    public zzbsy() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    public static zzbsz zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        return queryLocalInterface instanceof zzbsz ? (zzbsz) queryLocalInterface : new zzbsx(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                Intent intent = (Intent) zzaye.zza(parcel, Intent.CREATOR);
                zzaye.zzc(parcel);
                zze(intent);
                break;
            case 2:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                zzaye.zzc(parcel);
                zzi(d2, readString, readString2);
                break;
            case 3:
                zzh();
                break;
            case 4:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzg(d3);
                break;
            case 5:
                String[] createStringArray = parcel.createStringArray();
                int[] createIntArray = parcel.createIntArray();
                bjq d4 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzf(createStringArray, createIntArray, d4);
                break;
            case 6:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                cie cieVar = (cie) zzaye.zza(parcel, cie.CREATOR);
                zzaye.zzc(parcel);
                zzj(d5, cieVar);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
