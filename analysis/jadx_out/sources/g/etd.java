package g;

import android.os.Parcel;
import android.os.Parcelable;
import g.fxe;

/* loaded from: classes.dex */
public final class etd implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new fxe.b(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new fxe.b[i];
    }
}
