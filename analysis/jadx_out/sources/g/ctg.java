package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ctg implements Parcelable {
    public static final Parcelable.Creator<ctg> CREATOR = new dud(4);
    private fwx[] allianceArray;
    private String header;

    public ctg() {
    }

    public ctg(Parcel parcel) {
        this.header = parcel.readString();
        this.allianceArray = (fwx[]) parcel.createTypedArray(fwx.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public fwx[] getAllianceArray() {
        return this.allianceArray;
    }

    public String getHeader() {
        return this.header;
    }

    public ctg setAllianceArray(fwx[] fwxVarArr) {
        this.allianceArray = fwxVarArr;
        return this;
    }

    public ctg setHeader(String str) {
        this.header = str;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.header);
        parcel.writeTypedArray(this.allianceArray, i);
    }
}
