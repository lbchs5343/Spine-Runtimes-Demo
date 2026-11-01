package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class fwx implements Parcelable {
    public static final Parcelable.Creator<fwx> CREATOR = new dud(3);
    public static final int STATUS_INSTALL = 0;
    public static final int STATUS_OPEN = 1;
    public static final int STATUS_UPDATE = 2;
    private String attraction;
    private String desc;
    private String iconUrl;
    private String name;
    private String packageName;
    private long size;
    private int status;
    private String url;
    private String version;
    private int versionCode;

    public fwx() {
        this.status = 0;
    }

    public fwx(Parcel parcel) {
        this.status = 0;
        this.name = parcel.readString();
        this.packageName = parcel.readString();
        this.iconUrl = parcel.readString();
        this.version = parcel.readString();
        this.versionCode = parcel.readInt();
        this.url = parcel.readString();
        this.attraction = parcel.readString();
        this.desc = parcel.readString();
        this.size = parcel.readLong();
        this.status = parcel.readInt();
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

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public long getSize() {
        return this.size;
    }

    public int getStatus() {
        return this.status;
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

    public fwx setAttraction(String str) {
        this.attraction = str;
        return this;
    }

    public fwx setDesc(String str) {
        this.desc = str;
        return this;
    }

    public fwx setIconUrl(String str) {
        this.iconUrl = str;
        return this;
    }

    public fwx setName(String str) {
        this.name = str;
        return this;
    }

    public fwx setPackageName(String str) {
        this.packageName = str;
        return this;
    }

    public fwx setSize(long j) {
        this.size = j;
        return this;
    }

    public fwx setStatus(int i) {
        this.status = i;
        return this;
    }

    public fwx setUrl(String str) {
        this.url = str;
        return this;
    }

    public fwx setVersion(String str) {
        this.version = str;
        return this;
    }

    public fwx setVersionCode(int i) {
        this.versionCode = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.packageName);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.version);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.url);
        parcel.writeString(this.attraction);
        parcel.writeString(this.desc);
        parcel.writeLong(this.size);
        parcel.writeInt(this.status);
    }
}
