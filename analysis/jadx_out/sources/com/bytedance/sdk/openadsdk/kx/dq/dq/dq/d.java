package com.bytedance.sdk.openadsdk.kx.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import g.hat;

/* loaded from: classes3.dex */
public class d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTRewardVideoAd.RewardAdPlayAgainController f3793d;
    private ValueSet dq = hat.f19147b;

    public d(TTRewardVideoAd.RewardAdPlayAgainController rewardAdPlayAgainController) {
        this.f3793d = rewardAdPlayAgainController;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3793d != null && i == 122101) {
            this.f3793d.getPlayAgainCondition(valueSet.intValue(0), new com.bytedance.sdk.openadsdk.fw.dq.dq.dq.dq.dq((Bridge) valueSet.objectValue(1, Bridge.class)));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
