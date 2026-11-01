package g;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public class ddq extends View.BaseSavedState {
    public static final Parcelable.Creator<ddq> CREATOR = new dud(5);
    boolean mShowDropdown;

    public ddq(Parcel parcel) {
        super(parcel);
        this.mShowDropdown = parcel.readByte() != 0;
    }

    public ddq(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.mShowDropdown ? (byte) 1 : (byte) 0);
    }
}
