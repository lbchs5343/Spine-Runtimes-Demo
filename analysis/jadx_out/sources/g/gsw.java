package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public abstract class gsw implements Parcelable {
    private final Parcelable mSuperState;
    public static final gsw EMPTY_STATE = new a();
    public static final Parcelable.Creator<gsw> CREATOR = new cxh(0);

    public class a extends gsw {
        public a() {
            super((a) null);
        }
    }

    private gsw() {
        this.mSuperState = null;
    }

    public gsw(Parcel parcel) {
        this(parcel, null);
    }

    public gsw(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.mSuperState = readParcelable == null ? EMPTY_STATE : readParcelable;
    }

    public gsw(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.mSuperState = parcelable == EMPTY_STATE ? null : parcelable;
    }

    public /* synthetic */ gsw(a aVar) {
        this();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Parcelable getSuperState() {
        return this.mSuperState;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mSuperState, i);
    }
}
