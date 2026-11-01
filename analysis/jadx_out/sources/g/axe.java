package g;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class axe extends exk {
    public static final Parcelable.Creator<axe> CREATOR = new rj(4);
    private final int zaa;
    private List zab;

    public axe(int i, List list) {
        this.zaa = i;
        this.zab = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int i2 = this.zaa;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.q(parcel, 2, this.zab);
        egh.s(parcel, af);
    }

    public final int zaa() {
        return this.zaa;
    }

    public final List zab() {
        return this.zab;
    }

    public final void zac(brg brgVar) {
        if (this.zab == null) {
            this.zab = new ArrayList();
        }
        this.zab.add(brgVar);
    }
}
