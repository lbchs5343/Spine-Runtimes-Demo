package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.abz;

/* loaded from: classes3.dex */
public abstract class zzbxe extends zzayd implements zzbxf {
    public zzbxe() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbwz zzbwxVar;
        switch (i) {
            case 1:
                zzj();
                break;
            case 2:
                zzg();
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbwxVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    zzbwxVar = queryLocalInterface instanceof zzbwz ? (zzbwz) queryLocalInterface : new zzbwx(readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzk(zzbwxVar);
                break;
            case 4:
                int readInt = parcel.readInt();
                zzaye.zzc(parcel);
                zzh(readInt);
                break;
            case 5:
                abz abzVar = (abz) zzaye.zza(parcel, abz.CREATOR);
                zzaye.zzc(parcel);
                zzi(abzVar);
                break;
            case 6:
                zzf();
                break;
            case 7:
                zze();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
