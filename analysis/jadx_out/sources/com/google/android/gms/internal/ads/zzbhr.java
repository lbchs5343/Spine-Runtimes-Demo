package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbhr extends zzayd implements zzbhs {
    public zzbhr() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String readString = parcel.readString();
            zzaye.zzc(parcel);
            zzf(readString);
        } else {
            if (i != 2) {
                return false;
            }
            zze();
        }
        parcel2.writeNoException();
        return true;
    }
}
