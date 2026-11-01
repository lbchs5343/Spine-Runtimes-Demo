package com.bytedance.sdk.openadsdk.fw.dq.dq.dq.dq;

import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements TTRewardVideoAd.RewardAdPlayAgainController.Callback {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdPlayAgainController.Callback
    public void onConditionReturn(Bundle bundle) {
        hat g2 = hat.g(1);
        g2.m(0, bundle);
        this.dq.call(123101, g2.k(), Void.class);
    }
}
