package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class kk implements Bridge {
    private ValueSet dq;

    private ValueSet dq() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 210101:
                dq(Double.valueOf(valueSet.doubleValue(0)));
                break;
            case 210102:
                dq(Double.valueOf(valueSet.doubleValue(0)), (String) valueSet.objectValue(1, String.class), (String) valueSet.objectValue(2, String.class));
                break;
            case 210103:
                d(Double.valueOf(valueSet.doubleValue(0)));
                break;
            case 210104:
                dq(new com.bytedance.sdk.openadsdk.f.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
        }
        return null;
    }

    public abstract void d(Double d2);

    public abstract void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar);

    public abstract void dq(Double d2);

    public abstract void dq(Double d2, String str, String str2);

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
