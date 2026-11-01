package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzfqu extends exk {
    public static final Parcelable.Creator<zzfqu> CREATOR = new zzfqv();
    public final int zza;
    public final byte[] zzb;

    public zzfqu(int i, byte[] bArr) {
        this.zza = i;
        this.zzb = bArr;
    }

    public zzfqu(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.be(parcel, 2, this.zzb);
        egh.s(parcel, af);
    }
}
