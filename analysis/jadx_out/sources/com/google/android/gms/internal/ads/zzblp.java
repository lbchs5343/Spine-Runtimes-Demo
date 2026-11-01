package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzblp extends exk {
    public static final Parcelable.Creator<zzblp> CREATOR = new zzblq();
    public final String zza;
    public final boolean zzb;
    public final int zzc;
    public final String zzd;

    public zzblp(String str, boolean z, int i, String str2) {
        this.zza = str;
        this.zzb = z;
        this.zzc = i;
        this.zzd = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        boolean z = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        int i2 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i2);
        egh.p(parcel, 4, this.zzd);
        egh.s(parcel, af);
    }
}
