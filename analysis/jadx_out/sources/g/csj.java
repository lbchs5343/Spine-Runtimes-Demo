package g;

import android.os.Parcel;

/* loaded from: classes3.dex */
public final class csj extends RuntimeException {
    public csj(String str, Parcel parcel) {
        super(str + " Parcel: pos=" + parcel.dataPosition() + " size=" + parcel.dataSize());
    }
}
