package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.mediation.IMediationInterstitialFullAdListener;
import g.hat;

/* loaded from: classes3.dex */
public class mp extends com.bytedance.sdk.openadsdk.f.dq.dq.ig {
    private Bridge dq;

    public mp(Bridge bridge) {
        super(bridge);
        this.dq = bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.f.dq.dq.ig, com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setFullScreenVideoAdInteractionListener(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        hat g2 = hat.g(1);
        if (fullScreenVideoAdInteractionListener instanceof IMediationInterstitialFullAdListener) {
            g2.m(0, new com.bytedance.sdk.openadsdk.mediation.dq.dq.d.d((IMediationInterstitialFullAdListener) fullScreenVideoAdInteractionListener));
            g2.o(1, 1);
        } else {
            g2.m(0, new com.bytedance.sdk.openadsdk.k.dq.dq.dq.dq(fullScreenVideoAdInteractionListener));
            g2.o(1, 0);
        }
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(130101, g2.k(), Void.class);
        }
    }
}
