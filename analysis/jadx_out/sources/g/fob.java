package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class fob implements Parcelable {
    public static final Parcelable.Creator<fob> CREATOR = new dud(15);
    int mRequestCode;
    String mWho;

    public fob(Parcel parcel) {
        this.mWho = parcel.readString();
        this.mRequestCode = parcel.readInt();
    }

    public fob(String str, int i) {
        this.mWho = str;
        this.mRequestCode = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mRequestCode);
    }
}
