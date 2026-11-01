package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbvi extends zzayd implements zzbvj {
    public zzbvi() {
        super("com.google.android.gms.ads.internal.request.IAdsService");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbvm zzbvmVar = null;
        if (i == 1) {
            zzbuv zzbuvVar = (zzbuv) zzaye.zza(parcel, zzbuv.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                zzbvmVar = queryLocalInterface instanceof zzbvm ? (zzbvm) queryLocalInterface : new zzbvk(readStrongBinder);
            }
            zzaye.zzc(parcel);
            zzf(zzbuvVar, zzbvmVar);
        } else if (i == 2) {
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
            }
            zzaye.zzc(parcel);
        } else {
            if (i != 3) {
                return false;
            }
            zzbvb zzbvbVar = (zzbvb) zzaye.zza(parcel, zzbvb.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 != null) {
                IInterface queryLocalInterface2 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                zzbvmVar = queryLocalInterface2 instanceof zzbvm ? (zzbvm) queryLocalInterface2 : new zzbvk(readStrongBinder3);
            }
            zzaye.zzc(parcel);
            zze(zzbvbVar, zzbvmVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
