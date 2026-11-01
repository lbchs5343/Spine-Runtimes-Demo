package com.google.android.gms.internal.ads;

import android.os.Parcel;
import g.bpp;

/* loaded from: classes3.dex */
public abstract class zzfrt extends zzayd implements zzfru {
    public zzfrt() {
        super("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 2:
                bpp.d(parcel.readStrongBinder());
                parcel.readString();
                zzaye.zzc(parcel);
                break;
            case 3:
                break;
            case 4:
                parcel.createIntArray();
                zzaye.zzc(parcel);
                break;
            case 5:
                parcel.createByteArray();
                zzaye.zzc(parcel);
                break;
            case 6:
                parcel.readInt();
                zzaye.zzc(parcel);
                break;
            case 7:
                parcel.readInt();
                zzaye.zzc(parcel);
                break;
            case 8:
                bpp.d(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                zzaye.zzc(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
