package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.aeh;
import g.bjq;
import g.bmt;
import g.bpp;
import g.gag;
import g.gcq;
import g.gwt;
import g.kl;

/* loaded from: classes3.dex */
public abstract class zzbxb extends zzayd implements zzbxc {
    public zzbxb() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzbxc zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof zzbxc ? (zzbxc) queryLocalInterface : new zzbxa(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbxj zzbxjVar = null;
        zzbxj zzbxjVar2 = null;
        gag gagVar = null;
        zzbxk zzbxkVar = null;
        zzbxf zzbxfVar = null;
        switch (i) {
            case 1:
                aeh aehVar = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbxjVar = queryLocalInterface instanceof zzbxj ? (zzbxj) queryLocalInterface : new zzbxh(readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzf(aehVar, zzbxjVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzbxfVar = queryLocalInterface2 instanceof zzbxf ? (zzbxf) queryLocalInterface2 : new zzbxd("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback", readStrongBinder2);
                }
                zzaye.zzc(parcel);
                zzk(zzbxfVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzo = zzo();
                parcel2.writeNoException();
                ClassLoader classLoader = zzaye.f4608a;
                parcel2.writeInt(zzo ? 1 : 0);
                return true;
            case 4:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 5:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzm(d2);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzbxkVar = queryLocalInterface3 instanceof zzbxk ? (zzbxk) queryLocalInterface3 : new zzbxk("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener", readStrongBinder3);
                }
                zzaye.zzc(parcel);
                zzp(zzbxkVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbxq zzbxqVar = (zzbxq) zzaye.zza(parcel, zzbxq.CREATOR);
                zzaye.zzc(parcel);
                zzl(zzbxqVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
                    gagVar = queryLocalInterface4 instanceof gag ? (gag) queryLocalInterface4 : new kl("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener", readStrongBinder4);
                }
                zzaye.zzc(parcel);
                zzi(gagVar);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzb = zzb();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzb);
                return true;
            case 10:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                boolean zzg = zzaye.zzg(parcel);
                zzaye.zzc(parcel);
                zzn(d3, zzg);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbwz zzd = zzd();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzd);
                return true;
            case 12:
                gcq zzc = zzc();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzc);
                return true;
            case 13:
                gwt a2 = bmt.a(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzj(a2);
                parcel2.writeNoException();
                return true;
            case 14:
                aeh aehVar2 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbxjVar2 = queryLocalInterface5 instanceof zzbxj ? (zzbxj) queryLocalInterface5 : new zzbxh(readStrongBinder5);
                }
                zzaye.zzc(parcel);
                zzg(aehVar2, zzbxjVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zzg2 = zzaye.zzg(parcel);
                zzaye.zzc(parcel);
                zzh(zzg2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
