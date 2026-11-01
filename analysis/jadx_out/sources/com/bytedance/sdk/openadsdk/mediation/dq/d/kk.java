package com.bytedance.sdk.openadsdk.mediation.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.f.d.d.ig;

/* loaded from: classes3.dex */
public abstract class kk extends ig {
    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 130101) {
            return (T) super.call(i, valueSet, cls);
        }
        valueSet.objectValue(0, Bridge.class);
        dq(valueSet.intValue(1) == 1 ? new com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)) : new com.bytedance.sdk.openadsdk.k.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
        return null;
    }
}
