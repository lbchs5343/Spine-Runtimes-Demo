package g;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public class bhj extends View.BaseSavedState {
    public static final Parcelable.Creator<bhj> CREATOR = new dud(20);

    /* renamed from: d, reason: collision with root package name */
    int f11588d;
    String dq;
    int iw;
    int mn;
    float ox;
    boolean p;
    String s;

    private bhj(Parcel parcel) {
        super(parcel);
        this.dq = parcel.readString();
        this.ox = parcel.readFloat();
        this.p = parcel.readInt() == 1;
        this.s = parcel.readString();
        this.iw = parcel.readInt();
        this.mn = parcel.readInt();
    }

    public /* synthetic */ bhj(Parcel parcel, fmf fmfVar) {
        this(parcel);
    }

    public bhj(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.dq);
        parcel.writeFloat(this.ox);
        parcel.writeInt(this.p ? 1 : 0);
        parcel.writeString(this.s);
        parcel.writeInt(this.iw);
        parcel.writeInt(this.mn);
    }
}
