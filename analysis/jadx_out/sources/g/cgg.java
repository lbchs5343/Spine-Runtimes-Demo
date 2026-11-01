package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class cgg implements Parcelable {
    public static final Parcelable.Creator<cgg> CREATOR = new dud(29);
    public static final int TOOL_MODE_NORMAL = 0;
    public static final int TOOL_MODE_TRIAL = 1;
    private int code;
    private boolean isMultiProcess;
    private int mode;

    public cgg(int i, int i2, boolean z) {
        this.code = i;
        this.mode = i2;
        this.isMultiProcess = z;
    }

    public cgg(Parcel parcel) {
        this.code = 0;
        this.mode = 0;
        this.isMultiProcess = false;
        this.code = parcel.readInt();
        this.mode = parcel.readInt();
        this.isMultiProcess = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.code;
    }

    public int getMode() {
        return this.mode;
    }

    public boolean isMultiProcess() {
        return this.isMultiProcess;
    }

    public boolean isTrial() {
        return getMode() == 1;
    }

    public cgg setCode(int i) {
        this.code = i;
        return this;
    }

    public cgg setMode(int i) {
        this.mode = i;
        return this;
    }

    public cgg setMultiProcess(boolean z) {
        this.isMultiProcess = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.code);
        parcel.writeInt(this.mode);
        parcel.writeByte(this.isMultiProcess ? (byte) 1 : (byte) 0);
    }
}
