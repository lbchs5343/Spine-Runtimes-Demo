package com.bytedance.sdk.openadsdk.mediation.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationNativeAdTokenCallback;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationNativeAdTokenCallback f3833d;
    private ValueSet dq = hat.f19147b;

    public ox(IMediationNativeAdTokenCallback iMediationNativeAdTokenCallback) {
        this.f3833d = iMediationNativeAdTokenCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3833d != null) {
            switch (i) {
                case 270026:
                    this.f3833d.onAdTokenLoaded((String) valueSet.objectValue(0, String.class), new com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.ox((Bridge) valueSet.objectValue(1, Bridge.class)));
                    break;
                case 270027:
                    this.f3833d.onAdTokenLoadedFail(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
            }
        } else {
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
