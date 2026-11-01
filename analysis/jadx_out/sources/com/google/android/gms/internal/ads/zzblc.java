package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzblc extends exk {
    public static final Parcelable.Creator<zzblc> CREATOR = new zzbld();
    public final String zza;
    public final String[] zzb;
    public final String[] zzc;

    public zzblc(String str, String[] strArr, String[] strArr2) {
        this.zza = str;
        this.zzb = strArr;
        this.zzc = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        egh.bd(parcel, 2, this.zzb);
        egh.bd(parcel, 3, this.zzc);
        egh.s(parcel, af);
    }
}
