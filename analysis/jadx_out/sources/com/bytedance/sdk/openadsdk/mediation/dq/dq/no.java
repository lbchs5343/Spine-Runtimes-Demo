package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener;
import g.hat;

/* loaded from: classes3.dex */
public class no extends com.bytedance.sdk.openadsdk.f.dq.dq.o {
    private Bridge dq;

    public no(Bridge bridge) {
        super(bridge);
        this.dq = bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.f.dq.dq.o, com.bytedance.sdk.openadsdk.TTNativeAd
    public void setExpressRenderListener(TTNativeAd.ExpressRenderListener expressRenderListener) {
        hat g2 = hat.g(1);
        if (expressRenderListener instanceof MediationExpressRenderListener) {
            g2.m(0, new com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d.iw((MediationExpressRenderListener) expressRenderListener));
            g2.o(1, 1);
        } else {
            g2.m(0, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.ox(expressRenderListener));
            g2.o(1, 0);
        }
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(140111, g2.k(), Void.class);
        }
    }
}
