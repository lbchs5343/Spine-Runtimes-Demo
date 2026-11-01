package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class ia implements Bridge {
    private ValueSet dq;

    private ValueSet p() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 240101:
                dq();
                return null;
            case 240102:
                dq(new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                return null;
            case 240103:
                dq((String) valueSet.objectValue(0, String.class));
                return null;
            case 240104:
                d();
                return null;
            case 240105:
                return (T) Boolean.class.cast(Boolean.valueOf(ox()));
            default:
                return null;
        }
    }

    public abstract void d();

    public abstract void dq();

    public abstract void dq(com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar);

    public abstract void dq(String str);

    public abstract boolean ox();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet p = p();
        this.dq = p;
        return p;
    }
}
