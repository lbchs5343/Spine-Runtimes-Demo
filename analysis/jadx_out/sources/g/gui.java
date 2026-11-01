package g;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public abstract class gui {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f18774a = 0;

    static {
        gui.class.getClassLoader();
    }

    public static Parcelable b(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void c(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail > 0) {
            throw new BadParcelableException(awf.ac(dataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }
}
