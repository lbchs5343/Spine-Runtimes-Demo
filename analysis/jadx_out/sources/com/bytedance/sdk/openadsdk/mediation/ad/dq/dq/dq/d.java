package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike;
import g.hat;

/* loaded from: classes3.dex */
public class d implements MediationAdDislike {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike
    public void setDislikeCallback(IMediationDislikeCallback iMediationDislikeCallback) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d.d(iMediationDislikeCallback));
        this.dq.call(270033, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike
    public void showDislikeDialog() {
        this.dq.call(270032, hat.g(0).k(), Void.class);
    }
}
