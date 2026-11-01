package g;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityEvent;
import j$.util.Objects;

/* loaded from: classes.dex */
public class ejn implements Parcelable {
    public static final Parcelable.Creator<ejn> CREATOR = new dud(1);
    private CharSequence className;
    private int eventType;
    private CharSequence packageName;
    private CharSequence windowTitle;

    public ejn() {
    }

    public ejn(Parcel parcel) {
        this.eventType = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.packageName = (CharSequence) creator.createFromParcel(parcel);
        this.className = (CharSequence) creator.createFromParcel(parcel);
        this.windowTitle = (CharSequence) creator.createFromParcel(parcel);
    }

    public ejn(AccessibilityEvent accessibilityEvent, CharSequence charSequence) {
        this.eventType = accessibilityEvent.getEventType();
        this.packageName = accessibilityEvent.getPackageName();
        this.className = accessibilityEvent.getClassName();
        this.windowTitle = charSequence;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ejn)) {
            return false;
        }
        ejn ejnVar = (ejn) obj;
        if (this.eventType == ejnVar.eventType && Objects.equals(this.packageName, ejnVar.packageName) && Objects.equals(this.className, ejnVar.className)) {
            return Objects.equals(this.windowTitle, ejnVar.windowTitle);
        }
        return false;
    }

    public CharSequence getClassName() {
        return this.className;
    }

    public int getEventType() {
        return this.eventType;
    }

    public CharSequence getPackageName() {
        return this.packageName;
    }

    public CharSequence getWindowTitle() {
        return this.windowTitle;
    }

    public int hashCode() {
        int i = this.eventType * 31;
        CharSequence charSequence = this.packageName;
        int hashCode = (i + (charSequence != null ? charSequence.hashCode() : 0)) * 31;
        CharSequence charSequence2 = this.className;
        int hashCode2 = (hashCode + (charSequence2 != null ? charSequence2.hashCode() : 0)) * 31;
        CharSequence charSequence3 = this.windowTitle;
        return hashCode2 + (charSequence3 != null ? charSequence3.hashCode() : 0);
    }

    public void setClassName(CharSequence charSequence) {
        this.className = charSequence;
    }

    public void setEventType(int i) {
        this.eventType = i;
    }

    public void setPackageName(CharSequence charSequence) {
        this.packageName = charSequence;
    }

    public void setWindowTitle(CharSequence charSequence) {
        this.windowTitle = charSequence;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.eventType);
        TextUtils.writeToParcel(this.packageName, parcel, 0);
        TextUtils.writeToParcel(this.className, parcel, 0);
        TextUtils.writeToParcel(this.windowTitle, parcel, 0);
    }
}
