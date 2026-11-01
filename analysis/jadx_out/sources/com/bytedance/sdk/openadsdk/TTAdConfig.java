package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.CSJConfig;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig;

/* loaded from: classes.dex */
public final class TTAdConfig extends CSJConfig {

    public static class Builder {
        private CSJConfig.dq dq = new CSJConfig.dq();

        public Builder addExtra(String str, Object obj) {
            this.dq.dq(str, obj);
            return this;
        }

        public Builder allowShowNotify(boolean z) {
            this.dq.d(z);
            return this;
        }

        public Builder appId(String str) {
            this.dq.dq(str);
            return this;
        }

        public Builder appName(String str) {
            this.dq.d(str);
            return this;
        }

        public TTAdConfig build() {
            return new TTAdConfig(this.dq);
        }

        public Builder customController(TTCustomController tTCustomController) {
            this.dq.dq(tTCustomController);
            return this;
        }

        public Builder data(String str) {
            this.dq.p(str);
            return this;
        }

        public Builder debug(boolean z) {
            this.dq.ox(z);
            return this;
        }

        public Builder directDownloadNetworkType(int... iArr) {
            this.dq.dq(iArr);
            return this;
        }

        public Builder keywords(String str) {
            this.dq.ox(str);
            return this;
        }

        public Builder paid(boolean z) {
            this.dq.dq(z);
            return this;
        }

        public Builder setAgeGroup(int i) {
            this.dq.p(i);
            return this;
        }

        public Builder setMediationConfig(IMediationConfig iMediationConfig) {
            this.dq.dq(iMediationConfig);
            return this;
        }

        public Builder setPluginUpdateConfig(int i) {
            this.dq.ox(i);
            return this;
        }

        public Builder supportMultiProcess(boolean z) {
            this.dq.p(z);
            return this;
        }

        public Builder themeStatus(int i) {
            this.dq.d(i);
            return this;
        }

        public Builder titleBarTheme(int i) {
            this.dq.dq(i);
            return this;
        }

        public Builder useMediation(boolean z) {
            this.dq.s(z);
            return this;
        }
    }

    private TTAdConfig(CSJConfig.dq dqVar) {
        super(dqVar);
    }
}
