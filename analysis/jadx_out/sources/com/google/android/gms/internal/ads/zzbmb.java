package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzbmb extends exk {
    public static final Parcelable.Creator<zzbmb> CREATOR = new zzbmc();
    public final int zza;
    public final int zzb;
    public final String zzc;
    public final int zzd;

    public zzbmb(int i, int i2, String str, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zzb;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.p(parcel, 2, this.zzc);
        int i3 = this.zzd;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i3);
        int i4 = this.zza;
        egh.aq(parcel, 1000, 4);
        parcel.writeInt(i4);
        egh.s(parcel, af);
    }
}
