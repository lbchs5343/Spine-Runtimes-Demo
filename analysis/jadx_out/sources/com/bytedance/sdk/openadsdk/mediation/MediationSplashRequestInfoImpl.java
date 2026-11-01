package com.bytedance.sdk.openadsdk.mediation;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo;

/* loaded from: classes3.dex */
public class MediationSplashRequestInfoImpl implements Bridge {
    private IMediationSplashRequestInfo dq;

    public MediationSplashRequestInfoImpl(IMediationSplashRequestInfo iMediationSplashRequestInfo) {
        this.dq = iMediationSplashRequestInfo;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationSplashRequestInfo iMediationSplashRequestInfo;
        if (i == 8530) {
            IMediationSplashRequestInfo iMediationSplashRequestInfo2 = this.dq;
            if (iMediationSplashRequestInfo2 != null) {
                return (T) iMediationSplashRequestInfo2.getAdnName();
            }
            return null;
        }
        if (i == 8532) {
            IMediationSplashRequestInfo iMediationSplashRequestInfo3 = this.dq;
            if (iMediationSplashRequestInfo3 != null) {
                return (T) iMediationSplashRequestInfo3.getAppId();
            }
            return null;
        }
        if (i == 8533) {
            IMediationSplashRequestInfo iMediationSplashRequestInfo4 = this.dq;
            if (iMediationSplashRequestInfo4 != null) {
                return (T) iMediationSplashRequestInfo4.getAppkey();
            }
            return null;
        }
        if (i != 8531 || (iMediationSplashRequestInfo = this.dq) == null) {
            return null;
        }
        return (T) iMediationSplashRequestInfo.getAdnSlotId();
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
