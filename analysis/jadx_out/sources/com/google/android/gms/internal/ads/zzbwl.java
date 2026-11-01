package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.acd;
import g.bjq;
import g.bpp;
import g.gb;
import g.gcq;

/* loaded from: classes3.dex */
public abstract class zzbwl extends zzayd implements zzbwm {
    public zzbwl() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zzbwq zzbwqVar = (zzbwq) zzaye.zza(parcel, zzbwq.CREATOR);
            zzaye.zzc(parcel);
            zzg(zzbwqVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 2) {
            zzq();
            parcel2.writeNoException();
            return true;
        }
        zzbwp zzbwpVar = null;
        zzbwk zzbwkVar = null;
        gb gbVar = null;
        if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                zzbwpVar = queryLocalInterface instanceof zzbwp ? (zzbwp) queryLocalInterface : new zzbwn(readStrongBinder);
            }
            zzaye.zzc(parcel);
            zzo(zzbwpVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 34) {
            boolean zzg = zzaye.zzg(parcel);
            zzaye.zzc(parcel);
            zzn(zzg);
            parcel2.writeNoException();
            return true;
        }
        switch (i) {
            case 5:
                boolean zzs = zzs();
                parcel2.writeNoException();
                ClassLoader classLoader = zzaye.f4608a;
                parcel2.writeInt(zzs ? 1 : 0);
                break;
            case 6:
                zzh();
                parcel2.writeNoException();
                break;
            case 7:
                zzj();
                parcel2.writeNoException();
                break;
            case 8:
                zze();
                parcel2.writeNoException();
                break;
            case 9:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzi(d2);
                parcel2.writeNoException();
                break;
            case 10:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzk(d3);
                parcel2.writeNoException();
                break;
            case 11:
                bjq d4 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzf(d4);
                parcel2.writeNoException();
                break;
            case 12:
                String zzd = zzd();
                parcel2.writeNoException();
                parcel2.writeString(zzd);
                break;
            case 13:
                String readString = parcel.readString();
                zzaye.zzc(parcel);
                zzp(readString);
                parcel2.writeNoException();
                break;
            case 14:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    gbVar = queryLocalInterface2 instanceof gb ? (gb) queryLocalInterface2 : new acd(readStrongBinder2);
                }
                zzaye.zzc(parcel);
                zzl(gbVar);
                parcel2.writeNoException();
                break;
            case 15:
                Bundle zzb = zzb();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzb);
                break;
            case 16:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                    zzbwkVar = queryLocalInterface3 instanceof zzbwk ? (zzbwk) queryLocalInterface3 : new zzbwk("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener", readStrongBinder3);
                }
                zzaye.zzc(parcel);
                zzu(zzbwkVar);
                parcel2.writeNoException();
                break;
            case 17:
                parcel.readString();
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                break;
            case 18:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzr(d5);
                parcel2.writeNoException();
                break;
            case 19:
                String readString2 = parcel.readString();
                zzaye.zzc(parcel);
                zzm(readString2);
                parcel2.writeNoException();
                break;
            case 20:
                boolean zzt = zzt();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzaye.f4608a;
                parcel2.writeInt(zzt ? 1 : 0);
                break;
            case 21:
                gcq zzc = zzc();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzc);
                break;
        }
        return true;
    }
}
