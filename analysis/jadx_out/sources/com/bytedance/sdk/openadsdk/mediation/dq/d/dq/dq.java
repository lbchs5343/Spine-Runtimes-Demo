package com.bytedance.sdk.openadsdk.mediation.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class dq {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq(int i, String str) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.n(1, str);
        this.dq.call(270030, g2.k(), Void.class);
    }

    public void dq(String str, com.bytedance.sdk.openadsdk.mediation.dq.d.d.dq dqVar) {
        hat g2 = hat.g(2);
        g2.n(0, str);
        g2.m(1, dqVar);
        this.dq.call(270029, g2.k(), Void.class);
    }
}
