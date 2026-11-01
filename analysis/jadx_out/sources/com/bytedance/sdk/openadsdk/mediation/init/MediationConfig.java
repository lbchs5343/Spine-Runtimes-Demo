package com.bytedance.sdk.openadsdk.mediation.init;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class MediationConfig implements IMediationConfig {

    /* renamed from: d, reason: collision with root package name */
    private boolean f3837d;
    private String dq;
    private String ia;
    private JSONObject iw;
    private boolean kk;
    private boolean mn;
    private String no;
    private boolean o;
    private MediationConfigUserInfoForSegment ox;
    private Map<String, Object> p;
    private boolean s;

    public static class Builder {

        /* renamed from: d, reason: collision with root package name */
        private boolean f3838d;
        private String dq;
        private String ia;
        private JSONObject iw;
        private boolean kk;
        private boolean mn;
        private String no;
        private boolean o;
        private MediationConfigUserInfoForSegment ox;
        private Map<String, Object> p;
        private boolean s;

        public MediationConfig build() {
            MediationConfig mediationConfig = new MediationConfig();
            mediationConfig.dq = this.dq;
            mediationConfig.f3837d = this.f3838d;
            mediationConfig.ox = this.ox;
            mediationConfig.p = this.p;
            mediationConfig.s = this.s;
            mediationConfig.iw = this.iw;
            mediationConfig.mn = this.mn;
            mediationConfig.ia = this.ia;
            mediationConfig.kk = this.kk;
            mediationConfig.o = this.o;
            mediationConfig.no = this.no;
            return mediationConfig;
        }

        public Builder setCustomLocalConfig(JSONObject jSONObject) {
            this.iw = jSONObject;
            return this;
        }

        public Builder setHttps(boolean z) {
            this.s = z;
            return this;
        }

        @Deprecated
        public Builder setLocalExtra(Map<String, Object> map) {
            this.p = map;
            return this;
        }

        public Builder setMediationConfigUserInfoForSegment(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
            this.ox = mediationConfigUserInfoForSegment;
            return this;
        }

        public Builder setOpenAdnTest(boolean z) {
            this.f3838d = z;
            return this;
        }

        public Builder setOpensdkVer(String str) {
            this.ia = str;
            return this;
        }

        public Builder setPublisherDid(String str) {
            this.dq = str;
            return this;
        }

        public Builder setSupportH265(boolean z) {
            this.kk = z;
            return this;
        }

        public Builder setSupportSplashZoomout(boolean z) {
            this.o = z;
            return this;
        }

        public Builder setWxAppId(String str) {
            this.no = str;
            return this;
        }

        public Builder setWxInstalled(boolean z) {
            this.mn = z;
            return this;
        }
    }

    private MediationConfig() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public JSONObject getCustomLocalConfig() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean getHttps() {
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public Map<String, Object> getLocalExtra() {
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public MediationConfigUserInfoForSegment getMediationConfigUserInfoForSegment() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String getOpensdkVer() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String getPublisherDid() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isOpenAdnTest() {
        return this.f3837d;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isSupportH265() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isSupportSplashZoomout() {
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isWxInstalled() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String wxAppId() {
        return this.no;
    }
}
