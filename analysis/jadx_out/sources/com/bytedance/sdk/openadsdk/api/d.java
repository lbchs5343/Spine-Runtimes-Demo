package com.bytedance.sdk.openadsdk.api;

import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes.dex */
public class d {
    protected EventListener dq;

    public ValueSet dq(int i) {
        return dq(i, null);
    }

    public ValueSet dq(int i, Result result) {
        if (dq()) {
            return null;
        }
        return this.dq.onEvent(i, result);
    }

    public boolean dq() {
        return this.dq == null;
    }
}
