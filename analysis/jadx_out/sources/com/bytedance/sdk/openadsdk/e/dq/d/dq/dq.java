package com.bytedance.sdk.openadsdk.e.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class dq extends d {
    private final Bridge dq;

    public dq(Bridge bridge) {
        super(bridge);
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq() {
        this.dq.call(151105, hat.g(0).k(), Void.class);
    }
}
