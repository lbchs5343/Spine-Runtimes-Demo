package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzfri extends exk {
    public static final Parcelable.Creator<zzfri> CREATOR = new zzfrj();
    public final int zza;
    public final byte[] zzb;
    public final int zzc;

    public zzfri(int i, byte[] bArr, int i2) {
        this.zza = i;
        this.zzb = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.zzc = i2;
    }

    public zzfri(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.be(parcel, 2, this.zzb);
        int i3 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i3);
        egh.s(parcel, af);
    }
}
