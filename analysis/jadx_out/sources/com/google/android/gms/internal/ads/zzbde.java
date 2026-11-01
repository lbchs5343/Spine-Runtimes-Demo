package com.google.android.gms.internal.ads;

import android.os.Parcel;
import g.bjq;
import g.bpp;

/* loaded from: classes3.dex */
public abstract class zzbde extends zzayd implements zzbdf {
    public zzbde() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String zzb = zzb();
            parcel2.writeNoException();
            parcel2.writeString(zzb);
            return true;
        }
        if (i == 2) {
            String zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeString(zzc);
            return true;
        }
        if (i == 3) {
            bjq d2 = bpp.d(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            zzd(d2);
            parcel2.writeNoException();
            return true;
        }
        if (i == 4) {
            zze();
            parcel2.writeNoException();
            return true;
        }
        if (i != 5) {
            return false;
        }
        zzf();
        parcel2.writeNoException();
        return true;
    }
}
