package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzfrg extends exk {
    public static final Parcelable.Creator<zzfrg> CREATOR = new zzfrh();
    public final int zza;
    public final int zzb;
    public final String zzc;
    public final String zzd;
    public final int zze;

    public zzfrg(int i, int i2, int i3, String str, String str2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = str2;
        this.zze = i3;
    }

    public zzfrg(int i, int i2, String str, String str2) {
        this(1, 1, i2 - 1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        egh.p(parcel, 3, this.zzc);
        egh.p(parcel, 4, this.zzd);
        int i4 = this.zze;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(i4);
        egh.s(parcel, af);
    }
}
