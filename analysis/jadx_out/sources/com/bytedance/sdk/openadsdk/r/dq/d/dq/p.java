package com.bytedance.sdk.openadsdk.r.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.f.d.d.ig;
import g.hat;

/* loaded from: classes3.dex */
public class p {
    private final Bridge dq;

    public p(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d(ig igVar) {
        hat g2 = hat.g(1);
        g2.m(0, igVar);
        this.dq.call(132103, g2.k(), Void.class);
    }

    public void dq() {
        this.dq.call(132104, hat.g(0).k(), Void.class);
    }

    public void dq(int i, String str) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.n(1, str);
        this.dq.call(132101, g2.k(), Void.class);
    }

    public void dq(ig igVar) {
        hat g2 = hat.g(1);
        g2.m(0, igVar);
        this.dq.call(132102, g2.k(), Void.class);
    }
}
