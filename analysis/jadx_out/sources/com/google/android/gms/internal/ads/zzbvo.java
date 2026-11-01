package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import g.gvi;

/* loaded from: classes3.dex */
public abstract class zzbvo extends zzayd implements zzbvp {
    public zzbvo() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzaye.zza(parcel, ParcelFileDescriptor.CREATOR);
            zzaye.zzc(parcel);
            zzf(parcelFileDescriptor);
        } else if (i == 2) {
            gvi gviVar = (gvi) zzaye.zza(parcel, gvi.CREATOR);
            zzaye.zzc(parcel);
            zze(gviVar);
        } else {
            if (i != 3) {
                return false;
            }
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) zzaye.zza(parcel, ParcelFileDescriptor.CREATOR);
            zzbvx zzbvxVar = (zzbvx) zzaye.zza(parcel, zzbvx.CREATOR);
            zzaye.zzc(parcel);
            zzg(parcelFileDescriptor2, zzbvxVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
