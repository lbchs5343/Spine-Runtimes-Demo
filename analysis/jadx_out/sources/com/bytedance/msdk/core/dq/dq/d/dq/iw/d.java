package com.bytedance.msdk.core.dq.dq.d.dq.iw;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes.dex */
public class d implements Bridge {
    private Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public String d() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40006, null, String.class) : "adn no msg";
    }

    public int dq() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Integer) bridge.call(40005, null, Integer.class)).intValue();
        }
        return -998;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
