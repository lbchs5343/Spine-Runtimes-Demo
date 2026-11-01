package g;

import android.os.Parcel;
import android.os.Parcelable;
import g.fxe;

/* loaded from: classes.dex */
public final class fjh implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new fxe.c(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new fxe.c[i];
    }
}
