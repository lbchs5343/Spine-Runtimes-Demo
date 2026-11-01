package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class gpi extends exk {
    public static final Parcelable.Creator<gpi> CREATOR = new rj(9);
    final int zaa;
    private final nk zab;
    private final cnd zac;

    public gpi(int i, nk nkVar, cnd cndVar) {
        this.zaa = i;
        this.zab = nkVar;
        this.zac = cndVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int i2 = this.zaa;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.u(parcel, 2, this.zab, i);
        egh.u(parcel, 3, this.zac, i);
        egh.s(parcel, af);
    }

    public final nk zaa() {
        return this.zab;
    }

    public final cnd zab() {
        return this.zac;
    }
}
