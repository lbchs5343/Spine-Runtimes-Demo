package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class hcm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new fin((edj) parcel.readParcelable(edj.class.getClassLoader()), (edj) parcel.readParcelable(edj.class.getClassLoader()), (ewr) parcel.readParcelable(ewr.class.getClassLoader()), (edj) parcel.readParcelable(edj.class.getClassLoader()), parcel.readInt(), null);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new fin[i];
    }
}
