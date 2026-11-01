package com.bytedance.sdk.openadsdk.mediation.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.IMediationDrawTokenInfo;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements IMediationDrawTokenInfo {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationDrawTokenInfo
    public void loadDrawAdByAdm(String str, TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        hat g2 = hat.g(2);
        g2.n(0, str);
        g2.m(1, new com.bytedance.sdk.openadsdk.r.dq.dq.dq.dq(drawFeedAdListener));
        this.dq.call(270031, g2.k(), Void.class);
    }
}
