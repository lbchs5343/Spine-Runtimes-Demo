package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public abstract class byb implements Parcelable {

    /* renamed from: d, reason: collision with root package name */
    private final Parcelable f12429d;
    public static final byb dq = new a();
    public static final Parcelable.Creator<byb> CREATOR = new cxh(4);

    public static class a extends byb {
        public a() {
            super((a) null);
        }
    }

    private byb() {
        this.f12429d = null;
    }

    public byb(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f12429d = readParcelable == null ? dq : readParcelable;
    }

    public byb(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.f12429d = parcelable == dq ? null : parcelable;
    }

    public /* synthetic */ byb(a aVar) {
        this();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Parcelable dq() {
        return this.f12429d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f12429d, i);
    }
}
