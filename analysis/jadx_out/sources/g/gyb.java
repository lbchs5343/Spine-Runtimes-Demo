package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class gyb extends exk {
    public static final Parcelable.Creator<gyb> CREATOR = new fbe(8);
    private final String zza;
    private final String zzb;

    public gyb(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, this.zza);
        egh.p(parcel, 2, this.zzb);
        egh.s(parcel, af);
    }
}
