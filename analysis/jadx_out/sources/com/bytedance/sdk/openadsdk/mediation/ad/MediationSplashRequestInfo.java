package com.bytedance.sdk.openadsdk.mediation.ad;

/* loaded from: classes3.dex */
public abstract class MediationSplashRequestInfo implements IMediationSplashRequestInfo {

    /* renamed from: d, reason: collision with root package name */
    private String f3810d;
    private String dq;
    private String ox;
    private String p;

    public MediationSplashRequestInfo(String str, String str2, String str3, String str4) {
        this.dq = str;
        this.f3810d = str2;
        this.ox = str3;
        this.p = str4;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    public String getAdnName() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    public String getAdnSlotId() {
        return this.f3810d;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    public String getAppId() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    public String getAppkey() {
        return this.p;
    }
}
