package g;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class etg extends exk {
    public static final Parcelable.Creator<etg> CREATOR = new fbe(12);
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final String zze;
    public final String zzf;
    public final String zzg;
    public final Intent zzh;
    public final fre zzi;
    public final boolean zzj;

    public etg(Intent intent, fre freVar) {
        this(null, null, null, null, null, null, null, intent, new bpp(freVar), false);
    }

    public etg(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = str5;
        this.zzf = str6;
        this.zzg = str7;
        this.zzh = intent;
        this.zzi = (fre) bpp.b(bpp.d(iBinder));
        this.zzj = z;
    }

    public etg(String str, String str2, String str3, String str4, String str5, String str6, String str7, fre freVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, new bpp(freVar), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, str);
        egh.p(parcel, 3, this.zzb);
        egh.p(parcel, 4, this.zzc);
        egh.p(parcel, 5, this.zzd);
        egh.p(parcel, 6, this.zze);
        egh.p(parcel, 7, this.zzf);
        egh.p(parcel, 8, this.zzg);
        egh.u(parcel, 9, this.zzh, i);
        egh.az(parcel, 10, new bpp(this.zzi));
        boolean z = this.zzj;
        egh.aq(parcel, 11, 4);
        parcel.writeInt(z ? 1 : 0);
        egh.s(parcel, af);
    }
}
