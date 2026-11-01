package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzble extends exk {
    public static final Parcelable.Creator<zzble> CREATOR = new zzblf();
    public final boolean zza;
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;
    public final String[] zze;
    public final String[] zzf;
    public final boolean zzg;
    public final long zzh;

    public zzble(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.zza = z;
        this.zzb = str;
        this.zzc = i;
        this.zzd = bArr;
        this.zze = strArr;
        this.zzf = strArr2;
        this.zzg = z2;
        this.zzh = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(z ? 1 : 0);
        egh.p(parcel, 2, this.zzb);
        int i2 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i2);
        egh.be(parcel, 4, this.zzd);
        egh.bd(parcel, 5, this.zze);
        egh.bd(parcel, 6, this.zzf);
        boolean z2 = this.zzg;
        egh.aq(parcel, 7, 4);
        parcel.writeInt(z2 ? 1 : 0);
        long j = this.zzh;
        egh.aq(parcel, 8, 8);
        parcel.writeLong(j);
        egh.s(parcel, af);
    }
}
