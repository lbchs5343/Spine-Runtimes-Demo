package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzbvb extends exk {
    public static final Parcelable.Creator<zzbvb> CREATOR = new zzbvc();
    public final String zza;
    public final int zzb;
    public final Bundle zzc;
    public final byte[] zzd;
    public final boolean zze;
    public final String zzf;
    public final String zzg;

    public zzbvb(String str, int i, Bundle bundle, byte[] bArr, boolean z, String str2, String str3) {
        this.zza = str;
        this.zzb = i;
        this.zzc = bundle;
        this.zzd = bArr;
        this.zze = z;
        this.zzf = str2;
        this.zzg = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        int i2 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i2);
        egh.ac(parcel, 3, this.zzc);
        egh.be(parcel, 4, this.zzd);
        boolean z = this.zze;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(z ? 1 : 0);
        egh.p(parcel, 6, this.zzf);
        egh.p(parcel, 7, this.zzg);
        egh.s(parcel, af);
    }
}
