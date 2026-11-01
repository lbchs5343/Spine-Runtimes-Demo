package com.bytedance.sdk.openadsdk.le.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import g.hat;

/* loaded from: classes3.dex */
public class d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTFeedAd.VideoRewardListener f3795d;
    private ValueSet dq = hat.f19147b;

    public d(TTFeedAd.VideoRewardListener videoRewardListener) {
        this.f3795d = videoRewardListener;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3795d != null && i == 163101) {
            this.f3795d.onFeedRewardCountDown(valueSet.intValue(0));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
