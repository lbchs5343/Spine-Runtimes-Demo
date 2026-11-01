package com.bytedance.sdk.openadsdk.le.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq(int i) {
        hat g2 = hat.g(1);
        g2.o(0, i);
        this.dq.call(163101, g2.k(), Void.class);
    }
}
