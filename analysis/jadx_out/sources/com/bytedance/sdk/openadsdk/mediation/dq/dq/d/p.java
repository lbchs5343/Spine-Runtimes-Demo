package com.bytedance.sdk.openadsdk.mediation.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo;
import g.hat;

/* loaded from: classes3.dex */
public class p implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationPreloadRequestInfo f3834d;
    private ValueSet dq = hat.f19147b;

    public p(IMediationPreloadRequestInfo iMediationPreloadRequestInfo) {
        this.f3834d = iMediationPreloadRequestInfo;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationPreloadRequestInfo iMediationPreloadRequestInfo = this.f3834d;
        if (iMediationPreloadRequestInfo == null) {
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
