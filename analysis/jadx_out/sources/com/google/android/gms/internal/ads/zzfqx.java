package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzfqx extends exk {
    public static final Parcelable.Creator<zzfqx> CREATOR = new zzfqy();
    public final int zza;
    public final String zzb;
    public final String zzc;

    public zzfqx(int i, String str, String str2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
    }

    public zzfqx(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.p(parcel, 2, this.zzb);
        egh.p(parcel, 3, this.zzc);
        egh.s(parcel, af);
    }
}
