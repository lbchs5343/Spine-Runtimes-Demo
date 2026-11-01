package com.bytedance.sdk.openadsdk.wp.dq.d.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.f.d.d.q;
import g.hat;

/* loaded from: classes3.dex */
public class dq {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d(View view, q qVar) {
        hat g2 = hat.g(2);
        g2.m(0, view);
        g2.m(1, qVar);
        this.dq.call(141102, g2.k(), Void.class);
    }

    public void dq(View view, q qVar) {
        hat g2 = hat.g(2);
        g2.m(0, view);
        g2.m(1, qVar);
        this.dq.call(141101, g2.k(), Void.class);
    }

    public void dq(q qVar) {
        hat g2 = hat.g(1);
        g2.m(0, qVar);
        this.dq.call(141103, g2.k(), Void.class);
    }
}
