package com.bytedance.sdk.openadsdk.mediation.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.IMediationNativeTokenInfo;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements IMediationNativeTokenInfo {
    private final Bridge dq;

    public ox(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationNativeTokenInfo
    public void loadNativeAdByAdm(String str, TTAdNative.FeedAdListener feedAdListener) {
        hat g2 = hat.g(2);
        g2.n(0, str);
        g2.m(1, new com.bytedance.sdk.openadsdk.r.dq.dq.dq.d(feedAdListener));
        this.dq.call(270028, g2.k(), Void.class);
    }
}
