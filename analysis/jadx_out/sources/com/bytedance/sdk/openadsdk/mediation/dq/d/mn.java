package com.bytedance.sdk.openadsdk.mediation.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.f.d.d.o;

/* loaded from: classes3.dex */
public abstract class mn extends o {
    @Override // com.bytedance.sdk.openadsdk.f.d.d.o, com.bytedance.sdk.openadsdk.f.d.d.no, com.bytedance.sdk.openadsdk.f.d.d.q, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 140111) {
            return (T) super.call(i, valueSet, cls);
        }
        Bridge bridge = (Bridge) valueSet.objectValue(0, Bridge.class);
        dq(valueSet.intValue(1) == 1 ? new com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.s(bridge) : new com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox(bridge));
        return null;
    }
}
