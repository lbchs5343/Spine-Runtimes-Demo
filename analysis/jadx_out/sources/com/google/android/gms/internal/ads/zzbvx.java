package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.akx;
import g.egh;
import g.exk;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbvx extends exk {
    public static final Parcelable.Creator<zzbvx> CREATOR = new zzbvy();
    public final Bundle zza;
    public final akx zzb;
    public final ApplicationInfo zzc;
    public final String zzd;
    public final List zze;
    public final PackageInfo zzf;
    public final String zzg;
    public final String zzh;
    public zzfhj zzi;
    public String zzj;
    public final boolean zzk;
    public final boolean zzl;
    public final Bundle zzm;

    public zzbvx(Bundle bundle, akx akxVar, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, String str2, String str3, zzfhj zzfhjVar, String str4, boolean z, boolean z2, Bundle bundle2) {
        this.zza = bundle;
        this.zzb = akxVar;
        this.zzd = str;
        this.zzc = applicationInfo;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = str2;
        this.zzh = str3;
        this.zzi = zzfhjVar;
        this.zzj = str4;
        this.zzk = z;
        this.zzl = z2;
        this.zzm = bundle2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = this.zza;
        int af = egh.af(parcel, 20293);
        egh.ac(parcel, 1, bundle);
        egh.u(parcel, 2, this.zzb, i);
        egh.u(parcel, 3, this.zzc, i);
        egh.p(parcel, 4, this.zzd);
        egh.am(parcel, 5, this.zze);
        egh.u(parcel, 6, this.zzf, i);
        egh.p(parcel, 7, this.zzg);
        egh.p(parcel, 9, this.zzh);
        egh.u(parcel, 10, this.zzi, i);
        egh.p(parcel, 11, this.zzj);
        boolean z = this.zzk;
        egh.aq(parcel, 12, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzl;
        egh.aq(parcel, 13, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.ac(parcel, 14, this.zzm);
        egh.s(parcel, af);
    }
}
