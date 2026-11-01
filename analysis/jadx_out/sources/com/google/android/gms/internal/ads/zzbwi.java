package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbwi extends zzayd implements zzbwj {
    public zzbwi() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeString(zzc);
            return true;
        }
        if (i != 2) {
            return false;
        }
        int zzb = zzb();
        parcel2.writeNoException();
        parcel2.writeInt(zzb);
        return true;
    }
}
