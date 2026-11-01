package g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class uf extends exk {
    public static final Parcelable.Creator<uf> CREATOR = new cqu(16);
    public final String zza;
    public long zzb;
    public abz zzc;
    public final Bundle zzd;
    public final String zze;
    public final String zzf;
    public final String zzg;
    public final String zzh;

    public uf(String str, long j, abz abzVar, Bundle bundle, String str2, String str3, String str4, String str5) {
        this.zza = str;
        this.zzb = j;
        this.zzc = abzVar;
        this.zzd = bundle;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = str4;
        this.zzh = str5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        long j = this.zzb;
        egh.aq(parcel, 2, 8);
        parcel.writeLong(j);
        egh.u(parcel, 3, this.zzc, i);
        egh.ac(parcel, 4, this.zzd);
        egh.p(parcel, 5, this.zze);
        egh.p(parcel, 6, this.zzf);
        egh.p(parcel, 7, this.zzg);
        egh.p(parcel, 8, this.zzh);
        egh.s(parcel, af);
    }
}
