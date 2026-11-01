package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.aeh;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzbwq extends exk {
    public static final Parcelable.Creator<zzbwq> CREATOR = new zzbwr();
    public final aeh zza;
    public final String zzb;

    public zzbwq(aeh aehVar, String str) {
        this.zza = aehVar;
        this.zzb = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        aeh aehVar = this.zza;
        int af = egh.af(parcel, 20293);
        egh.u(parcel, 2, aehVar, i);
        egh.p(parcel, 3, this.zzb);
        egh.s(parcel, af);
    }
}
