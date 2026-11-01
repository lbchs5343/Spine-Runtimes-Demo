package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bpp;

/* loaded from: classes3.dex */
public abstract class zzbgh extends zzayd implements zzbgi {
    public zzbgh() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    public static zzbgi zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof zzbgi ? (zzbgi) queryLocalInterface : new zzbgg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            bjq d2 = bpp.d(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            zzc(d2);
        } else if (i == 2) {
            zzd();
        } else {
            if (i != 3) {
                return false;
            }
            bjq d3 = bpp.d(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            zzb(d3);
        }
        parcel2.writeNoException();
        return true;
    }
}
