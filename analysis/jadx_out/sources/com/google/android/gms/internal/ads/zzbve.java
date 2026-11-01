package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbve extends zzayd implements zzbvf {
    public zzbve() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbvp zzbvpVar = null;
        zzbvq zzbvqVar = null;
        zzbvp zzbvpVar2 = null;
        zzbvp zzbvpVar3 = null;
        zzbvp zzbvpVar4 = null;
        switch (i) {
            case 1:
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                zzaye.zze(parcel2, null);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                }
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 3:
            default:
                return false;
            case 4:
                zzbvx zzbvxVar = (zzbvx) zzaye.zza(parcel, zzbvx.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvpVar = queryLocalInterface instanceof zzbvp ? (zzbvp) queryLocalInterface : new zzbvn(readStrongBinder2);
                }
                zzaye.zzc(parcel);
                zzg(zzbvxVar, zzbvpVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbvx zzbvxVar2 = (zzbvx) zzaye.zza(parcel, zzbvx.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvpVar4 = queryLocalInterface2 instanceof zzbvp ? (zzbvp) queryLocalInterface2 : new zzbvn(readStrongBinder3);
                }
                zzaye.zzc(parcel);
                zzf(zzbvxVar2, zzbvpVar4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbvx zzbvxVar3 = (zzbvx) zzaye.zza(parcel, zzbvx.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvpVar3 = queryLocalInterface3 instanceof zzbvp ? (zzbvp) queryLocalInterface3 : new zzbvn(readStrongBinder4);
                }
                zzaye.zzc(parcel);
                zze(zzbvxVar3, zzbvpVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvpVar2 = queryLocalInterface4 instanceof zzbvp ? (zzbvp) queryLocalInterface4 : new zzbvn(readStrongBinder5);
                }
                zzaye.zzc(parcel);
                zzh(readString, zzbvpVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbuz zzbuzVar = (zzbuz) zzaye.zza(parcel, zzbuz.CREATOR);
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
                    zzbvqVar = queryLocalInterface5 instanceof zzbvq ? (zzbvq) queryLocalInterface5 : new zzbvq("com.google.android.gms.ads.internal.request.ITrustlessTokenListener", readStrongBinder6);
                }
                zzaye.zzc(parcel);
                zzi(zzbuzVar, zzbvqVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
