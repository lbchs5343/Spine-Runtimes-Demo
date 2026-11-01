package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback;
import g.hat;

/* loaded from: classes3.dex */
public class iw implements IMediationDislikeCallback {
    private final Bridge dq;

    public iw(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback
    public void onCancel() {
        this.dq.call(268014, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback
    public void onSelected(int i, String str) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.n(1, str);
        this.dq.call(268013, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback
    public void onShow() {
        this.dq.call(268015, hat.g(0).k(), Void.class);
    }
}
