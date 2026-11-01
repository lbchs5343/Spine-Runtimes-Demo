package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;
import g.fmh;

/* loaded from: classes3.dex */
public final class zzbxq extends exk {
    public static final Parcelable.Creator<zzbxq> CREATOR = new zzbxr();
    public final String zza;
    public final String zzb;

    public zzbxq(fmh fmhVar) {
        throw null;
    }

    public zzbxq(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        egh.p(parcel, 2, this.zzb);
        egh.s(parcel, af);
    }
}
