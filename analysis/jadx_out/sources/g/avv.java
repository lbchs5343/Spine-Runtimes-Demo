package g;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;

/* loaded from: classes.dex */
public class avv implements Parcelable {
    public static final Parcelable.Creator<avv> CREATOR = new dud(10);
    private String color;
    private boolean isCustom;
    private String name;

    public avv(Parcel parcel) {
        this.color = parcel.readString();
        this.name = parcel.readString();
        this.isCustom = parcel.readByte() != 0;
    }

    public avv(String str, String str2) {
        this.color = str;
        this.name = str2;
        this.isCustom = false;
    }

    public avv(String str, String str2, boolean z) {
        this.color = str;
        this.name = str2;
        this.isCustom = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof avv)) {
            return false;
        }
        avv avvVar = (avv) obj;
        return this.isCustom == avvVar.isCustom && Objects.equals(this.color, avvVar.color) && Objects.equals(this.name, avvVar.name);
    }

    public String getColor() {
        return this.color;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return ((Objects.hashCode(this.name) + (Objects.hashCode(this.color) * 31)) * 31) + (this.isCustom ? 1231 : 1237);
    }

    public boolean isCustom() {
        return this.isCustom;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setCustom(boolean z) {
        this.isCustom = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.color);
        parcel.writeString(this.name);
        parcel.writeByte(this.isCustom ? (byte) 1 : (byte) 0);
    }
}
