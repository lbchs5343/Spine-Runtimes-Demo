package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbuv extends exk {
    public static final Parcelable.Creator<zzbuv> CREATOR = new zzbuw();
    public final ApplicationInfo zza;
    public final String zzb;
    public final PackageInfo zzc;
    public final String zzd;
    public final int zze;
    public final String zzf;
    public final List zzg;
    public final boolean zzh;
    public final boolean zzi;

    public zzbuv(ApplicationInfo applicationInfo, String str, PackageInfo packageInfo, String str2, int i, String str3, List list, boolean z, boolean z2) {
        this.zzb = str;
        this.zza = applicationInfo;
        this.zzc = packageInfo;
        this.zzd = str2;
        this.zze = i;
        this.zzf = str3;
        this.zzg = list;
        this.zzh = z;
        this.zzi = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ApplicationInfo applicationInfo = this.zza;
        int af = egh.af(parcel, 20293);
        egh.u(parcel, 1, applicationInfo, i);
        egh.p(parcel, 2, this.zzb);
        egh.u(parcel, 3, this.zzc, i);
        egh.p(parcel, 4, this.zzd);
        int i2 = this.zze;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(i2);
        egh.p(parcel, 6, this.zzf);
        egh.am(parcel, 7, this.zzg);
        boolean z = this.zzh;
        egh.aq(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzi;
        egh.aq(parcel, 9, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.s(parcel, af);
    }
}
