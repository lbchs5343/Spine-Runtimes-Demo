package g;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import java.util.List;

/* loaded from: classes3.dex */
public final class eoj extends exk {
    public static final Parcelable.Creator<eoj> CREATOR = new rj(7);
    private final List zaa;
    private final String zab;

    public eoj(List list, String str) {
        this.zaa = list;
        this.zab = str;
    }

    public final Status getStatus() {
        return this.zab != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        List list = this.zaa;
        int af = egh.af(parcel, 20293);
        egh.am(parcel, 1, list);
        egh.p(parcel, 2, this.zab);
        egh.s(parcel, af);
    }
}
