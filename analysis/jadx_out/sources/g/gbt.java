package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class gbt implements Parcelable {
    public static final Parcelable.Creator<gbt> CREATOR = new rj(3);
    private String initSubTitle;
    private String initTitle;
    private String initUrl;
    private boolean isAutoSetSubTitle;
    private boolean isAutoSetTitle;
    private boolean isCopyLinkable;
    private boolean isFindAble;
    private boolean isFindShowed;
    private boolean isLineNumberChecked;
    private boolean isLineNumberable;
    private boolean isOpenWithOtherApp;
    private boolean isShareable;
    private boolean isShortcutable;
    private boolean isShowOverrideFailTips;
    private boolean isSubtitleShowFullUrl;
    private boolean isWrapChecked;
    private boolean isWrapable;
    private boolean isZoomChecked;
    private boolean isZoomable;
    private String shareAttachmentText;
    private String uaAppName;

    public gbt() {
        this.isAutoSetSubTitle = true;
        this.shareAttachmentText = null;
        this.uaAppName = null;
        this.isShareable = true;
        this.isShortcutable = true;
        this.isCopyLinkable = true;
        this.isZoomable = true;
        this.isZoomChecked = false;
        this.isOpenWithOtherApp = true;
        this.isSubtitleShowFullUrl = false;
        this.isShowOverrideFailTips = true;
        this.isFindAble = true;
        this.isFindShowed = false;
        this.isWrapable = false;
        this.isWrapChecked = false;
        this.isLineNumberable = false;
        this.isLineNumberChecked = true;
    }

    public gbt(Parcel parcel) {
        this.isAutoSetTitle = parcel.readByte() != 0;
        this.isAutoSetSubTitle = parcel.readByte() != 0;
        this.shareAttachmentText = parcel.readString();
        this.initTitle = parcel.readString();
        this.initSubTitle = parcel.readString();
        this.initUrl = parcel.readString();
        this.uaAppName = parcel.readString();
        this.isShareable = parcel.readByte() != 0;
        this.isShortcutable = parcel.readByte() != 0;
        this.isCopyLinkable = parcel.readByte() != 0;
        this.isZoomable = parcel.readByte() != 0;
        this.isZoomChecked = parcel.readByte() != 0;
        this.isOpenWithOtherApp = parcel.readByte() != 0;
        this.isSubtitleShowFullUrl = parcel.readByte() != 0;
        this.isShowOverrideFailTips = parcel.readByte() != 0;
        this.isFindAble = parcel.readByte() != 0;
        this.isFindShowed = parcel.readByte() != 0;
        this.isWrapable = parcel.readByte() != 0;
        this.isWrapChecked = parcel.readByte() != 0;
        this.isLineNumberable = parcel.readByte() != 0;
        this.isLineNumberChecked = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getInitSubTitle() {
        return this.initSubTitle;
    }

    public String getInitTitle() {
        return this.initTitle;
    }

    public String getInitUrl() {
        return this.initUrl;
    }

    public String getShareAttachmentText() {
        return this.shareAttachmentText;
    }

    public String getUAAppName() {
        return this.uaAppName;
    }

    public String getUaAppName() {
        return this.uaAppName;
    }

    public boolean isAutoSetSubTitle() {
        return this.isAutoSetSubTitle;
    }

    public boolean isAutoSetTitle() {
        return this.isAutoSetTitle;
    }

    public boolean isCopyLinkable() {
        return this.isCopyLinkable;
    }

    public boolean isFindAble() {
        return this.isFindAble;
    }

    public boolean isFindShowed() {
        return this.isFindShowed;
    }

    public boolean isLineNumberChecked() {
        return this.isLineNumberChecked;
    }

    public boolean isLineNumberable() {
        return this.isLineNumberable;
    }

    public boolean isOpenWithOtherApp() {
        return this.isOpenWithOtherApp;
    }

    public boolean isShareable() {
        return this.isShareable;
    }

    public boolean isShortcutable() {
        return this.isShortcutable;
    }

    public boolean isShowOverrideFailTips() {
        return this.isShowOverrideFailTips;
    }

    public boolean isSubtitleShowFullUrl() {
        return this.isSubtitleShowFullUrl;
    }

    public boolean isWrapChecked() {
        return this.isWrapChecked;
    }

    public boolean isWrapable() {
        return this.isWrapable;
    }

    public boolean isZoomChecked() {
        return this.isZoomChecked;
    }

    public boolean isZoomable() {
        return this.isZoomable;
    }

    public gbt setAutoSetSubTitle(boolean z) {
        this.isAutoSetSubTitle = z;
        return this;
    }

    public gbt setAutoSetTitle(boolean z) {
        this.isAutoSetTitle = z;
        return this;
    }

    public gbt setCopyLinkable(boolean z) {
        this.isCopyLinkable = z;
        return this;
    }

    public void setFindAble(boolean z) {
        this.isFindAble = z;
    }

    public void setFindShowed(boolean z) {
        this.isFindShowed = z;
    }

    public gbt setInitSubTitle(String str) {
        this.initSubTitle = str;
        return this;
    }

    public gbt setInitTitle(String str) {
        this.initTitle = str;
        return this;
    }

    public gbt setInitUrl(String str) {
        this.initUrl = str;
        return this;
    }

    public void setLineNumberChecked(boolean z) {
        this.isLineNumberChecked = z;
    }

    public void setLineNumberable(boolean z) {
        this.isLineNumberable = z;
    }

    public gbt setOpenWithOtherApp(boolean z) {
        this.isOpenWithOtherApp = z;
        return this;
    }

    public gbt setShareAttachmentText(String str) {
        this.shareAttachmentText = str;
        return this;
    }

    public gbt setShareable(boolean z) {
        this.isShareable = z;
        return this;
    }

    public gbt setShortcutable(boolean z) {
        this.isShortcutable = z;
        return this;
    }

    public gbt setShowOverrideFailTips(boolean z) {
        this.isShowOverrideFailTips = z;
        return this;
    }

    public void setSubtitleShowFullUrl(boolean z) {
        this.isSubtitleShowFullUrl = z;
    }

    public gbt setUAAppName(String str) {
        this.uaAppName = str;
        return this;
    }

    public void setUaAppName(String str) {
        this.uaAppName = str;
    }

    public void setWrapChecked(boolean z) {
        this.isWrapChecked = z;
    }

    public void setWrapable(boolean z) {
        this.isWrapable = z;
    }

    public gbt setZoomChecked(boolean z) {
        this.isZoomChecked = z;
        return this;
    }

    public gbt setZoomable(boolean z) {
        this.isZoomable = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isAutoSetTitle ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isAutoSetSubTitle ? (byte) 1 : (byte) 0);
        parcel.writeString(this.shareAttachmentText);
        parcel.writeString(this.initTitle);
        parcel.writeString(this.initSubTitle);
        parcel.writeString(this.initUrl);
        parcel.writeString(this.uaAppName);
        parcel.writeByte(this.isShareable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isShortcutable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isCopyLinkable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isZoomable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isZoomChecked ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isOpenWithOtherApp ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isSubtitleShowFullUrl ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isShowOverrideFailTips ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isFindAble ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isFindShowed ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isWrapable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isWrapChecked ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isLineNumberable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isLineNumberChecked ? (byte) 1 : (byte) 0);
    }
}
