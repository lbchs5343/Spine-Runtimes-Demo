package com.bytedance.sdk.openadsdk.f.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d(long j, long j2, String str, String str2) {
        hat g2 = hat.g(4);
        g2.h(0, j);
        g2.h(1, j2);
        g2.n(2, str);
        g2.n(3, str2);
        this.dq.call(221103, g2.k(), Void.class);
    }

    public void dq() {
        this.dq.call(221101, hat.g(0).k(), Void.class);
    }

    public void dq(long j, long j2, String str, String str2) {
        hat g2 = hat.g(4);
        g2.h(0, j);
        g2.h(1, j2);
        g2.n(2, str);
        g2.n(3, str2);
        this.dq.call(221102, g2.k(), Void.class);
    }

    public void dq(long j, String str, String str2) {
        hat g2 = hat.g(3);
        g2.h(0, j);
        g2.n(1, str);
        g2.n(2, str2);
        this.dq.call(221105, g2.k(), Void.class);
    }

    public void dq(String str, String str2) {
        hat g2 = hat.g(2);
        g2.n(0, str);
        g2.n(1, str2);
        this.dq.call(221106, g2.k(), Void.class);
    }

    public void ox(long j, long j2, String str, String str2) {
        hat g2 = hat.g(4);
        g2.h(0, j);
        g2.h(1, j2);
        g2.n(2, str);
        g2.n(3, str2);
        this.dq.call(221104, g2.k(), Void.class);
    }
}
