package g;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class aeh extends exk {
    public static final Parcelable.Creator<aeh> CREATOR = new cqu(5);
    public final int zza;

    @Deprecated
    public final long zzb;
    public final Bundle zzc;

    @Deprecated
    public final int zzd;
    public final List zze;
    public final boolean zzf;
    public final int zzg;
    public final boolean zzh;
    public final String zzi;
    public final ela zzj;
    public final Location zzk;
    public final String zzl;
    public final Bundle zzm;
    public final Bundle zzn;
    public final List zzo;
    public final String zzp;
    public final String zzq;

    @Deprecated
    public final boolean zzr;
    public final acl zzs;
    public final int zzt;
    public final String zzu;
    public final List zzv;
    public final int zzw;
    public final String zzx;
    public final int zzy;
    public final long zzz;

    public aeh(int i, long j, Bundle bundle, int i2, List list, boolean z, int i3, boolean z2, String str, ela elaVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List list2, String str3, String str4, boolean z3, acl aclVar, int i4, String str5, List list3, int i5, String str6, int i6, long j2) {
        this.zza = i;
        this.zzb = j;
        this.zzc = bundle == null ? new Bundle() : bundle;
        this.zzd = i2;
        this.zze = list;
        this.zzf = z;
        this.zzg = i3;
        this.zzh = z2;
        this.zzi = str;
        this.zzj = elaVar;
        this.zzk = location;
        this.zzl = str2;
        this.zzm = bundle2 == null ? new Bundle() : bundle2;
        this.zzn = bundle3;
        this.zzo = list2;
        this.zzp = str3;
        this.zzq = str4;
        this.zzr = z3;
        this.zzs = aclVar;
        this.zzt = i4;
        this.zzu = str5;
        this.zzv = list3 == null ? new ArrayList() : list3;
        this.zzw = i5;
        this.zzx = str6;
        this.zzy = i6;
        this.zzz = j2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof aeh) {
            return zza(obj) && this.zzz == ((aeh) obj).zzz;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zza), Long.valueOf(this.zzb), this.zzc, Integer.valueOf(this.zzd), this.zze, Boolean.valueOf(this.zzf), Integer.valueOf(this.zzg), Boolean.valueOf(this.zzh), this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzp, this.zzq, Boolean.valueOf(this.zzr), Integer.valueOf(this.zzt), this.zzu, this.zzv, Integer.valueOf(this.zzw), this.zzx, Integer.valueOf(this.zzy), Long.valueOf(this.zzz)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        long j = this.zzb;
        egh.aq(parcel, 2, 8);
        parcel.writeLong(j);
        egh.ac(parcel, 3, this.zzc);
        int i3 = this.zzd;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(i3);
        egh.am(parcel, 5, this.zze);
        boolean z = this.zzf;
        egh.aq(parcel, 6, 4);
        parcel.writeInt(z ? 1 : 0);
        int i4 = this.zzg;
        egh.aq(parcel, 7, 4);
        parcel.writeInt(i4);
        boolean z2 = this.zzh;
        egh.aq(parcel, 8, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.p(parcel, 9, this.zzi);
        egh.u(parcel, 10, this.zzj, i);
        egh.u(parcel, 11, this.zzk, i);
        egh.p(parcel, 12, this.zzl);
        egh.ac(parcel, 13, this.zzm);
        egh.ac(parcel, 14, this.zzn);
        egh.am(parcel, 15, this.zzo);
        egh.p(parcel, 16, this.zzp);
        egh.p(parcel, 17, this.zzq);
        boolean z3 = this.zzr;
        egh.aq(parcel, 18, 4);
        parcel.writeInt(z3 ? 1 : 0);
        egh.u(parcel, 19, this.zzs, i);
        int i5 = this.zzt;
        egh.aq(parcel, 20, 4);
        parcel.writeInt(i5);
        egh.p(parcel, 21, this.zzu);
        egh.am(parcel, 22, this.zzv);
        int i6 = this.zzw;
        egh.aq(parcel, 23, 4);
        parcel.writeInt(i6);
        egh.p(parcel, 24, this.zzx);
        int i7 = this.zzy;
        egh.aq(parcel, 25, 4);
        parcel.writeInt(i7);
        long j2 = this.zzz;
        egh.aq(parcel, 26, 8);
        parcel.writeLong(j2);
        egh.s(parcel, af);
    }

    public final boolean zza(Object obj) {
        if (!(obj instanceof aeh)) {
            return false;
        }
        aeh aehVar = (aeh) obj;
        return this.zza == aehVar.zza && this.zzb == aehVar.zzb && gs.ay(this.zzc, aehVar.zzc) && this.zzd == aehVar.zzd && ffb.w(this.zze, aehVar.zze) && this.zzf == aehVar.zzf && this.zzg == aehVar.zzg && this.zzh == aehVar.zzh && ffb.w(this.zzi, aehVar.zzi) && ffb.w(this.zzj, aehVar.zzj) && ffb.w(this.zzk, aehVar.zzk) && ffb.w(this.zzl, aehVar.zzl) && gs.ay(this.zzm, aehVar.zzm) && gs.ay(this.zzn, aehVar.zzn) && ffb.w(this.zzo, aehVar.zzo) && ffb.w(this.zzp, aehVar.zzp) && ffb.w(this.zzq, aehVar.zzq) && this.zzr == aehVar.zzr && this.zzt == aehVar.zzt && ffb.w(this.zzu, aehVar.zzu) && ffb.w(this.zzv, aehVar.zzv) && this.zzw == aehVar.zzw && ffb.w(this.zzx, aehVar.zzx) && this.zzy == aehVar.zzy;
    }

    public final boolean zzb() {
        return this.zzc.getBoolean("is_sdk_preload", false);
    }
}
