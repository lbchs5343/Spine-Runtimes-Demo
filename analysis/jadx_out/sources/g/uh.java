package g;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public final class uh extends exk {
    public static final Parcelable.Creator<uh> CREATOR = new rj(5);
    final int zaa;
    private int zab;
    private Intent zac;

    public uh() {
        this(2, 0, null);
    }

    public uh(int i, int i2, Intent intent) {
        this.zaa = i;
        this.zab = i2;
        this.zac = intent;
    }

    public final Status getStatus() {
        return this.zab == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zab;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        egh.u(parcel, 3, this.zac, i);
        egh.s(parcel, af);
    }
}
