package com.bytedance.sdk.openadsdk.wp.dq.d.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class ox {
    private final Bridge dq;

    public ox(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void dq(View view, float f2, float f3, boolean z) {
        hat g2 = hat.g(4);
        g2.m(0, view);
        g2.l(1, f2);
        g2.l(2, f3);
        g2.i(3, z);
        this.dq.call(142101, g2.k(), Void.class);
    }
}
