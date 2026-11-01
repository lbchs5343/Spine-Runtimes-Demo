package com.bytedance.sdk.openadsdk.f;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {
    private Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        Bridge bridge = this.dq;
        if (bridge == null) {
            return null;
        }
        if (valueSet == null) {
            valueSet = hat.f19147b;
        }
        return (T) bridge.call(i, valueSet, cls);
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return bridge.values();
        }
        return null;
    }
}
