package com.bytedance.sdk.openadsdk.gh.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class dq {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d() {
        this.dq.call(244103, hat.g(0).k(), Void.class);
    }

    public void dq() {
        this.dq.call(244101, hat.g(0).k(), Void.class);
    }

    public void dq(int i, String str, boolean z) {
        hat g2 = hat.g(3);
        g2.o(0, i);
        g2.n(1, str);
        g2.i(2, z);
        this.dq.call(244102, g2.k(), Void.class);
    }
}
