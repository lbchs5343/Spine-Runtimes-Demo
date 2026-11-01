package com.bytedance.sdk.openadsdk.core.live.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes3.dex */
public abstract class d implements Bridge {
    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 1 || valueSet == null) {
            return null;
        }
        dq(valueSet.objectValue(0, Object.class));
        return null;
    }

    public abstract void dq(Object obj);

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
