package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class cbf<T extends Parcelable> implements Parcelable {
    public static final Parcelable.Creator<cbf> CREATOR = new dud(8);
    private int code;
    private T data;
    private String message;

    public cbf() {
    }

    public cbf(int i, String str, T t) {
        this.code = i;
        this.message = str;
        this.data = t;
    }

    private cbf(Parcel parcel) {
        this.code = parcel.readInt();
        this.message = parcel.readString();
        this.data = (T) parcel.readParcelable(cbf.class.getClassLoader());
    }

    public /* synthetic */ cbf(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.code;
    }

    public T getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public cbf setCode(int i) {
        this.code = i;
        return this;
    }

    public cbf setData(T t) {
        this.data = t;
        return this;
    }

    public cbf setMessage(String str) {
        this.message = str;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.code);
        parcel.writeString(this.message);
        parcel.writeParcelable(this.data, i);
    }
}
