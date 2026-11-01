package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeToBannerListener;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationNativeToBannerListener f3816d;
    private ValueSet dq = hat.f19147b;

    public ox(IMediationNativeToBannerListener iMediationNativeToBannerListener) {
        this.f3816d = iMediationNativeToBannerListener;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3816d == null || i != 266013) {
            return null;
        }
        return (T) this.f3816d.getMediationBannerViewFromNativeAd(new com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
