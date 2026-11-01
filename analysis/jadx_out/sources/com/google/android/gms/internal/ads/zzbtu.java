package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class zzbtu extends zzayd implements zzbtv {
    public zzbtu() {
        super("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    public static zzbtv zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        return queryLocalInterface instanceof zzbtv ? (zzbtv) queryLocalInterface : new zzbtt("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            ArrayList createTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
            zzaye.zzc(parcel);
            zzf(createTypedArrayList);
        } else {
            if (i != 2) {
                return false;
            }
            String readString = parcel.readString();
            zzaye.zzc(parcel);
            zze(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
