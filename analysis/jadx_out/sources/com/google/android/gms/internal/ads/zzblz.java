package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzblz extends exk {
    public static final Parcelable.Creator<zzblz> CREATOR = new zzbma();
    public final String zza;
    public final Bundle zzb;

    public zzblz(String str, Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        egh.ac(parcel, 2, this.zzb);
        egh.s(parcel, af);
    }
}
