package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class cxh implements Parcelable.ClassLoaderCreator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13686a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f13686a) {
            case 0:
                if (parcel.readParcelable(null) == null) {
                    return gsw.EMPTY_STATE;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new androidx.fragment.app.h(parcel, null);
            case 2:
                return new epd(parcel, null);
            case 3:
                return new ebu(parcel, null);
            default:
                if (parcel.readParcelable(null) == null) {
                    return byb.dq;
                }
                throw new IllegalStateException("superState must be null");
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f13686a) {
            case 0:
                if (parcel.readParcelable(classLoader) == null) {
                    return gsw.EMPTY_STATE;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new androidx.fragment.app.h(parcel, classLoader);
            case 2:
                return new epd(parcel, classLoader);
            case 3:
                return new ebu(parcel, classLoader);
            default:
                if (parcel.readParcelable(classLoader) == null) {
                    return byb.dq;
                }
                throw new IllegalStateException("superState must be null");
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f13686a) {
            case 0:
                return new gsw[i];
            case 1:
                return new androidx.fragment.app.h[i];
            case 2:
                return new epd[i];
            case 3:
                return new ebu[i];
            default:
                return new byb[i];
        }
    }
}
