package com.bytedance.sdk.openadsdk.p.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class ox {
    private final Bridge dq;

    public ox(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d() {
        this.dq.call(113103, hat.g(0).k(), Void.class);
    }

    public void dq() {
        this.dq.call(113102, hat.g(0).k(), Void.class);
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        hat g2 = hat.g(1);
        g2.m(0, dVar);
        this.dq.call(113101, g2.k(), Void.class);
    }
}
