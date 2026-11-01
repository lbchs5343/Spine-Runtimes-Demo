package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class ela extends exk {
    public static final Parcelable.Creator<ela> CREATOR = new fbe(28);
    public final String zza;

    public ela(cvy cvyVar) {
        throw null;
    }

    public ela(String str) {
        this.zza = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 15, str);
        egh.s(parcel, af);
    }
}
