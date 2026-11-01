package com.bytedance.sdk.openadsdk.e.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class ox {
    private final Bridge dq;

    public ox(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d() {
        this.dq.call(152103, hat.g(0).k(), Void.class);
    }

    public void dq() {
        this.dq.call(152101, hat.g(0).k(), Void.class);
    }

    public void dq(int i, int i2) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.o(1, i2);
        this.dq.call(152102, g2.k(), Void.class);
    }

    public void dq(long j, long j2) {
        hat g2 = hat.g(2);
        g2.h(0, j);
        g2.h(1, j2);
        this.dq.call(152106, g2.k(), Void.class);
    }

    public void ox() {
        this.dq.call(152104, hat.g(0).k(), Void.class);
    }

    public void p() {
        this.dq.call(152105, hat.g(0).k(), Void.class);
    }

    public void s() {
        this.dq.call(152107, hat.g(0).k(), Void.class);
    }
}
