package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class epd extends gsw {
    public static final Parcelable.Creator<epd> CREATOR = new cxh(2);
    Parcelable adapterState;
    ClassLoader loader;
    int position;

    public epd(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
        this.position = parcel.readInt();
        this.adapterState = parcel.readParcelable(classLoader);
        this.loader = classLoader;
    }

    public epd(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" position=");
        return awf.x(sb, this.position, "}");
    }

    @Override // g.gsw, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.position);
        parcel.writeParcelable(this.adapterState, i);
    }
}
