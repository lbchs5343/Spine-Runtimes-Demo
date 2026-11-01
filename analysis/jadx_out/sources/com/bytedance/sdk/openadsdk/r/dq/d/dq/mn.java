package com.bytedance.sdk.openadsdk.r.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.f.d.d.f;
import g.hat;

/* loaded from: classes3.dex */
public class mn {
    private final Bridge dq;

    public mn(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d(f fVar) {
        hat g2 = hat.g(1);
        g2.m(0, fVar);
        this.dq.call(124103, g2.k(), Void.class);
    }

    public void dq() {
        this.dq.call(124104, hat.g(0).k(), Void.class);
    }

    public void dq(int i, String str) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.n(1, str);
        this.dq.call(124101, g2.k(), Void.class);
    }

    public void dq(f fVar) {
        hat g2 = hat.g(1);
        g2.m(0, fVar);
        this.dq.call(124102, g2.k(), Void.class);
    }
}
