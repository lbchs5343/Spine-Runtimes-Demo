package com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class mn extends ox implements Bridge {
    private ValueSet dq;

    private ValueSet dq() {
        return hat.e(super.values()).k();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 270007) {
            destroy();
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract void destroy();

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox, com.bykv.vk.openvk.api.proto.Bridge
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
