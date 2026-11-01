package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class gll implements Parcelable {
    public static final Parcelable.Creator<gll> CREATOR = new dud(13);
    private long downloadId;
    private boolean isDiff;
    private String packageName;
    private long time;

    public gll(Parcel parcel) {
        this.packageName = parcel.readString();
        this.isDiff = parcel.readByte() != 0;
        this.downloadId = parcel.readLong();
        this.time = parcel.readLong();
    }

    public gll(String str, boolean z, long j) {
        this.packageName = str;
        this.isDiff = z;
        this.downloadId = j;
        this.time = System.currentTimeMillis();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getDownloadId() {
        return this.downloadId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public long getTime() {
        return this.time;
    }

    public boolean isDiff() {
        return this.isDiff;
    }

    public gll setDiff(boolean z) {
        this.isDiff = z;
        return this;
    }

    public gll setDownloadId(long j) {
        this.downloadId = j;
        return this;
    }

    public gll setPackageName(String str) {
        this.packageName = str;
        return this;
    }

    public gll setTime(long j) {
        this.time = j;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeByte(this.isDiff ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.downloadId);
        parcel.writeLong(this.time);
    }
}
