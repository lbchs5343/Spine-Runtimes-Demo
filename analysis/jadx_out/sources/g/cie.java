package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class cie extends exk {
    public static final Parcelable.Creator<cie> CREATOR = new fbe(11);
    public final String zza;
    public final String zzb;
    public final String zzc;

    public cie(String str, String str2, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        egh.p(parcel, 2, this.zzb);
        egh.p(parcel, 3, this.zzc);
        egh.s(parcel, af);
    }
}
