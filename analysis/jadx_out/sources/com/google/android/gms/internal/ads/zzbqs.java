package com.google.android.gms.internal.ads;

import android.os.Parcel;
import g.abz;
import g.bjq;
import g.bpp;

/* loaded from: classes3.dex */
public abstract class zzbqs extends zzayd implements zzbqt {
    public zzbqs() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            bjq d2 = bpp.d(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            zzg(d2);
        } else if (i == 2) {
            String readString = parcel.readString();
            zzaye.zzc(parcel);
            zze(readString);
        } else if (i == 3) {
            abz abzVar = (abz) zzaye.zza(parcel, abz.CREATOR);
            zzaye.zzc(parcel);
            zzf(abzVar);
        } else {
            if (i != 4) {
                return false;
            }
            zzbpp zzb = zzbpo.zzb(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            zzh(zzb);
        }
        parcel2.writeNoException();
        return true;
    }
}
