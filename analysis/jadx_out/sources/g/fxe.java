package g;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public class fxe implements Parcelable {
    public static final Parcelable.Creator<fxe> CREATOR = new dud(11);
    public static final int DISPLAY_AREA_APP = 1;
    public static final int DISPLAY_AREA_APP_LOCKED = 16;
    public static final int DISPLAY_AREA_NONE = 0;
    public static final int DISPLAY_AREA_OTHER = 256;
    public static final int SHOW_ALL = 286331153;
    public static final int SHOW_NO = 0;
    public static final int SHOW_ONLY_CN = 16;
    public static final int SHOW_ONLY_EN = 1;
    public c agreement;
    public e alliance;
    public f codekk;
    public a devTools;
    public String domain;
    public b donation;
    public d net;
    public long requestInterval;
    public g update;

    public static class a implements Parcelable {
        public static final int ALLOW_TRIAL_CHANNEL_ALL = 11;
        public static final int ALLOW_TRIAL_CHANNEL_CHINA = 13;
        public static final int ALLOW_TRIAL_CHANNEL_GOOGLE_PLAY = 12;
        public static final Parcelable.Creator<a> CREATOR = new cat();
        public static final int NORMAL_VERSION_CODE = 20200501;
        public String faqTitle;
        public String faqUrl;
        public int fii;
        public String fit;
        public int isAT;
        public boolean isShowFAQ;
        public boolean isShowJSON;
        public boolean isShowMD5;
        public boolean isShowManual;
        public boolean isShowMultilineProcess;
        public boolean isShowUserResearch;
        public String jsonTitle;
        public String jsonUrl;
        public int mTC;
        public String manualTitle;
        public String manualUrl;
        public String md5Title;
        public String md5Url;
        public String multilineProcessTitle;
        public String multilineProcessUrl;
        public int tTS;
        public String userResearchTitle;
        public String userResearchUrl;

        public a() {
            this.isShowManual = true;
            this.isShowFAQ = true;
            this.isShowJSON = true;
            this.isShowMD5 = true;
            this.isShowMultilineProcess = true;
            this.fii = NORMAL_VERSION_CODE;
        }

        public a(Parcel parcel) {
            this.isShowManual = true;
            this.isShowFAQ = true;
            this.isShowJSON = true;
            this.isShowMD5 = true;
            this.isShowMultilineProcess = true;
            this.fii = NORMAL_VERSION_CODE;
            this.manualUrl = parcel.readString();
            this.manualTitle = parcel.readString();
            this.isShowManual = parcel.readByte() != 0;
            this.userResearchUrl = parcel.readString();
            this.userResearchTitle = parcel.readString();
            this.isShowUserResearch = parcel.readByte() != 0;
            this.faqUrl = parcel.readString();
            this.faqTitle = parcel.readString();
            this.isShowFAQ = parcel.readByte() != 0;
            this.jsonUrl = parcel.readString();
            this.jsonTitle = parcel.readString();
            this.isShowJSON = parcel.readByte() != 0;
            this.md5Url = parcel.readString();
            this.md5Title = parcel.readString();
            this.isShowMD5 = parcel.readByte() != 0;
            this.multilineProcessUrl = parcel.readString();
            this.multilineProcessTitle = parcel.readString();
            this.isShowMultilineProcess = parcel.readByte() != 0;
            this.isAT = parcel.readInt();
            this.mTC = parcel.readInt();
            this.tTS = parcel.readInt();
            this.fii = parcel.readInt();
            this.fit = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                a aVar = (a) obj;
                if (this.isShowManual != aVar.isShowManual || this.isShowUserResearch != aVar.isShowUserResearch || this.isShowFAQ != aVar.isShowFAQ || this.isShowJSON != aVar.isShowJSON || this.isShowMD5 != aVar.isShowMD5 || this.isShowMultilineProcess != aVar.isShowMultilineProcess || this.isAT != aVar.isAT || this.tTS != aVar.tTS || this.mTC != aVar.mTC || this.fii != aVar.fii) {
                    return false;
                }
                String str = this.manualUrl;
                if (str == null ? aVar.manualUrl != null : !str.equals(aVar.manualUrl)) {
                    return false;
                }
                String str2 = this.manualTitle;
                if (str2 == null ? aVar.manualTitle != null : !str2.equals(aVar.manualTitle)) {
                    return false;
                }
                String str3 = this.userResearchUrl;
                if (str3 == null ? aVar.userResearchUrl != null : !str3.equals(aVar.userResearchUrl)) {
                    return false;
                }
                String str4 = this.userResearchTitle;
                if (str4 == null ? aVar.userResearchTitle != null : !str4.equals(aVar.userResearchTitle)) {
                    return false;
                }
                String str5 = this.faqUrl;
                if (str5 == null ? aVar.faqUrl != null : !str5.equals(aVar.faqUrl)) {
                    return false;
                }
                String str6 = this.faqTitle;
                if (str6 == null ? aVar.faqTitle != null : !str6.equals(aVar.faqTitle)) {
                    return false;
                }
                String str7 = this.jsonUrl;
                if (str7 == null ? aVar.jsonUrl != null : !str7.equals(aVar.jsonUrl)) {
                    return false;
                }
                String str8 = this.jsonTitle;
                if (str8 == null ? aVar.jsonTitle != null : !str8.equals(aVar.jsonTitle)) {
                    return false;
                }
                String str9 = this.md5Url;
                if (str9 == null ? aVar.md5Url != null : !str9.equals(aVar.md5Url)) {
                    return false;
                }
                String str10 = this.md5Title;
                if (str10 == null ? aVar.md5Title != null : !str10.equals(aVar.md5Title)) {
                    return false;
                }
                String str11 = this.multilineProcessUrl;
                if (str11 == null ? aVar.multilineProcessUrl != null : !str11.equals(aVar.multilineProcessUrl)) {
                    return false;
                }
                String str12 = this.multilineProcessTitle;
                if (str12 == null ? aVar.multilineProcessTitle != null : !str12.equals(aVar.multilineProcessTitle)) {
                    return false;
                }
                String str13 = this.fit;
                String str14 = aVar.fit;
                if (str13 != null) {
                    return str13.equals(str14);
                }
                if (str14 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.manualUrl;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.manualTitle;
            int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.isShowManual ? 1 : 0)) * 31;
            String str3 = this.userResearchUrl;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.userResearchTitle;
            int hashCode4 = (((hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + (this.isShowUserResearch ? 1 : 0)) * 31;
            String str5 = this.faqUrl;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.faqTitle;
            int hashCode6 = (((hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31) + (this.isShowFAQ ? 1 : 0)) * 31;
            String str7 = this.jsonUrl;
            int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
            String str8 = this.jsonTitle;
            int hashCode8 = (((hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31) + (this.isShowJSON ? 1 : 0)) * 31;
            String str9 = this.md5Url;
            int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
            String str10 = this.md5Title;
            int hashCode10 = (((hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31) + (this.isShowMD5 ? 1 : 0)) * 31;
            String str11 = this.multilineProcessUrl;
            int hashCode11 = (hashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
            String str12 = this.multilineProcessTitle;
            int hashCode12 = (((((((((((hashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31) + (this.isShowMultilineProcess ? 1 : 0)) * 31) + this.isAT) * 31) + this.tTS) * 31) + this.mTC) * 31) + this.fii) * 31;
            String str13 = this.fit;
            return hashCode12 + (str13 != null ? str13.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.manualUrl);
            parcel.writeString(this.manualTitle);
            parcel.writeByte(this.isShowManual ? (byte) 1 : (byte) 0);
            parcel.writeString(this.userResearchUrl);
            parcel.writeString(this.userResearchTitle);
            parcel.writeByte(this.isShowUserResearch ? (byte) 1 : (byte) 0);
            parcel.writeString(this.faqUrl);
            parcel.writeString(this.faqTitle);
            parcel.writeByte(this.isShowFAQ ? (byte) 1 : (byte) 0);
            parcel.writeString(this.jsonUrl);
            parcel.writeString(this.jsonTitle);
            parcel.writeByte(this.isShowJSON ? (byte) 1 : (byte) 0);
            parcel.writeString(this.md5Url);
            parcel.writeString(this.md5Title);
            parcel.writeByte(this.isShowMD5 ? (byte) 1 : (byte) 0);
            parcel.writeString(this.multilineProcessUrl);
            parcel.writeString(this.multilineProcessTitle);
            parcel.writeByte(this.isShowMultilineProcess ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.isAT);
            parcel.writeInt(this.mTC);
            parcel.writeInt(this.tTS);
            parcel.writeInt(this.fii);
            parcel.writeString(this.fit);
        }
    }

    public static class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new etd();
        public String attraction;
        public String beginDate;
        public String desc;
        public String endDate;
        public String iconUrl;
        public boolean isPromotion;
        public boolean isShow;
        public String name;
        public String normalPrice;
        public String packageName;
        public String packageUrl;
        public String price;
        public int promotionId;
        public String promotionRate;
        public String title;
        public String version;
        public int versionCode;

        public b() {
        }

        public b(Parcel parcel) {
            this.name = parcel.readString();
            this.title = parcel.readString();
            this.iconUrl = parcel.readString();
            this.isShow = parcel.readByte() != 0;
            this.packageName = parcel.readString();
            this.version = parcel.readString();
            this.versionCode = parcel.readInt();
            this.packageUrl = parcel.readString();
            this.attraction = parcel.readString();
            this.desc = parcel.readString();
            this.isPromotion = parcel.readByte() != 0;
            this.promotionId = parcel.readInt();
            this.promotionRate = parcel.readString();
            this.price = parcel.readString();
            this.normalPrice = parcel.readString();
            this.beginDate = parcel.readString();
            this.endDate = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                b bVar = (b) obj;
                if (this.isShow != bVar.isShow || this.versionCode != bVar.versionCode || this.isPromotion != bVar.isPromotion || this.promotionId != bVar.promotionId) {
                    return false;
                }
                String str = this.name;
                if (str == null ? bVar.name != null : !str.equals(bVar.name)) {
                    return false;
                }
                String str2 = this.title;
                if (str2 == null ? bVar.title != null : !str2.equals(bVar.title)) {
                    return false;
                }
                String str3 = this.iconUrl;
                if (str3 == null ? bVar.iconUrl != null : !str3.equals(bVar.iconUrl)) {
                    return false;
                }
                String str4 = this.packageName;
                if (str4 == null ? bVar.packageName != null : !str4.equals(bVar.packageName)) {
                    return false;
                }
                String str5 = this.version;
                if (str5 == null ? bVar.version != null : !str5.equals(bVar.version)) {
                    return false;
                }
                String str6 = this.packageUrl;
                if (str6 == null ? bVar.packageUrl != null : !str6.equals(bVar.packageUrl)) {
                    return false;
                }
                String str7 = this.attraction;
                if (str7 == null ? bVar.attraction != null : !str7.equals(bVar.attraction)) {
                    return false;
                }
                String str8 = this.desc;
                if (str8 == null ? bVar.desc != null : !str8.equals(bVar.desc)) {
                    return false;
                }
                String str9 = this.promotionRate;
                if (str9 == null ? bVar.promotionRate != null : !str9.equals(bVar.promotionRate)) {
                    return false;
                }
                String str10 = this.price;
                if (str10 == null ? bVar.price != null : !str10.equals(bVar.price)) {
                    return false;
                }
                String str11 = this.normalPrice;
                if (str11 == null ? bVar.normalPrice != null : !str11.equals(bVar.normalPrice)) {
                    return false;
                }
                String str12 = this.beginDate;
                if (str12 == null ? bVar.beginDate != null : !str12.equals(bVar.beginDate)) {
                    return false;
                }
                String str13 = this.endDate;
                String str14 = bVar.endDate;
                if (str13 != null) {
                    return str13.equals(str14);
                }
                if (str14 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.name;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.title;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.iconUrl;
            int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.isShow ? 1 : 0)) * 31;
            String str4 = this.packageName;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.version;
            int hashCode5 = (((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.versionCode) * 31;
            String str6 = this.packageUrl;
            int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
            String str7 = this.attraction;
            int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
            String str8 = this.desc;
            int hashCode8 = (((((hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31) + (this.isPromotion ? 1 : 0)) * 31) + this.promotionId) * 31;
            String str9 = this.promotionRate;
            int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
            String str10 = this.price;
            int hashCode10 = (hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
            String str11 = this.normalPrice;
            int hashCode11 = (hashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
            String str12 = this.beginDate;
            int hashCode12 = (hashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31;
            String str13 = this.endDate;
            return hashCode12 + (str13 != null ? str13.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.name);
            parcel.writeString(this.title);
            parcel.writeString(this.iconUrl);
            parcel.writeByte(this.isShow ? (byte) 1 : (byte) 0);
            parcel.writeString(this.packageName);
            parcel.writeString(this.version);
            parcel.writeInt(this.versionCode);
            parcel.writeString(this.packageUrl);
            parcel.writeString(this.attraction);
            parcel.writeString(this.desc);
            parcel.writeByte(this.isPromotion ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.promotionId);
            parcel.writeString(this.promotionRate);
            parcel.writeString(this.price);
            parcel.writeString(this.normalPrice);
            parcel.writeString(this.beginDate);
            parcel.writeString(this.endDate);
        }
    }

    public static class c implements Parcelable {
        public static final Parcelable.Creator<c> CREATOR = new fjh();
        public String paUpdateContent;
        public String paUpdateTime;
        public String paVersion;
        public String uaUpdateContent;
        public String uaUpdateTime;
        public String uaVersion;

        public c() {
        }

        public c(Parcel parcel) {
            this.uaVersion = parcel.readString();
            this.uaUpdateTime = parcel.readString();
            this.uaUpdateContent = parcel.readString();
            this.paVersion = parcel.readString();
            this.paUpdateTime = parcel.readString();
            this.paUpdateContent = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                c cVar = (c) obj;
                String str = this.uaVersion;
                if (str == null ? cVar.uaVersion != null : !str.equals(cVar.uaVersion)) {
                    return false;
                }
                String str2 = this.uaUpdateTime;
                if (str2 == null ? cVar.uaUpdateTime != null : !str2.equals(cVar.uaUpdateTime)) {
                    return false;
                }
                String str3 = this.uaUpdateContent;
                if (str3 == null ? cVar.uaUpdateContent != null : !str3.equals(cVar.uaUpdateContent)) {
                    return false;
                }
                String str4 = this.paVersion;
                if (str4 == null ? cVar.paVersion != null : !str4.equals(cVar.paVersion)) {
                    return false;
                }
                String str5 = this.paUpdateTime;
                if (str5 == null ? cVar.paUpdateTime != null : !str5.equals(cVar.paUpdateTime)) {
                    return false;
                }
                String str6 = this.paUpdateContent;
                String str7 = cVar.paUpdateContent;
                if (str6 != null) {
                    return str6.equals(str7);
                }
                if (str7 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.uaVersion;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.uaUpdateTime;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.uaUpdateContent;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.paVersion;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.paUpdateTime;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.paUpdateContent;
            return hashCode5 + (str6 != null ? str6.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.uaVersion);
            parcel.writeString(this.uaUpdateTime);
            parcel.writeString(this.uaUpdateContent);
            parcel.writeString(this.paVersion);
            parcel.writeString(this.paUpdateTime);
            parcel.writeString(this.paUpdateContent);
        }
    }

    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new fgu();
        public String cacheFileName;
        public long cacheSize;
        public boolean isCodeKKHttps;
        public long outLineMaxStale;
        public String ua;
        public String uaSuffix;
        public String webUA;
        public String webUASuffix;

        public d() {
            this.cacheSize = -1L;
            this.outLineMaxStale = -1L;
            this.isCodeKKHttps = true;
        }

        public d(Parcel parcel) {
            this.cacheSize = -1L;
            this.outLineMaxStale = -1L;
            this.isCodeKKHttps = true;
            this.ua = parcel.readString();
            this.webUA = parcel.readString();
            this.uaSuffix = parcel.readString();
            this.webUASuffix = parcel.readString();
            this.cacheSize = parcel.readLong();
            this.cacheFileName = parcel.readString();
            this.outLineMaxStale = parcel.readLong();
            this.isCodeKKHttps = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                d dVar = (d) obj;
                if (this.cacheSize != dVar.cacheSize || this.outLineMaxStale != dVar.outLineMaxStale || this.isCodeKKHttps != dVar.isCodeKKHttps) {
                    return false;
                }
                String str = this.ua;
                if (str == null ? dVar.ua != null : !str.equals(dVar.ua)) {
                    return false;
                }
                String str2 = this.webUA;
                if (str2 == null ? dVar.webUA != null : !str2.equals(dVar.webUA)) {
                    return false;
                }
                String str3 = this.uaSuffix;
                if (str3 == null ? dVar.uaSuffix != null : !str3.equals(dVar.uaSuffix)) {
                    return false;
                }
                String str4 = this.webUASuffix;
                if (str4 == null ? dVar.webUASuffix != null : !str4.equals(dVar.webUASuffix)) {
                    return false;
                }
                String str5 = this.cacheFileName;
                String str6 = dVar.cacheFileName;
                if (str5 != null) {
                    return str5.equals(str6);
                }
                if (str6 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.ua;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.webUA;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.uaSuffix;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.webUASuffix;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            long j = this.cacheSize;
            int i = (hashCode4 + ((int) (j ^ (j >>> 32)))) * 31;
            String str5 = this.cacheFileName;
            int hashCode5 = (i + (str5 != null ? str5.hashCode() : 0)) * 31;
            long j2 = this.outLineMaxStale;
            return ((hashCode5 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.isCodeKKHttps ? 1 : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.ua);
            parcel.writeString(this.webUA);
            parcel.writeString(this.uaSuffix);
            parcel.writeString(this.webUASuffix);
            parcel.writeLong(this.cacheSize);
            parcel.writeString(this.cacheFileName);
            parcel.writeLong(this.outLineMaxStale);
            parcel.writeByte(this.isCodeKKHttps ? (byte) 1 : (byte) 0);
        }
    }

    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new cts();
        public String adDesc;
        public int adPosition;
        public String adTitle;
        public String adUrl;
        public int fullAdInterval;
        public String googleAdTips;
        public boolean isCooking;
        public boolean isOnlyZHCN;
        public boolean isShowAd;
        public boolean isShowBrothers;
        public boolean isShowGoogleAd;
        public boolean isShowJobs;
        public boolean isShowNativeAdForWeb;
        public boolean isShowNewSecond;
        public boolean isShowWeChat;
        public String jobsTitle;
        public String jobsUrl;
        public dgk[] resources;
        public String weChatDesc;
        public String weChatId;
        public String weChatImageUrl;
        public String weChatTitle;

        public e() {
            this.isShowGoogleAd = true;
            this.isShowNativeAdForWeb = false;
            this.isCooking = false;
            this.isShowBrothers = true;
            this.isShowNewSecond = true;
            this.fullAdInterval = 3;
            this.isShowJobs = false;
            this.isShowAd = true;
            this.isOnlyZHCN = true;
            this.adPosition = 256;
            this.isShowWeChat = false;
        }

        public e(Parcel parcel) {
            this.isShowGoogleAd = true;
            this.isShowNativeAdForWeb = false;
            this.isCooking = false;
            this.isShowBrothers = true;
            this.isShowNewSecond = true;
            this.fullAdInterval = 3;
            this.isShowJobs = false;
            this.isShowAd = true;
            this.isOnlyZHCN = true;
            this.adPosition = 256;
            this.isShowWeChat = false;
            this.isShowGoogleAd = parcel.readByte() != 0;
            this.isShowNativeAdForWeb = parcel.readByte() != 0;
            this.googleAdTips = parcel.readString();
            this.isCooking = parcel.readByte() != 0;
            this.isShowBrothers = parcel.readByte() != 0;
            this.isShowNewSecond = parcel.readByte() != 0;
            this.fullAdInterval = parcel.readInt();
            this.isShowJobs = parcel.readByte() != 0;
            this.jobsTitle = parcel.readString();
            this.jobsUrl = parcel.readString();
            this.isShowAd = parcel.readByte() != 0;
            this.isOnlyZHCN = parcel.readByte() != 0;
            this.adTitle = parcel.readString();
            this.adDesc = parcel.readString();
            this.adUrl = parcel.readString();
            this.adPosition = parcel.readInt();
            this.isShowWeChat = parcel.readByte() != 0;
            this.weChatTitle = parcel.readString();
            this.weChatDesc = parcel.readString();
            this.weChatId = parcel.readString();
            this.weChatImageUrl = parcel.readString();
            this.resources = (dgk[]) parcel.createTypedArray(dgk.CREATOR);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.isShowGoogleAd == eVar.isShowGoogleAd && this.isShowNativeAdForWeb == eVar.isShowNativeAdForWeb && this.isCooking == eVar.isCooking && this.isShowBrothers == eVar.isShowBrothers && this.isShowNewSecond == eVar.isShowNewSecond && this.fullAdInterval == eVar.fullAdInterval && this.isShowJobs == eVar.isShowJobs && this.isShowAd == eVar.isShowAd && this.isOnlyZHCN == eVar.isOnlyZHCN && this.adPosition == eVar.adPosition && this.isShowWeChat == eVar.isShowWeChat && Objects.equals(this.googleAdTips, eVar.googleAdTips) && Objects.equals(this.jobsTitle, eVar.jobsTitle) && Objects.equals(this.jobsUrl, eVar.jobsUrl) && Objects.equals(this.adTitle, eVar.adTitle) && Objects.equals(this.adDesc, eVar.adDesc) && Objects.equals(this.adUrl, eVar.adUrl) && Objects.equals(this.weChatTitle, eVar.weChatTitle) && Objects.equals(this.weChatDesc, eVar.weChatDesc) && Objects.equals(this.weChatId, eVar.weChatId) && Objects.equals(this.weChatImageUrl, eVar.weChatImageUrl)) {
                return Arrays.equals(this.resources, eVar.resources);
            }
            return false;
        }

        public int hashCode() {
            int i = (((this.isShowGoogleAd ? 1 : 0) * 31) + (this.isShowNativeAdForWeb ? 1 : 0)) * 31;
            String str = this.googleAdTips;
            int hashCode = (((((((((((i + (str != null ? str.hashCode() : 0)) * 31) + (this.isCooking ? 1 : 0)) * 31) + (this.isShowBrothers ? 1 : 0)) * 31) + (this.isShowNewSecond ? 1 : 0)) * 31) + this.fullAdInterval) * 31) + (this.isShowJobs ? 1 : 0)) * 31;
            String str2 = this.jobsTitle;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.jobsUrl;
            int hashCode3 = (((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.isShowAd ? 1 : 0)) * 31) + (this.isOnlyZHCN ? 1 : 0)) * 31;
            String str4 = this.adTitle;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.adDesc;
            int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            String str6 = this.adUrl;
            int hashCode6 = (((((hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.adPosition) * 31) + (this.isShowWeChat ? 1 : 0)) * 31;
            String str7 = this.weChatTitle;
            int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
            String str8 = this.weChatDesc;
            int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
            String str9 = this.weChatId;
            int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
            String str10 = this.weChatImageUrl;
            return ((hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31) + Arrays.hashCode(this.resources);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.isShowGoogleAd ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isShowNativeAdForWeb ? (byte) 1 : (byte) 0);
            parcel.writeString(this.googleAdTips);
            parcel.writeByte(this.isCooking ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isShowBrothers ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isShowNewSecond ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.fullAdInterval);
            parcel.writeByte(this.isShowJobs ? (byte) 1 : (byte) 0);
            parcel.writeString(this.jobsTitle);
            parcel.writeString(this.jobsUrl);
            parcel.writeByte(this.isShowAd ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isOnlyZHCN ? (byte) 1 : (byte) 0);
            parcel.writeString(this.adTitle);
            parcel.writeString(this.adDesc);
            parcel.writeString(this.adUrl);
            parcel.writeInt(this.adPosition);
            parcel.writeByte(this.isShowWeChat ? (byte) 1 : (byte) 0);
            parcel.writeString(this.weChatTitle);
            parcel.writeString(this.weChatDesc);
            parcel.writeString(this.weChatId);
            parcel.writeString(this.weChatImageUrl);
            parcel.writeParcelableArray(this.resources, i);
        }
    }

    public static class f implements Parcelable {
        public static final Parcelable.Creator<f> CREATOR = new cps();
        public int im;
        public int imc;
        public boolean isOldOpMark;
        public String opTitle;
        public String opUrl;

        public f() {
        }

        public f(Parcel parcel) {
            this.opUrl = parcel.readString();
            this.opTitle = parcel.readString();
            this.isOldOpMark = parcel.readByte() != 0;
            this.im = parcel.readInt();
            this.imc = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                f fVar = (f) obj;
                if (this.isOldOpMark != fVar.isOldOpMark || this.im != fVar.im || this.imc != fVar.imc) {
                    return false;
                }
                String str = this.opUrl;
                if (str == null ? fVar.opUrl != null : !str.equals(fVar.opUrl)) {
                    return false;
                }
                String str2 = this.opTitle;
                String str3 = fVar.opTitle;
                if (str2 != null) {
                    return str2.equals(str3);
                }
                if (str3 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.opUrl;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.opTitle;
            return ((((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.isOldOpMark ? 1 : 0)) * 31) + this.im) * 31) + this.imc;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.opUrl);
            parcel.writeString(this.opTitle);
            parcel.writeByte(this.isOldOpMark ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.im);
            parcel.writeInt(this.imc);
        }
    }

    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new dhj();
        public long checkInterval;

        @btq(name = "localDownloadValidTime")
        public long localDlValidTime;

        public g() {
            this.localDlValidTime = -1L;
        }

        public g(Parcel parcel) {
            this.localDlValidTime = -1L;
            this.localDlValidTime = parcel.readLong();
            this.checkInterval = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.localDlValidTime == gVar.localDlValidTime && this.checkInterval == gVar.checkInterval;
        }

        public int hashCode() {
            long j = this.localDlValidTime;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.checkInterval;
            return i + ((int) (j2 ^ (j2 >>> 32)));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.localDlValidTime);
            parcel.writeLong(this.checkInterval);
        }
    }

    public fxe() {
    }

    public fxe(Parcel parcel) {
        this.net = (d) parcel.readParcelable(d.class.getClassLoader());
        this.alliance = (e) parcel.readParcelable(e.class.getClassLoader());
        this.update = (g) parcel.readParcelable(g.class.getClassLoader());
        this.donation = (b) parcel.readParcelable(b.class.getClassLoader());
        this.codekk = (f) parcel.readParcelable(f.class.getClassLoader());
        this.devTools = (a) parcel.readParcelable(a.class.getClassLoader());
        this.agreement = (c) parcel.readParcelable(c.class.getClassLoader());
        this.requestInterval = parcel.readLong();
        this.domain = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fxe)) {
            return false;
        }
        fxe fxeVar = (fxe) obj;
        if (this.requestInterval == fxeVar.requestInterval && Objects.equals(this.net, fxeVar.net) && Objects.equals(this.alliance, fxeVar.alliance) && Objects.equals(this.update, fxeVar.update) && Objects.equals(this.donation, fxeVar.donation) && Objects.equals(this.codekk, fxeVar.codekk) && Objects.equals(this.devTools, fxeVar.devTools) && Objects.equals(this.agreement, fxeVar.agreement)) {
            return Objects.equals(this.domain, fxeVar.domain);
        }
        return false;
    }

    public int hashCode() {
        d dVar = this.net;
        int hashCode = (dVar != null ? dVar.hashCode() : 0) * 31;
        e eVar = this.alliance;
        int hashCode2 = (hashCode + (eVar != null ? eVar.hashCode() : 0)) * 31;
        g gVar = this.update;
        int hashCode3 = (hashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
        b bVar = this.donation;
        int hashCode4 = (hashCode3 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        f fVar = this.codekk;
        int hashCode5 = (hashCode4 + (fVar != null ? fVar.hashCode() : 0)) * 31;
        a aVar = this.devTools;
        int hashCode6 = (hashCode5 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        c cVar = this.agreement;
        int hashCode7 = (hashCode6 + (cVar != null ? cVar.hashCode() : 0)) * 31;
        long j = this.requestInterval;
        int i = (hashCode7 + ((int) (j ^ (j >>> 32)))) * 31;
        String str = this.domain;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.net, i);
        parcel.writeParcelable(this.alliance, i);
        parcel.writeParcelable(this.update, i);
        parcel.writeParcelable(this.donation, i);
        parcel.writeParcelable(this.codekk, i);
        parcel.writeParcelable(this.devTools, i);
        parcel.writeParcelable(this.agreement, i);
        parcel.writeLong(this.requestInterval);
        parcel.writeString(this.domain);
    }
}
