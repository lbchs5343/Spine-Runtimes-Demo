package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.aeh;
import g.egh;
import g.eno;
import g.exk;

/* loaded from: classes3.dex */
public final class zzbzl extends exk {
    public static final Parcelable.Creator<zzbzl> CREATOR = new zzbzm();
    public final String zza;
    public final String zzb;

    @Deprecated
    public final eno zzc;
    public final aeh zzd;

    public zzbzl(String str, String str2, eno enoVar, aeh aehVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = enoVar;
        this.zzd = aehVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        egh.p(parcel, 2, this.zzb);
        egh.u(parcel, 3, this.zzc, i);
        egh.u(parcel, 4, this.zzd, i);
        egh.s(parcel, af);
    }
}
