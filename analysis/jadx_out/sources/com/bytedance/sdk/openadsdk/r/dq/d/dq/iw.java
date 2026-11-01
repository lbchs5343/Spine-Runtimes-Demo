package com.bytedance.sdk.openadsdk.r.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import g.hat;
import java.util.List;

/* loaded from: classes3.dex */
public class iw {
    private final Bridge dq;

    public iw(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq(int i, String str) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.n(1, str);
        this.dq.call(153101, g2.k(), Void.class);
    }

    public void dq(List<jy> list) {
        hat g2 = hat.g(1);
        g2.m(0, list);
        this.dq.call(153102, g2.k(), Void.class);
    }
}
