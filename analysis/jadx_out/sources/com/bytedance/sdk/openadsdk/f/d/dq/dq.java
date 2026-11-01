package com.bytedance.sdk.openadsdk.f.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq(int i, Map map) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.m(1, map);
        this.dq.call(100101, g2.k(), Void.class);
    }
}
