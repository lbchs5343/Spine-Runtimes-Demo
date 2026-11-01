package com.bytedance.sdk.openadsdk.mediation.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class iw {
    private final Bridge dq;

    public iw(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq() {
        this.dq.call(270032, hat.g(0).k(), Void.class);
    }

    public void dq(ox oxVar) {
        hat g2 = hat.g(1);
        g2.m(0, oxVar);
        this.dq.call(270033, g2.k(), Void.class);
    }
}
