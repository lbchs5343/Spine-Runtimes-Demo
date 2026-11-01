package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo;
import g.hat;

/* loaded from: classes3.dex */
public class p implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationSplashRequestInfo f3817d;
    private ValueSet dq = hat.f19147b;

    public p(IMediationSplashRequestInfo iMediationSplashRequestInfo) {
        this.f3817d = iMediationSplashRequestInfo;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationSplashRequestInfo iMediationSplashRequestInfo = this.f3817d;
        if (iMediationSplashRequestInfo == null) {
            return null;
        }
        switch (i) {
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
