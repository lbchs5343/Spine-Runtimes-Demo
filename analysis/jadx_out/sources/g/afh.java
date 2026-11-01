package g;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;

/* loaded from: classes3.dex */
public final class afh extends exk {
    public static final Parcelable.Creator<afh> CREATOR = new cqu(8);
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final long zze;
    public final long zzf;
    public final String zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final long zzj;
    public final String zzk;

    @Deprecated
    public final long zzl;
    public final long zzm;
    public final int zzn;
    public final boolean zzo;
    public final boolean zzp;
    public final String zzq;
    public final Boolean zzr;
    public final long zzs;
    public final List zzt;
    public final String zzu;
    public final String zzv;
    public final String zzw;
    public final String zzx;

    public afh(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List list, String str8, String str9, String str10, String str11) {
        ckd.bf(str);
        this.zza = str;
        this.zzb = true == TextUtils.isEmpty(str2) ? null : str2;
        this.zzc = str3;
        this.zzj = j;
        this.zzd = str4;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = 0L;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = null;
        this.zzv = str9;
        this.zzw = str10;
        this.zzx = str11;
    }

    public afh(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List list, String str8, String str9, String str10, String str11) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzj = j3;
        this.zzd = str4;
        this.zze = j;
        this.zzf = j2;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = j4;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = str8;
        this.zzv = str9;
        this.zzw = str10;
        this.zzx = str11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, this.zza);
        egh.p(parcel, 3, this.zzb);
        egh.p(parcel, 4, this.zzc);
        egh.p(parcel, 5, this.zzd);
        long j = this.zze;
        egh.aq(parcel, 6, 8);
        parcel.writeLong(j);
        long j2 = this.zzf;
        egh.aq(parcel, 7, 8);
        parcel.writeLong(j2);
        egh.p(parcel, 8, this.zzg);
        boolean z = this.zzh;
        egh.aq(parcel, 9, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzi;
        egh.aq(parcel, 10, 4);
        parcel.writeInt(z2 ? 1 : 0);
        long j3 = this.zzj;
        egh.aq(parcel, 11, 8);
        parcel.writeLong(j3);
        egh.p(parcel, 12, this.zzk);
        long j4 = this.zzl;
        egh.aq(parcel, 13, 8);
        parcel.writeLong(j4);
        long j5 = this.zzm;
        egh.aq(parcel, 14, 8);
        parcel.writeLong(j5);
        int i2 = this.zzn;
        egh.aq(parcel, 15, 4);
        parcel.writeInt(i2);
        boolean z3 = this.zzo;
        egh.aq(parcel, 16, 4);
        parcel.writeInt(z3 ? 1 : 0);
        boolean z4 = this.zzp;
        egh.aq(parcel, 18, 4);
        parcel.writeInt(z4 ? 1 : 0);
        egh.p(parcel, 19, this.zzq);
        Boolean bool = this.zzr;
        if (bool != null) {
            egh.aq(parcel, 21, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        long j6 = this.zzs;
        egh.aq(parcel, 22, 8);
        parcel.writeLong(j6);
        egh.am(parcel, 23, this.zzt);
        egh.p(parcel, 24, this.zzu);
        egh.p(parcel, 25, this.zzv);
        egh.p(parcel, 26, this.zzw);
        egh.p(parcel, 27, this.zzx);
        egh.s(parcel, af);
    }
}
