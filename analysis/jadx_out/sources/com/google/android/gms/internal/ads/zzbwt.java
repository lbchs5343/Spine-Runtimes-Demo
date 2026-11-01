package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bpp;

/* loaded from: classes3.dex */
public abstract class zzbwt extends zzayd implements zzbwu {
    public zzbwt() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzbwu zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof zzbwu ? (zzbwu) queryLocalInterface : new zzbws("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzl(d2);
                break;
            case 2:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzaye.zzc(parcel);
                zzk(d3, readInt);
                break;
            case 3:
                bjq d4 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzi(d4);
                break;
            case 4:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzj(d5);
                break;
            case 5:
                bjq d6 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzo(d6);
                break;
            case 6:
                bjq d7 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzf(d7);
                break;
            case 7:
                bjq d8 = bpp.d(parcel.readStrongBinder());
                zzbwv zzbwvVar = (zzbwv) zzaye.zza(parcel, zzbwv.CREATOR);
                zzaye.zzc(parcel);
                zzm(d8, zzbwvVar);
                break;
            case 8:
                bjq d9 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zze(d9);
                break;
            case 9:
                bjq d10 = bpp.d(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzaye.zzc(parcel);
                zzg(d10, readInt2);
                break;
            case 10:
                bjq d11 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzh(d11);
                break;
            case 11:
                bjq d12 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzn(d12);
                break;
            case 12:
                zzaye.zzc(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
