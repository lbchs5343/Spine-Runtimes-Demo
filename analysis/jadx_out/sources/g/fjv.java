package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class fjv implements Parcelable {
    public static final Parcelable.Creator<fjv> CREATOR = new rj(1);
    private String attraction;
    private String desc;
    private String diffUrl;
    private boolean isDiffUpdate;
    private boolean isForce;
    private boolean isUpdateByDownload;
    private String md5;
    private int oldVersionCode;
    private String packageName;
    private String url;
    private String version;
    private int versionCode;

    public fjv() {
        this.versionCode = 0;
        this.isUpdateByDownload = false;
        this.isForce = false;
        this.isDiffUpdate = false;
    }

    public fjv(Parcel parcel) {
        this.versionCode = 0;
        this.isUpdateByDownload = false;
        this.isForce = false;
        this.isDiffUpdate = false;
        this.version = parcel.readString();
        this.versionCode = parcel.readInt();
        this.attraction = parcel.readString();
        this.desc = parcel.readString();
        this.packageName = parcel.readString();
        this.isUpdateByDownload = parcel.readByte() != 0;
        this.url = parcel.readString();
        this.isForce = parcel.readByte() != 0;
        this.isDiffUpdate = parcel.readByte() != 0;
        this.oldVersionCode = parcel.readInt();
        this.diffUrl = parcel.readString();
        this.md5 = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAttraction() {
        return this.attraction;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getDiffUrl() {
        return this.diffUrl;
    }

    public String getMd5() {
        return this.md5;
    }

    public int getOldVersionCode() {
        return this.oldVersionCode;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVersion() {
        return this.version;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public boolean isDiffUpdate() {
        return this.isDiffUpdate;
    }

    public boolean isForce() {
        return this.isForce;
    }

    public boolean isUpdateByDownload() {
        return this.isUpdateByDownload;
    }

    public fjv setAttraction(String str) {
        this.attraction = str;
        return this;
    }

    public fjv setDesc(String str) {
        this.desc = str;
        return this;
    }

    public fjv setDiffUpdate(boolean z) {
        this.isDiffUpdate = z;
        return this;
    }

    public fjv setDiffUrl(String str) {
        this.diffUrl = str;
        return this;
    }

    public fjv setForce(boolean z) {
        this.isForce = z;
        return this;
    }

    public fjv setMd5(String str) {
        this.md5 = str;
        return this;
    }

    public fjv setOldVersionCode(int i) {
        this.oldVersionCode = i;
        return this;
    }

    public fjv setPackageName(String str) {
        this.packageName = str;
        return this;
    }

    public fjv setUpdateByDownload(boolean z) {
        this.isUpdateByDownload = z;
        return this;
    }

    public fjv setUrl(String str) {
        this.url = str;
        return this;
    }

    public fjv setVersion(String str) {
        this.version = str;
        return this;
    }

    public fjv setVersionCode(int i) {
        this.versionCode = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.version);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.attraction);
        parcel.writeString(this.desc);
        parcel.writeString(this.packageName);
        parcel.writeByte(this.isUpdateByDownload ? (byte) 1 : (byte) 0);
        parcel.writeString(this.url);
        parcel.writeByte(this.isForce ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isDiffUpdate ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.oldVersionCode);
        parcel.writeString(this.diffUrl);
        parcel.writeString(this.md5);
    }
}
