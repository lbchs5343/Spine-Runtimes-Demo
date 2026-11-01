package com.bytedance.sdk.openadsdk.p.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class dq {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d(com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        hat g2 = hat.g(1);
        g2.m(0, dVar);
        this.dq.call(111102, g2.k(), Void.class);
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        hat g2 = hat.g(1);
        g2.m(0, dVar);
        this.dq.call(111101, g2.k(), Void.class);
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar, int i) {
        hat g2 = hat.g(2);
        g2.m(0, dVar);
        g2.o(1, i);
        this.dq.call(111103, g2.k(), Void.class);
    }
}
