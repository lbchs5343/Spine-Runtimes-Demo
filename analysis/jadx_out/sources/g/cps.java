package g;

import android.os.Parcel;
import android.os.Parcelable;
import g.fxe;

/* loaded from: classes.dex */
public final class cps implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new fxe.f(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new fxe.f[i];
    }
}
