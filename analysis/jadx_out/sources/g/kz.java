package g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public abstract class kz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f19577a = 0;

    static {
        kz.class.getClassLoader();
    }

    public static Parcelable b(Parcel parcel) {
        Parcelable.Creator creator = Bundle.CREATOR;
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }
}
