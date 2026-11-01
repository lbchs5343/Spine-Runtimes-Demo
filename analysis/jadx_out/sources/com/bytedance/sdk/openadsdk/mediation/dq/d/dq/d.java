package com.bytedance.sdk.openadsdk.mediation.dq.d.dq;

import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.k.dq.d.dq.dq {
    private final Bridge dq;

    public d(Bridge bridge) {
        super(bridge);
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq(int i, String str) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.n(1, str);
        this.dq.call(131106, g2.k(), Void.class);
    }

    public void dq(Bundle bundle) {
        hat g2 = hat.g(1);
        g2.m(0, bundle);
        this.dq.call(131110, g2.k(), Void.class);
    }

    public void ia() {
        this.dq.call(131109, hat.g(0).k(), Void.class);
    }

    public void iw() {
        this.dq.call(131107, hat.g(0).k(), Void.class);
    }

    public void mn() {
        this.dq.call(131108, hat.g(0).k(), Void.class);
    }
}
