package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbux extends exk {
    public static final Parcelable.Creator<zzbux> CREATOR = new zzbuy();
    public final boolean zza;
    public final List zzb;

    public zzbux() {
        this(false, Collections.EMPTY_LIST);
    }

    public zzbux(boolean z, List list) {
        this.zza = z;
        this.zzb = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        egh.am(parcel, 3, this.zzb);
        egh.s(parcel, af);
    }
}
