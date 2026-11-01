package com.bytedance.sdk.openadsdk.mediation.custom;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.awf;

/* loaded from: classes3.dex */
public class MediationCustomInitConfig {

    /* renamed from: d, reason: collision with root package name */
    private String f3828d;
    private String dq;
    private String ia;
    private String iw;
    private String kk;
    private String mn;
    private String no;
    private String o;
    private String ox;
    private String p;
    private String s;

    public MediationCustomInitConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.ox = valueSet.stringValue(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec);
            this.dq = valueSet.stringValue(8534);
            this.f3828d = valueSet.stringValue(8535);
            this.p = valueSet.stringValue(8536);
            this.s = valueSet.stringValue(8537);
            this.iw = valueSet.stringValue(8538);
            this.mn = valueSet.stringValue(8539);
            this.ia = valueSet.stringValue(8540);
            this.kk = valueSet.stringValue(8541);
            this.o = valueSet.stringValue(8542);
            this.no = valueSet.stringValue(8543);
        }
    }

    public MediationCustomInitConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.ox = str;
        this.dq = str2;
        this.f3828d = str3;
        this.p = str4;
        this.s = str5;
        this.iw = str6;
        this.mn = str7;
        this.ia = str8;
        this.kk = str9;
        this.o = str10;
        this.no = str11;
    }

    public String getADNName() {
        return this.ox;
    }

    public String getAdnInitClassName() {
        return this.p;
    }

    public String getAppId() {
        return this.dq;
    }

    public String getAppKey() {
        return this.f3828d;
    }

    public String getBannerClassName() {
        return this.s;
    }

    public String getDrawClassName() {
        return this.no;
    }

    public String getFeedClassName() {
        return this.o;
    }

    public String getFullVideoClassName() {
        return this.ia;
    }

    public String getInterstitialClassName() {
        return this.iw;
    }

    public String getRewardClassName() {
        return this.mn;
    }

    public String getSplashClassName() {
        return this.kk;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MediationCustomInitConfig{mAppId='");
        sb.append(this.dq);
        sb.append("', mAppKey='");
        sb.append(this.f3828d);
        sb.append("', mADNName='");
        sb.append(this.ox);
        sb.append("', mAdnInitClassName='");
        sb.append(this.p);
        sb.append("', mBannerClassName='");
        sb.append(this.s);
        sb.append("', mInterstitialClassName='");
        sb.append(this.iw);
        sb.append("', mRewardClassName='");
        sb.append(this.mn);
        sb.append("', mFullVideoClassName='");
        sb.append(this.ia);
        sb.append("', mSplashClassName='");
        sb.append(this.kk);
        sb.append("', mFeedClassName='");
        sb.append(this.o);
        sb.append("', mDrawClassName='");
        return awf.ad(sb, this.no, "'}");
    }
}
