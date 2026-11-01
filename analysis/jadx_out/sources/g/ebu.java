package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ebu extends byb {
    public static final Parcelable.Creator<ebu> CREATOR = new cxh(3);

    /* renamed from: d, reason: collision with root package name */
    int f15259d;
    Parcelable ox;
    ClassLoader p;

    public ebu(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
        this.f15259d = parcel.readInt();
        this.ox = parcel.readParcelable(classLoader);
        this.p = classLoader;
    }

    public ebu(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" position=");
        return awf.x(sb, this.f15259d, "}");
    }

    @Override // g.byb, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f15259d);
        parcel.writeParcelable(this.ox, i);
    }
}
