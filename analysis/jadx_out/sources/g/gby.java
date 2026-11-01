package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class gby extends exk {
    public static final Parcelable.Creator<gby> CREATOR = new cqu(17);
    public final int zza;

    public gby(int i) {
        this.zza = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i2);
        egh.s(parcel, af);
    }
}
