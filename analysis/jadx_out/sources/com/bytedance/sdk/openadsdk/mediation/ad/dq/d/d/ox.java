package com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class ox implements Bridge {
    private ValueSet dq;

    private ValueSet d() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 270032:
                dq();
                break;
            case 270033:
                dq(new com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
        }
        return null;
    }

    public abstract void dq();

    public abstract void dq(com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.dq dqVar);

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet d2 = d();
        this.dq = d2;
        return d2;
    }
}
