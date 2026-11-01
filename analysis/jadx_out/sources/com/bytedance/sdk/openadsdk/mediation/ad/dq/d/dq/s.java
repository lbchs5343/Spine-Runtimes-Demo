package com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class s extends com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox {
    private final Bridge dq;

    public s(Bridge bridge) {
        super(bridge);
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d() {
        this.dq.call(142104, hat.g(0).k(), Void.class);
    }

    public void dq() {
        this.dq.call(142103, hat.g(0).k(), Void.class);
    }

    public void dq(View view, String str, int i) {
        hat g2 = hat.g(3);
        g2.m(0, view);
        g2.n(1, str);
        g2.o(2, i);
        this.dq.call(142102, g2.k(), Void.class);
    }
}
