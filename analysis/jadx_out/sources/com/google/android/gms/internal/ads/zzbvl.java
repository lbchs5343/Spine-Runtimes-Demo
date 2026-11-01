package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import g.gvi;

/* loaded from: classes3.dex */
public abstract class zzbvl extends zzayd implements zzbvm {
    public zzbvl() {
        super("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzaye.zza(parcel, ParcelFileDescriptor.CREATOR);
            zzaye.zzc(parcel);
            zzf(parcelFileDescriptor);
        } else {
            if (i != 2) {
                return false;
            }
            gvi gviVar = (gvi) zzaye.zza(parcel, gvi.CREATOR);
            zzaye.zzc(parcel);
            zze(gviVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
