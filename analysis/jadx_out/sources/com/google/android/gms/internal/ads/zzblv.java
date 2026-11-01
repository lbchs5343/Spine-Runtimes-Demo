package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class zzblv extends zzayd implements zzblw {
    public zzblv() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzblw zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return queryLocalInterface instanceof zzblw ? (zzblw) queryLocalInterface : new zzblu("com.google.android.gms.ads.internal.initialization.IInitializationCallback", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        ArrayList createTypedArrayList = parcel.createTypedArrayList(zzblp.CREATOR);
        zzaye.zzc(parcel);
        zzb(createTypedArrayList);
        parcel2.writeNoException();
        return true;
    }
}
