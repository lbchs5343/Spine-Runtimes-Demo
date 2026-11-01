package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class bn implements Parcelable {
    public static final Parcelable.Creator<bn> CREATOR = new dud(23);
    private int count;

    public bn() {
        this.count = 0;
    }

    public bn(Parcel parcel) {
        this.count = 0;
        this.count = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCount() {
        return this.count;
    }

    public void setCount(int i) {
        this.count = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.count);
    }
}
