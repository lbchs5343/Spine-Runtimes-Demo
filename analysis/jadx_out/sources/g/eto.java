package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class eto extends exk {
    public static final Parcelable.Creator<eto> CREATOR = new rj(8);
    final int zaa;
    final fty zab;

    public eto(int i, fty ftyVar) {
        this.zaa = i;
        this.zab = ftyVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int i2 = this.zaa;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.u(parcel, 2, this.zab, i);
        egh.s(parcel, af);
    }
}
