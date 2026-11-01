package com.bytedance.sdk.openadsdk.mediation.dq.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class dq implements Bridge {
    private ValueSet dq;

    private ValueSet dq() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 270031) {
            return null;
        }
        dq((String) valueSet.objectValue(0, String.class), new com.bytedance.sdk.openadsdk.r.dq.d.dq.d((Bridge) valueSet.objectValue(1, Bridge.class)));
        return null;
    }

    public abstract void dq(String str, com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar);

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet dq = dq();
        this.dq = dq;
        return dq;
    }
}
