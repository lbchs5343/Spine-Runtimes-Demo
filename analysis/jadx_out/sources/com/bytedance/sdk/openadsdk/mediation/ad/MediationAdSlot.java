package com.bytedance.sdk.openadsdk.mediation.ad;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class MediationAdSlot implements IMediationAdSlot {

    /* renamed from: d, reason: collision with root package name */
    private boolean f3805d;
    private boolean dq;

    /* renamed from: f, reason: collision with root package name */
    private MediationSplashRequestInfo f3806f;
    private Map<String, Object> ia;
    private MediationNativeToBannerListener ig;
    private boolean iw;
    private String jy;
    private boolean kk;
    private boolean mn;
    private float mp;
    private boolean no;
    private String o;
    private String ox;
    private int p;
    private float q;
    private float s;

    public static class Builder {

        /* renamed from: d, reason: collision with root package name */
        private boolean f3807d;
        private boolean dq;

        /* renamed from: f, reason: collision with root package name */
        private MediationSplashRequestInfo f3808f;
        private String ia;
        private MediationNativeToBannerListener ig;
        private String jy;
        private boolean mn;
        private boolean no;
        private int o;
        private boolean ox;
        private float p;
        private boolean s;
        private Map<String, Object> iw = new HashMap();
        private String kk = "";
        private float mp = 80.0f;
        private float q = 80.0f;

        public MediationAdSlot build() {
            MediationAdSlot mediationAdSlot = new MediationAdSlot();
            mediationAdSlot.dq = this.dq;
            mediationAdSlot.f3805d = this.f3807d;
            mediationAdSlot.mn = this.ox;
            mediationAdSlot.s = this.p;
            mediationAdSlot.iw = this.s;
            mediationAdSlot.ia = this.iw;
            mediationAdSlot.kk = this.mn;
            mediationAdSlot.o = this.ia;
            mediationAdSlot.ox = this.kk;
            mediationAdSlot.p = this.o;
            mediationAdSlot.no = this.no;
            mediationAdSlot.ig = this.ig;
            mediationAdSlot.mp = this.mp;
            mediationAdSlot.q = this.q;
            mediationAdSlot.jy = this.jy;
            mediationAdSlot.f3806f = this.f3808f;
            return mediationAdSlot;
        }

        public Builder setAllowShowCloseBtn(boolean z) {
            this.no = z;
            return this;
        }

        public Builder setBidNotify(boolean z) {
            this.mn = z;
            return this;
        }

        public Builder setExtraObject(String str, Object obj) {
            Map<String, Object> map = this.iw;
            if (map != null) {
                map.put(str, obj);
            }
            return this;
        }

        public Builder setMediationNativeToBannerListener(MediationNativeToBannerListener mediationNativeToBannerListener) {
            this.ig = mediationNativeToBannerListener;
            return this;
        }

        public Builder setMediationSplashRequestInfo(MediationSplashRequestInfo mediationSplashRequestInfo) {
            this.f3808f = mediationSplashRequestInfo;
            return this;
        }

        public Builder setMuted(boolean z) {
            this.ox = z;
            return this;
        }

        @Deprecated
        public Builder setRewardAmount(int i) {
            this.o = i;
            return this;
        }

        @Deprecated
        public Builder setRewardName(String str) {
            this.kk = str;
            return this;
        }

        public Builder setScenarioId(String str) {
            this.ia = str;
            return this;
        }

        public Builder setShakeViewSize(float f2, float f3) {
            this.mp = f2;
            this.q = f3;
            return this;
        }

        public Builder setSplashPreLoad(boolean z) {
            this.f3807d = z;
            return this;
        }

        public Builder setSplashShakeButton(boolean z) {
            this.dq = z;
            return this;
        }

        public Builder setUseSurfaceView(boolean z) {
            this.s = z;
            return this;
        }

        public Builder setVolume(float f2) {
            this.p = f2;
            return this;
        }

        public Builder setWxAppId(String str) {
            this.jy = str;
            return this;
        }
    }

    private MediationAdSlot() {
        this.ox = "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public Map<String, Object> getExtraObject() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public MediationNativeToBannerListener getMediationNativeToBannerListener() {
        return this.ig;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public MediationSplashRequestInfo getMediationSplashRequestInfo() {
        return this.f3806f;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public int getRewardAmount() {
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getRewardName() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getScenarioId() {
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getShakeViewHeight() {
        return this.q;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getShakeViewWidth() {
        return this.mp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getVolume() {
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getWxAppId() {
        return this.jy;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isAllowShowCloseBtn() {
        return this.no;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isBidNotify() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isMuted() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isSplashPreLoad() {
        return this.f3805d;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isSplashShakeButton() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isUseSurfaceView() {
        return this.iw;
    }
}
