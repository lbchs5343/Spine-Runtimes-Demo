package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationShakeViewListener;
import g.hat;

/* loaded from: classes3.dex */
public class mn implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final MediationShakeViewListener f3815d;
    private ValueSet dq = hat.f19147b;

    public mn(MediationShakeViewListener mediationShakeViewListener) {
        this.f3815d = mediationShakeViewListener;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        MediationShakeViewListener mediationShakeViewListener = this.f3815d;
        if (mediationShakeViewListener != null && i == 270012) {
            mediationShakeViewListener.onDismissed();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
