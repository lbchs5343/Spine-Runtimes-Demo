package com.bytedance.sdk.openadsdk.kx.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq(int i, com.bytedance.sdk.openadsdk.fw.dq.dq.d.dq.dq dqVar) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.m(1, dqVar);
        this.dq.call(122101, g2.k(), Void.class);
    }
}
