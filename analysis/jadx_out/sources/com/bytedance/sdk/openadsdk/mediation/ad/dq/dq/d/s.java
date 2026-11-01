package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder;
import g.hat;

/* loaded from: classes3.dex */
public class s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationViewBinder f3818d;
    private ValueSet dq = hat.f19147b;

    public s(IMediationViewBinder iMediationViewBinder) {
        this.f3818d = iMediationViewBinder;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationViewBinder iMediationViewBinder = this.f3818d;
        if (iMediationViewBinder == null) {
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
