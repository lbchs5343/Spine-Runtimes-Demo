package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class acl extends exk {
    public static final Parcelable.Creator<acl> CREATOR = new fbe(18);
    public final String zza;
    public final String zzb;

    public acl(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        egh.p(parcel, 2, this.zzb);
        egh.s(parcel, af);
    }
}
