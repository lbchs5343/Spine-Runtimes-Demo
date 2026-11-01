package com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public View dq(com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq dqVar) {
        hat g2 = hat.g(1);
        g2.m(0, dqVar);
        return (View) this.dq.call(266013, g2.k(), View.class);
    }
}
