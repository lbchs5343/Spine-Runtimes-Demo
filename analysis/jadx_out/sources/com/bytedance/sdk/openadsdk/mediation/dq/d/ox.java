package com.bytedance.sdk.openadsdk.mediation.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class ox implements Bridge {
    private ValueSet dq;

    private ValueSet ox() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 268013:
                dq(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                break;
            case 268014:
                dq();
                break;
            case 268015:
                d();
                break;
        }
        return null;
    }

    public abstract void d();

    public abstract void dq();

    public abstract void dq(int i, String str);

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet ox = ox();
        this.dq = ox;
        return ox;
    }
}
