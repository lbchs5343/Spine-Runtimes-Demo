package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationValueUtil;

/* loaded from: classes3.dex */
public class ia extends com.bytedance.sdk.openadsdk.mediation.dq.dq.d.p {
    private IMediationPreloadRequestInfo dq;

    public ia(IMediationPreloadRequestInfo iMediationPreloadRequestInfo) {
        super(iMediationPreloadRequestInfo);
        this.dq = iMediationPreloadRequestInfo;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.dq.d.p, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationPreloadRequestInfo iMediationPreloadRequestInfo = this.dq;
        if (iMediationPreloadRequestInfo == null) {
            return (T) MediationValueUtil.checkClassType(cls);
        }
        if (i != 271045) {
            return (T) super.call(i, valueSet, cls);
        }
        if (iMediationPreloadRequestInfo != null) {
            return (T) dq.dq(iMediationPreloadRequestInfo.getAdSlot());
        }
        return null;
    }
}
