package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeToBannerListener;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationValueUtil;

/* loaded from: classes3.dex */
public class s extends com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d.dq {
    private IMediationAdSlot dq;

    public s(IMediationAdSlot iMediationAdSlot) {
        super(iMediationAdSlot);
        this.dq = iMediationAdSlot;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d.dq, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.dq == null) {
            return (T) MediationValueUtil.checkClassType(cls);
        }
        if (i == 266101) {
            return (T) new com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d.ox((IMediationNativeToBannerListener) super.call(i, null, IMediationNativeToBannerListener.class));
        }
        if (i != 266102) {
            return (T) super.call(i, valueSet, cls);
        }
        IMediationSplashRequestInfo iMediationSplashRequestInfo = (IMediationSplashRequestInfo) super.call(i, null, IMediationSplashRequestInfo.class);
        if (iMediationSplashRequestInfo != null) {
            return (T) new kk(iMediationSplashRequestInfo);
        }
        return null;
    }
}
