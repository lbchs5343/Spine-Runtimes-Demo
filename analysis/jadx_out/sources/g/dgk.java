package g;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import j$.util.Objects;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes.dex */
public class dgk implements cng, Parcelable {
    public static final Parcelable.Creator<dgk> CREATOR = new dud(18);
    public static final int DISPLAY_AREA_BOTTOM = 256;
    public static final int DISPLAY_AREA_CENTER = 16;
    public static final int DISPLAY_AREA_NONE = 0;
    public static final int DISPLAY_AREA_TOP = 1;
    public static final int ICON_TYPE_LOCAL_IMAGE_RES = 1;
    public static final int ICON_TYPE_ONLINE_IMAGE = 2;
    public static final int ICON_TYPE_TEXT = 3;
    public static final int PATH_COMPONENT = 3;
    public static final int PATH_LOCAL_PACKAGE = 2;
    public static final int PATH_URI = 4;
    public static final int PATH_URL = 5;
    public static final int PATH_URL_IN_APP = 1;
    public static final int SHOW_ALL = 286331153;
    public static final int SHOW_NOT = 0;
    public static final int SHOW_ONLY_EN = 1;
    public static final int SHOW_ONLY_ZH_CN = 16;
    public static final String UNIT_DAY = "day";
    public static final String UNIT_HOUR = "hour";
    public static final String UNIT_MINUTE = "minute";
    public static final String UNIT_SECOND = "second";
    private String beginDate;
    private String copyText;
    private String cornerTipIconUrl;
    public int cornerTipInterval;
    public String cornerTipIntervalUnit;
    private int displayArea;
    private String endDate;
    private String eventId;
    private int iconResId;
    private String iconText;
    private int iconType;
    private String iconUrl;
    private String id;
    private boolean isShowCornerTip;
    private boolean isSpace;
    private int maxSdkVersion;
    private int minSdkVersion;
    private String name;
    private int nameResId;
    private View.OnClickListener onClickListener;
    public String path;
    public int pathType;
    private int show;
    private String toast;

    public dgk() {
        this.nameResId = -1;
        this.iconType = 1;
        this.iconResId = -1;
        this.show = 286331153;
        this.displayArea = 0;
        this.pathType = 2;
        this.minSdkVersion = -1;
        this.maxSdkVersion = -1;
        this.isShowCornerTip = false;
        this.cornerTipIntervalUnit = UNIT_DAY;
        this.cornerTipInterval = 1;
        this.isSpace = false;
    }

    public dgk(Parcel parcel) {
        this.nameResId = -1;
        this.iconType = 1;
        this.iconResId = -1;
        this.show = 286331153;
        this.displayArea = 0;
        this.pathType = 2;
        this.minSdkVersion = -1;
        this.maxSdkVersion = -1;
        this.isShowCornerTip = false;
        this.cornerTipIntervalUnit = UNIT_DAY;
        this.cornerTipInterval = 1;
        this.isSpace = false;
        this.id = parcel.readString();
        this.name = parcel.readString();
        this.nameResId = parcel.readInt();
        this.iconType = parcel.readInt();
        this.iconResId = parcel.readInt();
        this.iconUrl = parcel.readString();
        this.iconText = parcel.readString();
        this.show = parcel.readInt();
        this.displayArea = parcel.readInt();
        this.pathType = parcel.readInt();
        this.path = parcel.readString();
        this.eventId = parcel.readString();
        this.copyText = parcel.readString();
        this.toast = parcel.readString();
        this.cornerTipIntervalUnit = parcel.readString();
        this.cornerTipInterval = parcel.readInt();
        this.minSdkVersion = parcel.readInt();
        this.maxSdkVersion = parcel.readInt();
        this.isShowCornerTip = parcel.readByte() != 0;
        this.cornerTipIconUrl = parcel.readString();
        this.isSpace = parcel.readByte() != 0;
        this.beginDate = parcel.readString();
        this.endDate = parcel.readString();
    }

    public dgk(String str, int i, int i2) {
        this.show = 286331153;
        this.displayArea = 0;
        this.pathType = 2;
        this.minSdkVersion = -1;
        this.maxSdkVersion = -1;
        this.isShowCornerTip = false;
        this.cornerTipIntervalUnit = UNIT_DAY;
        this.cornerTipInterval = 1;
        this.isSpace = false;
        this.id = str;
        this.nameResId = i;
        this.iconResId = i2;
        this.iconType = 1;
    }

    public dgk(String str, String str2, int i) {
        this.nameResId = -1;
        this.show = 286331153;
        this.displayArea = 0;
        this.pathType = 2;
        this.minSdkVersion = -1;
        this.maxSdkVersion = -1;
        this.isShowCornerTip = false;
        this.cornerTipIntervalUnit = UNIT_DAY;
        this.cornerTipInterval = 1;
        this.isSpace = false;
        this.id = str;
        this.name = str2;
        this.iconResId = i;
        this.iconType = 1;
    }

    public static boolean isShowCornerTipNow(Context context, dgk dgkVar) {
        Calendar calendar;
        long longValue = acw.k(context, ffi.e(dgkVar), 0L).longValue();
        if (dgkVar.isShowCornerTip()) {
            if (dgkVar.getCornerTipInterval() == 0) {
                return longValue == 0;
            }
            if (longValue == 0) {
                return true;
            }
            calendar = Calendar.getInstance();
            calendar.setTimeInMillis(longValue);
            String cornerTipIntervalUnit = dgkVar.getCornerTipIntervalUnit();
            cornerTipIntervalUnit.getClass();
            switch (cornerTipIntervalUnit) {
                case "minute":
                    calendar.add(12, dgkVar.getCornerTipInterval());
                    calendar.set(13, 0);
                    calendar.set(14, 0);
                    break;
                case "second":
                    calendar.add(13, dgkVar.getCornerTipInterval());
                    calendar.set(14, 0);
                    break;
                case "day":
                    calendar.add(6, dgkVar.getCornerTipInterval());
                    calendar.set(11, 0);
                    calendar.set(12, 0);
                    calendar.set(13, 0);
                    calendar.set(14, 0);
                    break;
                case "hour":
                    calendar.add(11, dgkVar.getCornerTipInterval());
                    calendar.set(12, 0);
                    calendar.set(13, 0);
                    calendar.set(14, 0);
                    break;
            }
            if (Calendar.getInstance().after(calendar)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dgk)) {
            return false;
        }
        dgk dgkVar = (dgk) obj;
        if (this.nameResId == dgkVar.nameResId && this.iconType == dgkVar.iconType && this.iconResId == dgkVar.iconResId && this.show == dgkVar.show && this.displayArea == dgkVar.displayArea && this.pathType == dgkVar.pathType && this.minSdkVersion == dgkVar.minSdkVersion && this.maxSdkVersion == dgkVar.maxSdkVersion && this.isShowCornerTip == dgkVar.isShowCornerTip && this.cornerTipInterval == dgkVar.cornerTipInterval && this.isSpace == dgkVar.isSpace && Objects.equals(this.id, dgkVar.id) && Objects.equals(this.name, dgkVar.name) && Objects.equals(this.iconUrl, dgkVar.iconUrl) && Objects.equals(this.iconText, dgkVar.iconText) && Objects.equals(this.path, dgkVar.path) && Objects.equals(this.eventId, dgkVar.eventId) && Objects.equals(this.copyText, dgkVar.copyText) && Objects.equals(this.toast, dgkVar.toast) && Objects.equals(this.cornerTipIconUrl, dgkVar.cornerTipIconUrl) && Objects.equals(this.cornerTipIntervalUnit, dgkVar.cornerTipIntervalUnit) && Objects.equals(this.beginDate, dgkVar.beginDate) && Objects.equals(this.endDate, dgkVar.endDate)) {
            return Objects.equals(this.onClickListener, dgkVar.onClickListener);
        }
        return false;
    }

    public String getBeginDate() {
        return this.beginDate;
    }

    public String getCopyText() {
        return this.copyText;
    }

    public String getCornerTipIconUrl() {
        return this.cornerTipIconUrl;
    }

    public int getCornerTipInterval() {
        return this.cornerTipInterval;
    }

    public String getCornerTipIntervalUnit() {
        return this.cornerTipIntervalUnit;
    }

    public int getDisplayArea() {
        return this.displayArea;
    }

    public String getEndDate() {
        return this.endDate;
    }

    public String getEventId() {
        return this.eventId;
    }

    public int getIconResId() {
        return this.iconResId;
    }

    public String getIconText() {
        return this.iconText;
    }

    public int getIconType() {
        return this.iconType;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getId() {
        return this.id;
    }

    public int getMaxSdkVersion() {
        return this.maxSdkVersion;
    }

    public int getMinSdkVersion() {
        return this.minSdkVersion;
    }

    public String getName() {
        return this.name;
    }

    public String getName(Context context) {
        int i = this.nameResId;
        return i > 0 ? context.getString(i) : this.name;
    }

    public int getNameResId() {
        return this.nameResId;
    }

    public View.OnClickListener getOnClickListener() {
        return this.onClickListener;
    }

    public String getPath() {
        return this.path;
    }

    public int getPathType() {
        return this.pathType;
    }

    public int getShow() {
        return this.show;
    }

    public String getToast() {
        return this.toast;
    }

    public int hashCode() {
        String str = this.id;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        int hashCode2 = (((((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.nameResId) * 31) + this.iconType) * 31) + this.iconResId) * 31;
        String str3 = this.iconUrl;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.iconText;
        int hashCode4 = (((((((hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.show) * 31) + this.displayArea) * 31) + this.pathType) * 31;
        String str5 = this.path;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.eventId;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.copyText;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.toast;
        int hashCode8 = (((((((hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31) + this.minSdkVersion) * 31) + this.maxSdkVersion) * 31) + (this.isShowCornerTip ? 1 : 0)) * 31;
        String str9 = this.cornerTipIconUrl;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.cornerTipIntervalUnit;
        int hashCode10 = (hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.beginDate;
        int hashCode11 = (hashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.endDate;
        int hashCode12 = (((((hashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31) + this.cornerTipInterval) * 31) + (this.isSpace ? 1 : 0)) * 31;
        View.OnClickListener onClickListener = this.onClickListener;
        return hashCode12 + (onClickListener != null ? onClickListener.hashCode() : 0);
    }

    public boolean isDateValid() {
        return isNotExpired();
    }

    public boolean isNotExpired() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Date time = calendar.getTime();
        try {
            if (!TextUtils.isEmpty(this.beginDate)) {
                if (simpleDateFormat.parse(this.beginDate).after(time)) {
                    return false;
                }
            }
        } catch (ParseException unused) {
        }
        try {
            if (TextUtils.isEmpty(this.endDate)) {
                return true;
            }
            return !simpleDateFormat.parse(this.endDate).before(time);
        } catch (ParseException unused2) {
            return true;
        }
    }

    public boolean isShow(int i) {
        return (i & this.show) != 0;
    }

    public boolean isShowCornerTip() {
        return this.isShowCornerTip;
    }

    public boolean isSpace() {
        return this.isSpace;
    }

    public boolean isVersionValid(int i) {
        int i2 = this.maxSdkVersion;
        if (i2 >= 0 && i > i2) {
            return false;
        }
        int i3 = this.minSdkVersion;
        return i3 < 0 || i >= i3;
    }

    public void setBeginDate(String str) {
        this.beginDate = str;
    }

    public void setCopyText(String str) {
        this.copyText = str;
    }

    public void setCornerTipIconUrl(String str) {
        this.cornerTipIconUrl = str;
    }

    public void setCornerTipInterval(int i) {
        this.cornerTipInterval = i;
    }

    public void setCornerTipIntervalUnit(String str) {
        this.cornerTipIntervalUnit = str;
    }

    public void setDisplayArea(int i) {
        this.displayArea = i;
    }

    public void setEndDate(String str) {
        this.endDate = str;
    }

    public void setEventId(String str) {
        this.eventId = str;
    }

    public void setIconResId(int i) {
        if (i < 0) {
            return;
        }
        this.iconResId = i;
        this.iconType = 1;
    }

    public void setIconText(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.iconText = str;
        this.iconType = 3;
    }

    public void setIconType(int i) {
        this.iconType = i;
    }

    public void setIconUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.iconUrl = str;
        this.iconType = 2;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setMaxSdkVersion(int i) {
        this.maxSdkVersion = i;
    }

    public void setMinSdkVersion(int i) {
        this.minSdkVersion = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNameResId(int i) {
        this.nameResId = i;
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPathType(int i) {
        this.pathType = i;
    }

    public void setShow(int i) {
        this.show = i;
    }

    public void setShowCornerTip(boolean z) {
        this.isShowCornerTip = z;
    }

    public void setSpace(boolean z) {
        this.isSpace = z;
    }

    public void setToast(String str) {
        this.toast = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.name);
        parcel.writeInt(this.nameResId);
        parcel.writeInt(this.iconType);
        parcel.writeInt(this.iconResId);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.iconText);
        parcel.writeInt(this.show);
        parcel.writeInt(this.displayArea);
        parcel.writeInt(this.pathType);
        parcel.writeString(this.path);
        parcel.writeString(this.eventId);
        parcel.writeString(this.copyText);
        parcel.writeString(this.toast);
        parcel.writeString(this.cornerTipIntervalUnit);
        parcel.writeInt(this.cornerTipInterval);
        parcel.writeInt(this.minSdkVersion);
        parcel.writeInt(this.maxSdkVersion);
        parcel.writeByte(this.isShowCornerTip ? (byte) 1 : (byte) 0);
        parcel.writeString(this.cornerTipIconUrl);
        parcel.writeByte(this.isSpace ? (byte) 1 : (byte) 0);
        parcel.writeString(this.beginDate);
        parcel.writeString(this.endDate);
    }
}
