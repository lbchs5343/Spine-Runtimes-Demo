package g;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes3.dex */
public class ekt extends View.BaseSavedState {
    public static final Parcelable.Creator<ekt> CREATOR = new dud(21);
    int checkedState;

    private ekt(Parcel parcel) {
        super(parcel);
        this.checkedState = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
    }

    public /* synthetic */ ekt(Parcel parcel, age ageVar) {
        this(parcel);
    }

    public ekt(Parcelable parcelable) {
        super(parcelable);
    }

    private String getCheckedStateString() {
        int i = this.checkedState;
        return i != 1 ? i != 2 ? "unchecked" : "indeterminate" : "checked";
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" CheckedState=");
        return awf.ad(sb, getCheckedStateString(), "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Integer.valueOf(this.checkedState));
    }
}
