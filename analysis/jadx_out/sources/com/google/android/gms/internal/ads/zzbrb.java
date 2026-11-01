package com.google.android.gms.internal.ads;

import android.os.Parcel;
import g.abz;

/* loaded from: classes3.dex */
public abstract class zzbrb extends zzayd implements zzbrc {
    public zzbrb() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 2) {
            zzg();
        } else if (i == 3) {
            String readString = parcel.readString();
            zzaye.zzc(parcel);
            zze(readString);
        } else {
            if (i != 4) {
                return false;
            }
            abz abzVar = (abz) zzaye.zza(parcel, abz.CREATOR);
            zzaye.zzc(parcel);
            zzf(abzVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
