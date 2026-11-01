package com.google.android.gms.internal.ads;

import android.os.Parcel;
import g.abz;

/* loaded from: classes3.dex */
public abstract class zzbxi extends zzayd implements zzbxj {
    public zzbxi() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zzg();
        } else if (i == 2) {
            int readInt = parcel.readInt();
            zzaye.zzc(parcel);
            zze(readInt);
        } else {
            if (i != 3) {
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
